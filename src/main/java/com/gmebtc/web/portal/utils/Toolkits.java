package com.gmebtc.web.portal.utils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonParser;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.*;
import java.util.Map.Entry;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 实用工具类。
 * Mar 6, 2014 3:15:41 PM
 */
public final class Toolkits
{
	private static final Logger logger = Logger.getLogger(Toolkits.class);
	private static final JsonParser jsonParser = new JsonParser();
	private static final ResourceBundle systemPropertyBundle = ResourceBundle.getBundle("com/bfc/config/context");
	private static Gson gson = null;

	static
	{
		
		//构建gson翻译器。
		GsonBuilder gsonBuilder = new GsonBuilder();
		if(Boolean.parseBoolean(getSystemPropertyValue("base.json.console.pretty")))
		{
			gson = gsonBuilder.setPrettyPrinting().create();
		}
		else
		{
			gson = gsonBuilder.create();
		}
	}
	private static final String[] ARRAY_SPECIAL_SCALE34 = 
	{
		"0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
		"A", "B", "C", "D", "E", "F", "G", "H", "J", "K",
		"L", "M", "N", "P", "Q", "R", "S", "T", "U", "V",
		"W", "X", "Y", "Z",
	};


	/**
	 * 将List转换为数组对象。
	 * @param list List实例。
	 * @return 转换后的对象数组。
	 */
	public static final Object[] list2Array(List<?> list)
	{
		Object[] object = list.toArray();
		Object[] array = new String[object.length];
		System.arraycopy(object, 0, array, 0, object.length);
		return array;
	}

	/**
	 * 返回对象的默认字符串形式。如果对象为空，则返回str定义的字符串。
	 * @param object 参数对象。
	 * @return 字符串。
	 */
	public static final String defaultString(Object object)
	{
		return defaultString(object, StringUtils.EMPTY);
	}

	/**
	 * 返回对象的默认字符串形式。如果对象为空，则返回str定义的字符串。
	 * @param object 参数对象。
	 * @param str 默认返回的字符串。
	 * @return 字符串。
	 */
	public static final String defaultString(Object object, String str)
	{
		if(object != null && object.equals("null"))
		{
			object = null;
		}
		return (object == null)? str: object.toString();
	}

	/**
	 * 返回第一个匹配的字符串。
	 * @param str 要匹配的字符串。
	 * @param patternString 正则表达式。
	 * @return 匹配的字符串。
	 */
	public static final String matcherString(String str, String patternString)
	{
		Pattern pattern = Pattern.compile(patternString);
		Matcher matcher = pattern.matcher(str.replaceAll("[\\n\\r]", StringUtils.EMPTY));
		if(matcher.find())
		{
//			customPropertyBundle.getKeys();
			return matcher.group(1).trim();
		}
		else
		{
			return StringUtils.EMPTY;
		}
	}

	/**
	 * 获取类的全部方法名。
	 * @param fullClassName 类名。
	 * @param include 包含的关键字。
	 * @return 列表对象。
	 * @throws Exception Exception 实例。
	 */
	public static final List<?> getMethodByClassName(String fullClassName, String include) throws Exception
	{
		int pos = fullClassName.lastIndexOf(".");
		String packageName = fullClassName.substring(0, pos);
		String className = fullClassName.substring(pos + 1);
		return getMethodByClassName(packageName, className, include);
	}

	/**
	 * 获取类的全部方法名。
	 * @param packageName 包名。
	 * @param className 类名。
	 * @param include 包含的关键字。
	 * @return 列表对象。
	 * @throws Exception Exception 实例。
	 */
	public static final List<?> getMethodByClassName(String packageName, String className, String include) throws Exception
	{
		List<String> list = new ArrayList<String>();
		Class<?> clazz = Class.forName(packageName.concat(".").concat(className));
		Method[] method = clazz.getMethods();
		for(int i = 0; i < method.length; i++)
		{
			if(!include.equals(""))
			{
				if(method[i].getName().indexOf(include) != -1)
				{
					list.add(method[i].getName());
				}
			}
			else
			{
				list.add(method[i].getName());
			}
		}
		return list;
	}

