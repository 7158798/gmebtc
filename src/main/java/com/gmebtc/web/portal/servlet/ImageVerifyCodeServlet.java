package com.gmebtc.web.portal.servlet;

import com.gmebtc.web.portal.utils.Toolkits;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;


/**
 * ImageVerifyCodeServlet 将产生一个图像验证码，并将该验证码以"imageVerifyCode"命名存入session中。可以在页面中这样使用
 * &lt;img id="imageVerifyCode" src="servlet/imageVerifyCodeServlet" width="80" height="30" align="absmiddle"&gt;。
 * type的取值为 1: 个位数的简单加、减、乘运算，2: 英文字符与数字混合，3: 纯英文字符，4: 数字。
 */
public class ImageVerifyCodeServlet extends HttpServlet
{
	private static final long serialVersionUID = 7450203205658615044L;
	private static final Logger logger = LoggerFactory.getLogger(ImageVerifyCodeServlet.class);

	/**
	 * 处理HTTP的GET请求。
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String[] arithmeticResult = null;
		String imageVerifyCodeType = Toolkits.getSystemPropertyValue("base.imageVerifyCode.type");
		String type = imageVerifyCodeType;
		//纯数字的基本码。
		String baseCode = RandomStringUtils.randomNumeric(4).toUpperCase();
		if(type.equals(StringUtils.EMPTY))
		{
			type = imageVerifyCodeType;
		}
		if(type.equals("1"))
		{
			//个位数的简单加、减、乘运算。
			arithmeticResult = arithmetic();
			baseCode = arithmeticResult[0];
		}
		else if(type.equals("2"))
		{
			//英文字符与数字混合。
			baseCode = RandomStringUtils.randomAlphanumeric(4).toUpperCase();
		}
		else if(type.equals("3"))
		{
			//英文字符。
			baseCode = RandomStringUtils.randomAlphabetic(4).toUpperCase();
		}
		//设置图片宽度。
		int width = 80;
		//设置图片高度。
		int height = 33;
		//设置字体。
		Font font = new Font("Times New Roman", Font.ITALIC | Font.BOLD, 30);
		//创建内存图像。
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		//获取图形上下文。
		Graphics graphics = image.getGraphics();
		//设定图像背景色。
		graphics.setColor(getRandColor(180, 250));
		//填充图像背景色。
		graphics.fillRect(0, 0, width, height);
		//设置字体。
		graphics.setFont(font);
		//设置随机种子。
		Random rand = new Random();
		//打印的单个字符宽度。
		int charWidth = (width - 10) / baseCode.length();
		//循环取随机码。
		for(int i = 0; i < baseCode.length(); i++)
		{
			//获得一个基本码。
			String singleCode = baseCode.substring(i, i + 1);
			//生成随机前景色。
			graphics.setColor(getRandColor(10, 150));
			//将此字画到图片上。
			graphics.drawString(singleCode, 5 + i * charWidth + (rand.nextInt(2) == 1? rand.nextInt(5): -rand.nextInt(5)), 25 + (rand.nextInt(2) == 1? rand.nextInt(5): -rand.nextInt(5)));
		}
		//随机产生干扰点。
		for(int i = 0; i < (width / 3 * height / 3); i++)
		{
			//设置点的颜色。
			graphics.setColor(getRandColor(10, 150));
			//绘制随机干扰点。
			graphics.drawOval(rand.nextInt(width), rand.nextInt(height), 0, 0);
		}
		//将认证码存入session。
		request.getSession().setAttribute("imageVerifyCode", type.equals("1")? arithmeticResult[1]: baseCode);
		logger.debug("验证码内容[" + request.getSession().getAttribute("imageVerifyCode") + "]");
		//释放图象上下文。
		graphics.dispose();
		//输出图象到页面。
		ImageIO.write(image, "PNG", response.getOutputStream());
	}

	/**
	 * 处理HTTP的POST请求。
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}

	/**
	 * 进行简单运算。
	 * @return 简单运算结果。
	 */
	private String[] arithmetic()
	{
		String view = "";
		String value = "";
		String baseNumeric = "123456789";
		String valOne = RandomStringUtils.random(1, baseNumeric);
		String valTwo = RandomStringUtils.random(1, baseNumeric);
		String operator = RandomStringUtils.random(1, "123");
		switch(Integer.valueOf(operator))
		{
			case 1:
				view = valOne + "+" + valTwo;
				value = String.valueOf(Integer.parseInt(valOne) + Integer.parseInt(valTwo));
				break;
			case 2:
				valTwo = RandomStringUtils.random(1, baseNumeric.substring(0, Integer.parseInt(valOne)));
				view = valOne + "-" + valTwo;
				value = String.valueOf(Integer.parseInt(valOne) - Integer.parseInt(valTwo));
				break;
			case 3:
				view = valOne + "×" + valTwo;
				value = String.valueOf(Integer.parseInt(valOne) * Integer.parseInt(valTwo));
				break;
			default:
				break;
		}
		return new String[]{view + "=?", value};
	}

	/**
	 * 给定范围获得一个随机颜色。
	 * @param fc 前景色代表的整数。
	 * @param bc 背景色代表的整数。
	 * @return 返回获取的颜色。
	 */
	private Color getRandColor(int foreColor, int backColor)
	{
		Random random = new Random();
	    if(foreColor > 255)
	    {
	    	foreColor = 255;
	    }
	    if(backColor > 255)
	    {
	    	backColor = 255;
	    }
	    int red = foreColor + random.nextInt(backColor - foreColor);
	    int green = foreColor + random.nextInt(backColor - foreColor);
	    int blue = foreColor + random.nextInt(backColor - foreColor);
	    return new Color(red, green, blue);
	}
}