	/**
	 * 获取包下的所有类的方法名。
	 * @param packageName 包名。
	 * @return Map 实例。
	 * @throws Exception Exception 实例。
	 */
	public static final Map<?, ?> getAllMethodByPackageName(String packageName) throws Exception
	{
		Map<String, Object> map = new HashMap<String, Object>();
		String packageDirName = packageName.replace('.', '/');
		Enumeration<URL> dirs = Thread.currentThread().getContextClassLoader().getResources(packageDirName);
		while(dirs.hasMoreElements())
		{
			URL url = dirs.nextElement();
			File[] files = new File(url.getPath()).listFiles();
			for(int i = 0; i < files.length; i++)
			{
				if(!files[i].isDirectory())
				{
					String className = StringUtils.substringBefore(files[i].getName(), ".class");
					List<?> list = getMethodByClassName(packageName, className, "");
					map.put(packageName.concat(".").concat(className), list);
				}
			}
		}
		return map;
	}

	/**
	 * 获取包下的所有类名。
	 * @param packageName 包名。
	 * @return List 实例。
	 * @throws Exception Exception 实例。
	 */
	public static final List<?> getAllClassByPackageName(String packageName) throws Exception
	{
		return getAllClassByPackageName(packageName, "");
	}

	/**
	 * 获取包下的所有类名。
	 * @param packageName 包名。
	 * @param include 包含的关键字。
	 * @return List 实例。
	 * @throws Exception Exception 实例。
	 */
	public static final List<?> getAllClassByPackageName(String packageName, String include) throws Exception
	{
		List<String> list = new ArrayList<String>();
		String packageDirName = packageName.replace('.', '/');
		Enumeration<URL> dirs = Thread.currentThread().getContextClassLoader().getResources(packageDirName);
		while(dirs.hasMoreElements())
		{
			URL url = dirs.nextElement();
			File[] files = new File(url.getPath()).listFiles();
			for(int i = 0; i < files.length; i++)
			{
				if(!files[i].isDirectory())
				{
					String className = StringUtils.substringBefore(files[i].getName(), ".class");
					if(!include.equals(""))
					{
						if(className.indexOf(include) != -1)
						{
							list.add(packageName.concat(".").concat(className));
						}
					}
					else
					{
						list.add(packageName.concat(".").concat(className));
					}
				}
			}
		}
		return list;
	}

	/**
	 * 从指定的资源包加载指定的键值。
	 * @param resourceBundle 资源包。
	 * @param key 指定的键。
	 * @return 指定的键值。
	 * Mar 24, 2016 4:08:40 PM
	 
	 * @since jdk 1.6.X+
	 */
	public static final String getResourceBundleValue(ResourceBundle resourceBundle, String key)
	{
		String value = "";
		try
		{
			value = StringUtils.defaultString(resourceBundle.getString(key));
		}
		catch(Exception ex)
		{}
		return value;
	}


	/**
	 * 获取框架资源文件(context.properties)键对应的值。
	 * @param key 资源文件对应的键。
	 * @return 资源文件键对应的值。
	 */
	public static final String getSystemPropertyValue(String key)
	{
		String value = "";
		try
		{
			value = StringUtils.defaultString(systemPropertyBundle.getString(key));
		}
		catch(Exception ex)
		{
			logger.warn("加载配置项异常: " + ex.toString());
		}
		return value;
	}


	/**
	 * 将10进制转换为36进制字符串(不能超过ZZZZZZ即10进制的2176782335)。
	 * @param number 要转换的10进制数据。
	 * @param length 转换后的数据长度。
	 * @param leftPad 左边要填充的字符。
	 * @return 转换后的36进制字符串。
	 */
	public static final String toScale36(long number, int length, String leftPad)
	{
		int scale = 36;
		String dest = "";
		List<String> list = new ArrayList<String>();
		long remainder = number % scale;
		list.add((remainder <= 9)? String.valueOf(remainder): String.valueOf((char)(remainder - 10 + 65)));
		while(number / scale >= 1)
		{
			number = number / scale;
			remainder = number % scale;
			list.add((remainder <= 9)? String.valueOf(remainder): String.valueOf((char)(remainder - 10 + 65)));
		}
		for(int i = 0; i < list.size(); i++)
		{
			dest += list.get(list.size() - 1 - i);
		}
		return (length > 0)? StringUtils.leftPad(dest, length, leftPad): dest;
	}

	/**
	 * 将10进制转换为36进制字符串(不能超过ZZZZZZ即10进制的2176782335)。
	 * @param number 要转换的10进制数据。
	 * @return 转换后的36进制字符串。
	 */
	public static final String toScale36(long number)
	{
		return toScale36(number, 0, "");
	}

	/**
	 * 将10进制转换为特殊的34进制字符串(其中不会包含字母O与字母I, 不能超过ZZZZZZ即10进制的2176782335)。
	 * @param number 要转换的10进制数据。
	 * @param length 转换后的数据长度。
	 * @param leftPad 左边要填充的字符。
	 * @return 转换后的34进制字符串。
	 */
	public static final String toSpecialScale34(long number, int length, String leftPad)
	{
		int scale = 34;
		String dest = "";
		List<String> list = new ArrayList<String>();
		list.add(ARRAY_SPECIAL_SCALE34[Integer.parseInt(String.valueOf(number % scale))]);
		while(number / scale >= 1)
		{
			number = number / scale;
			list.add(ARRAY_SPECIAL_SCALE34[Integer.parseInt(String.valueOf(number % scale))]);
		}
		for(int i = 0; i < list.size(); i++)
		{
			dest += list.get(list.size() - 1 - i);
		}
		return (length > 0)? StringUtils.leftPad(dest, length, leftPad): dest;
	}

	/**
	 * 将10进制转换为特殊的34进制字符串(其中不会包含字母O与字母I, 不能超过ZZZZZZ即10进制的2176782335)。
	 * @param number 要转换的10进制数据。
	 * @return 转换后的36进制字符串。
	 */
	public static final String toSpecialScale34(long number)
	{
		return toSpecialScale34(number, 0, "");
	}

	/**
	 * 从特殊的34进制(其中不会包含字母O与字母I)转换为10进制(不能超过ZZZZZZ即10进制的2176782335)。
	 * @param number 要转换的36进制字符串。
	 * @return 转换后的10进制数。
	 */
	public static final long fromSpecialScale34(String number)
	{
		int index = 0;
		long total = 0;
		StringBuffer sb = new StringBuffer(number.toUpperCase());
		number = sb.reverse().toString();
		for(int i = 0; i < number.length(); i++)
		{
			char oneChar = number.charAt(i);
			for(index = 0; index < ARRAY_SPECIAL_SCALE34.length; index++)
			{
				if(ARRAY_SPECIAL_SCALE34[index].equals(String.valueOf(oneChar)))
				{
					break;
				}
			}
			oneChar = ARRAY_SPECIAL_SCALE34[index].charAt(0);
			int decChar = Character.isDigit(oneChar)? Integer.parseInt(String.valueOf(oneChar)): index;
			total += decChar * (int)Math.pow(34, i);
		}
		return total;
	}

	/**
	 * 从36进制转换为10进制(不能超过ZZZZZZ即10进制的2176782335)。
	 * @param number 要转换的36进制字符串。
	 * @return 转换后的10进制数。
	 */
	public static final long fromScale36(String number)
	{
		long total = 0;
		StringBuffer sb = new StringBuffer(number.toUpperCase());
		number = sb.reverse().toString();
		for(int i = 0; i < number.length(); i++)
		{
			char oneChar = number.charAt(i);
			int decChar = (int)oneChar;
			if(Character.isDigit(oneChar))
			{
				decChar = Integer.parseInt(String.valueOf(oneChar));
			}
			else
			{
				decChar = decChar + 10 - 65;
			}
			total += decChar * (int)Math.pow(36, i);
		}
		return total;
	}

	/**
	 * 获取客户端的IP地址。
	 * @param request HttpServletRequest 实例。
	 * @return 客户端的IP地址。
	 */
	public static final String getIpAddress(HttpServletRequest request)
	{
		String ip = request.getHeader("X-Forwarded-For");
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip))
		{
			ip = request.getHeader("Proxy-Client-IP");
		}
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip))
		{
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip))
		{
			ip = request.getHeader("HTTP_CLIENT_IP");
		}
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip))
		{
			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip))
		{
			ip = request.getRemoteAddr();
		}
		return ip;
	}

	/**
	 * 将对象转换为JSON字符串。
	 * @param objecr 要转换的对象。
	 * @return 转换后的字符串。
	 */
	public static final String toJson(Object objecr)
	{
		String returnJson = "";
		if(objecr != null)
		{
			returnJson = gson.toJson(objecr);
		}
		return returnJson;
	}

	/**
	 * 将一个json字符串按配置进行美化输出。
	 * @param json json字符串。
	 * @return 美化后的字符串。
	 */
	public static final String toJson(String json)
	{
		String returnJson = "";
		if(!defaultString(json).equals(""))
		{
			returnJson = gson.toJson(jsonParser.parse(json));
		}
		return returnJson;
	}

	/**
	 * 将JSON字符串转换为对象。
	 * @param json json字符串。
	 * @param clazz 目标对象类类型。
	 * @return 转换后的对象。
	 */
	public static final Object fromJson(String json, Class<?> clazz)
	{
		Object returnObject = null;
		if(!defaultString(json).equals("") && clazz != null)
		{
			returnObject = gson.fromJson(json, clazz);
		}
		return returnObject;
	}

	
	
	/**
	 * 把返回的List转换为easyui树控件可以识别的数据。
	 * @param result 结果List。
	 * @param rootId 根ID。
	 * @param idName ID节点列名。
	 * @param pidName 父ID节点列名。
	 * @param textName 菜单名称列名。
	 * @param iconName 图标名称列名。
	 * @return easyui树控件可以识别的数据。
	 * Nov 27, 2015 3:31:57 PM
	 * @since jdk 1.6.X+
	 */
	public static final List<Object> convert2TreeData(List<Object> result, String rootId, String idName, String pidName, String textName, String iconName)
	{
		return convert2TreeData(result, null, rootId, idName, pidName, textName, iconName);
	}

	/**
	 * 把返回的List转换为easyui树控件可以识别的数据。
	 * @param result 结果List。
	 * @param selectMenu
	 * @param rootId 根ID。
	 * @param idName ID节点列名。
	 * @param pidName 父ID节点列名。
	 * @param textName 菜单名称列名。
	 * @param iconName 图标名称列名。
	 * @return easyui树控件可以识别的数据。
	 * Nov 27, 2015 3:31:57 PM
	 * @since jdk 1.6.X+
	 */
	@SuppressWarnings("unchecked")
	public static final List<Object> convert2TreeData(List<Object> result, List<String> selectMenu, String rootId, String idName, String pidName, String textName, String iconName)
	{
		Map<String, Object> allMenuNodeMap = new LinkedHashMap<String, Object>();
		List <String> deleteMenuNodeKeyList = new ArrayList<String>();
		List <Object> newMenuNodeList = new ArrayList<Object>();
		for(int i = 0; i < result.size(); i++)
		{
			Map<Object, Object> map = (Map<Object, Object>)result.get(i);
			allMenuNodeMap.put(Toolkits.defaultString(map.get(idName)), map);
		}
		Iterator<Entry<String, Object>> iterator = allMenuNodeMap.entrySet().iterator();
		while(iterator.hasNext())
		{
			Entry<String, Object> currentMenuNodeEntry = (Entry<String, Object>)iterator.next();
			String key = currentMenuNodeEntry.getKey();
			Map<String, Object> currentMenuNodeMap = (Map<String, Object>)currentMenuNodeEntry.getValue();
			String pid = Toolkits.defaultString(currentMenuNodeMap.get(pidName));
			if(!pid.equals(rootId))
			{
				Map<String, Object> parentMap = (Map<String, Object>)allMenuNodeMap.get(pid);
				if(parentMap != null)
				{
					if(!parentMap.containsKey("children"))
					{
						parentMap.put("children", new ArrayList<Object>());
					}
					List<Object> childrenList = (List<Object>)parentMap.get("children");
					childrenList.add(currentMenuNodeMap);
					deleteMenuNodeKeyList.add(key);
				}
			}
			if(currentMenuNodeMap.containsKey(idName))
			{
				String id = Toolkits.defaultString(currentMenuNodeMap.get(idName));
				if(selectMenu != null && selectMenu.contains(id))
				{
					currentMenuNodeMap.put("checked", true);
				}
			}
			if(currentMenuNodeMap.containsKey(iconName))
			{
				currentMenuNodeMap.put("iconCls", Toolkits.defaultString(currentMenuNodeMap.get(iconName)));
				currentMenuNodeMap.remove(iconName);
			}
		}
		for(Entry<String, Object> entry: allMenuNodeMap.entrySet())
		{
			if(!deleteMenuNodeKeyList.contains(entry.getKey()))
			{
				newMenuNodeList.add(entry.getValue());
			}
		}
		return newMenuNodeList;
	}



	/**
	 * 获取异常堆栈信息为字符串信息。
	 * @param throwable Throwable 实例。
	 * @return 堆栈字符串信息。
	 * Nov 29, 2015 7:49:03 PM
	 * @since jdk 1.6.X+
	 */
	public static final String getStackTraceString(Throwable throwable)
	{
		String stackTraceString = "";
		if(throwable != null)
		{
			PrintWriter printWriter = null;
			StringWriter stringWriter = new StringWriter();
			try
			{
				printWriter = new PrintWriter(stringWriter, true);
				throwable.printStackTrace(printWriter);
				stackTraceString = stringWriter.getBuffer().toString();
			}
			catch(Exception ex)
			{
				logger.warn("get stack trace string failure: " + ex.getLocalizedMessage());
			}
			finally
			{
				IOUtils.closeQuietly(stringWriter);
				IOUtils.closeQuietly(printWriter);
			}
		}
		return stackTraceString;
	}


	/**
	 * 判断是否为IE浏览器。
	 * @param request HttpServletRequest 实例。
	 * @return 是否为IE浏览器。
	 * Mar 9, 2016 3:02:01 PM
	 * @since jdk 1.6.X+
	 */
	public static final boolean isMSIE(HttpServletRequest request)
	{
		return (request.getHeader("USER-AGENT").toLowerCase().indexOf("msie") > 0 || request.getHeader("USER-AGENT").toLowerCase().indexOf("rv:11.0") > 0)? true: false;
	}
	
	/**
	 * 是否为邮箱
	 * @param email
	 * @return
	 */
	public static boolean isEmail(String email) {
		String str = "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$";
		Pattern p = Pattern.compile(str);
		Matcher m = p.matcher(email);
		return m.matches();
	}

	public static boolean isPhone (String phone){
		String regExp = "^[1]([3][0-9]{1}|59|58|88|89)[0-9]{8}$";
		Pattern p = Pattern.compile(regExp);
		Matcher m = p.matcher(phone);
		return m.matches();
	}
}