<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Gate.io - The Gate of Blockchain Assets Exchange</title>
		<meta name="description" content="网址是 Gate.io， 是一个区块链数字资产交易平台，支持比特币Bitcoin, 以太坊, Ethereum,莱特币, Litecoin，Qtum 等币种交易，其特点是快捷，安全。 ">
		<meta name="keywords" content="比特币, bitcoin, BTC, Ethereum, 以太坊, litecoin, LTC, ETC, Qtum, 代币, ICO, 交易平台，交易网站，比特币交易，比特币兑换，比特币市场 ">
		<meta name="format-detection" content="telephone=no">
		<!--[if lte IE 9]><script type="text/javascript">location.href = '/update.html';</script><![endif]-->
		<link href="/css/style.css" rel="stylesheet" type="text/css">
		<style>
			.icon-48,
			.icon-32,
			.icon-16 {
				background-image: url("../yyctjys/images/coins48.png")
			}
		</style>
		<link href="css/coins_16.css" rel="stylesheet" type="text/css">
		<link href="css/coins_32.css" rel="stylesheet" type="text/css">
		<link href="css/coins_48.css" rel="stylesheet" type="text/css">
		<link href="css/marketlist.css" rel="stylesheet" type="text/css">
		<link href="css/theme_dark.css" rel="stylesheet" type="text/css" id="darkStyle" disabled="disabled">

		<link href="https://gateio.io/favicon.ico" rel="shortcut icon">
		<link rel="apple-touch-icon" sizes="120x120" href="images/apple-touch-icon-120x120.png" />
		<script>
			var g_lang = 'cn';
		</script>
		<script src="js/jquery-1.8.2.min.js"></script>
		<script src="js/jquery.common.tools.js"></script>
	<%--	<script>
            function changeLang(lang){
                var url = "/changeLang.html?lang="+lang;
                $.getJSON(url, function(data) {
                    location.reload();
                },'json');
            }
		</script>--%>
	</head>

	<body class="">
    	<%--<a href="javascript:changeLang('zh_CN');">删除</a>
	<a href="javascript:changeLang('en_US');">修改</a>
	<a href="/changeLang.html?lang=en_US"><fmt:message key="public.msg1"></fmt:message></a>--%>
		<div id="siteNoty" class="notification-box">
			<div class="noty_message">
				<a id="siteNotyCon" href="gonggaoxiangqing.gonggaoxiangqing.jsp">gate.io充值量子链(QTUM)赢取QTUM大奖活动公告</a>
				<a class="close pull-right" href=javascript:;></a>
			</div>
		</div>
		<div class="header clearfix">
			<div class="top-up">
				<div class="top-con">
					<ul class="topprice">
						<li> BTC/CNY : ￥ <span class="topnum">55362.06</span><i class="icon-arrow-up">&uarr;</i> </li>
						<li> ETH/CNY : ￥ <span class="topnum">4654.00</span><i class="icon-arrow-up">&uarr;</i> </li>
						<li> LTC/CNY : ￥ <span class="topnum">904.22</span><i class="icon-arrow-up">&uarr;</i> </li>
						<li> QTUM/CNY : ￥ <span class="topnum">108.62</span><i class="icon-arrow-up">&uarr;</i> </li>
					</ul>
					<div class="qqtel">
						<a class="ask_ans" href="https://twitter.com/gate_io" target="_blank">
							<p><i class="tico" title="Twitter"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="244 244 24 24"><path fill="#FFF" d="M267.998 248.95c-.882.39-1.83.653-2.825.77 1.016-.606 1.795-1.564 2.164-2.703-.952.56-2.007.966-3.127 1.186-.9-.95-2.177-1.545-3.594-1.545-2.722 0-4.926 2.19-4.926 4.888 0 .38.042.757.126 1.116-4.09-.205-7.72-2.152-10.148-5.106-.425.724-.67 1.563-.67 2.456 0 1.697.872 3.19 2.193 4.07-.806-.027-1.566-.246-2.23-.614v.064c0 2.368 1.7 4.34 3.95 4.792-.414.11-.848.17-1.297.17-.317 0-.625-.026-.925-.087.625 1.94 2.445 3.355 4.6 3.396-1.686 1.31-3.807 2.092-6.113 2.092-.398 0-.79-.025-1.175-.07 2.177 1.387 4.767 2.195 7.547 2.195 9.06 0 14.012-7.448 14.012-13.903 0-.213-.008-.423-.017-.63.96-.694 1.795-1.552 2.457-2.537h-.002z"/></svg></i></p>
						</a>
						<a class="ask_ans" href="https://t.me/gate_io" target="_blank">
							<p><i class="tico" title="Telegram"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="244 244 24 24"><path fill="#FFF" d="M266.38 246.07l-21.26 8.2c-1.45.58-1.442 1.39-.264 1.75l5.302 1.656 2.03 6.22c.246.68.124.95.84.95.55 0 .795-.25 1.103-.55l2.65-2.58 5.517 4.075c1.015.56 1.748.27 2-.94l3.62-17.062c.37-1.486-.567-2.16-1.538-1.72zm-15.39 11.226l11.95-7.54c.598-.363 1.145-.168.695.23l-10.233 9.233-.398 4.248-2.014-6.172z"/></svg></i></p>
						</a>
						<a class="ask_ans" href="javascript:ticketsRoute();">
							<p><i>?</i>提交工单</p>
						</a>
					</div>
					<ul class="login_lan">
						<li class="top-links">
							<a href="https://gateio.io/mobileapp" target="_blank">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="244 244 24 24">
									<path fill="#010101" d="M262 244h-12c-.83 0-1.5.672-1.5 1.5v21c0 .83.67 1.5 1.5 1.5h12c.83 0 1.5-.67 1.5-1.5v-21c0-.828-.67-1.5-1.5-1.5zm-8.625 1.5h5.25c.208 0 .375.168.375.375s-.167.375-.375.375h-5.25c-.208 0-.375-.168-.375-.375s.167-.375.375-.375zM256 267.25c-.62 0-1.125-.504-1.125-1.125S255.38 265 256 265s1.125.504 1.125 1.125-.504 1.125-1.125 1.125zm6-3h-12v-16.5h12v16.5z"></path>
								</svg>
								<span>手机APP</span>
								<div class="add-dn-qr">
									<h3>扫码下载gate.io APP</h3>
									<img src="images/app-code.png" alt="gate.io APP">
								</div>
							</a>
						</li>
						<li class="toplogin">
							<a href="login.login.jsp">注册&nbsp;</a>|&nbsp; </li>
						<li class="toplogin" id="toplogin">
							<a href="login.login.jsp">登录</a>
						</li>

						<li class="lang-option">
							<span>中文版</span><i class="caret"></i>
							<div class="more-lan">
								<a href="https://gateio.io/lang/en">English</a>
								<a href="https://gateio.io/lang/kr">한국어</a>
							</div>
						</li>
					</ul>
					<ul id="theme">
						<span>主题:</span>
						<li id="dark" title="深色">深色</li>
						<li id="light" title="浅色">浅色</li>
					</ul>
				</div>
			</div>
			<div class="top-dn">
				<div class="logo">
					<a href="https://gate.io" target="_top">
						<![if !IE]><img src="images/logo.svg" alt="gate.io LOGO" />
						<![endif]>
						<!--[if IE]><img src="/images/logo.png" alt="LOGO"/><![endif]-->
					</a>
				</div>

				<ul class="gateio-nav">
					<li class="nav-active">
						<a href="gateio_default.html">首页</a>
					</li>
					<li class="">
						<a href="c2c.c2c.jsp" class="tooltip" title="法币交易">C2C交易</a>
					</li>

					<li class="nav-trade-item ">
						<a href="bbjy.bbjy.jsp">币币交易<i class="caret"></i></a>
						<ul class="second-nav clearfix">
							<li>
								<a href="javascript:;">对BTC交易区<i class="caret"></i></a>
								<ul class="third-nav clearfix">
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ada icon-16"></span><strong>艾达币 ADA</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ae icon-16"></span><strong>Aeternity AE</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bat icon-16"></span><strong>注意力币 BAT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bcd icon-16"></span><strong>比特币钻石 BCD</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bch icon-16"></span><strong>BCH(原BCC) BCH</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bcx icon-16"></span><strong>比特无限 BCX</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bifi icon-16"></span><strong>BitcoinFile BIFI</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-btf icon-16"></span><strong>比特信仰 BTF</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-btg icon-16"></span><strong>BTG BTG</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-btm icon-16"></span><strong>比原链 BTM</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bts icon-16"></span><strong>比特股 BTS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dash icon-16"></span><strong>达世币 DASH</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dbc icon-16"></span><strong>深脑链 DBC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ddd icon-16"></span><strong>Scry無域 DDD</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-doge icon-16"></span><strong>狗狗币 DOGE</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-eos icon-16"></span><strong>EOS EOS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-etc icon-16"></span><strong>以太经典 ETC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-eth icon-16"></span><strong>以太币 ETH</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-gas icon-16"></span><strong>小蚁Gas GAS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-god icon-16"></span><strong>比特币上帝 GOD</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-gtc icon-16"></span><strong>G币 GTC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-gxs icon-16"></span><strong>公信宝 GXS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-hsr icon-16"></span><strong>HShare HSR</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ink icon-16"></span><strong>Ink INK</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-iota icon-16"></span><strong>IOTA IOTA</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-jnt icon-16"></span><strong>JibrelNetwork JNT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ledu icon-16"></span><strong>Education LEDU</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-lrc icon-16"></span><strong>Loopring LRC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-lsk icon-16"></span><strong>Lisk LSK</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ltc icon-16"></span><strong>莱特币 LTC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-lym icon-16"></span><strong>Lympo LYM</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-mdt icon-16"></span><strong>量数币 MDT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-mobi icon-16"></span><strong>Mobius MOBI</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-nano icon-16"></span><strong>Nano NANO</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-nas icon-16"></span><strong>星云链 NAS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-neo icon-16"></span><strong>小蚁Neo NEO</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ocn icon-16"></span><strong>OCOIN OCN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-omg icon-16"></span><strong>OmiseGo OMG</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-pay icon-16"></span><strong>TenX PAY</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-powr icon-16"></span><strong>PowerLedger POWR</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-qash icon-16"></span><strong>LIQUID QASH</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-qlc icon-16"></span><strong>QLINK QLC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-qtum icon-16"></span><strong>量子链 QTUM</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ruff icon-16"></span><strong>RuffChain RUFF</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-sbtc icon-16"></span><strong>超级比特币 SBTC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-snt icon-16"></span><strong>Status SNT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-storj icon-16"></span><strong>Storj STORJ</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-tnc icon-16"></span><strong>Trinity TNC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-waves icon-16"></span><strong>波币 WAVES</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-xlm icon-16"></span><strong>恒星币 XLM</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-xmc icon-16"></span><strong>门罗原链 XMC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-xmr icon-16"></span><strong>门罗币 XMR</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-xrp icon-16"></span><strong>瑞波币 XRP</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-xvg icon-16"></span><strong>Verge XVG</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-zec icon-16"></span><strong>ZCash ZEC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-zpt icon-16"></span><strong>Zeepin ZPT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-zrx icon-16"></span><strong>0x项目 ZRX</strong></a>
									</li>
								</ul>
							</li>
							<li>
								<a href="bbjy.bbjy.jsp">对ETH交易区<i class="caret"></i></a>
								<ul class="third-nav clearfix">
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-abt icon-16"></span><strong>ArcBlock ABT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ae icon-16"></span><strong>Aeternity AE</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-arn icon-16"></span><strong>Aeron ARN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bat icon-16"></span><strong>注意力币 BAT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bcdn icon-16"></span><strong>BlockCDN BCDN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bft icon-16"></span><strong>BFToken BFT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-blz icon-16"></span><strong>Bluzelle BLZ</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bnt icon-16"></span><strong>Bancor BNT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bnty icon-16"></span><strong>Bounty0x BNTY</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bot icon-16"></span><strong>菩提 BOT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-btm icon-16"></span><strong>比原链 BTM</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bto icon-16"></span><strong>铂链 BTO</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-cdt icon-16"></span><strong>CoinDash CDT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-cofi icon-16"></span><strong>CoinFi COFI</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-cs icon-16"></span><strong>Credits CS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ctr icon-16"></span><strong>Centra CTR</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-cvc icon-16"></span><strong>Civic CVC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dadi icon-16"></span><strong>DADI DADI</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-data icon-16"></span><strong>Streamr DATA</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dbc icon-16"></span><strong>深脑链 DBC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ddd icon-16"></span><strong>Scry無域 DDD</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dgd icon-16"></span><strong>DigixDAO DGD</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dnt icon-16"></span><strong>district0x DNT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dock icon-16"></span><strong>Dock DOCK</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dpy icon-16"></span><strong>Delphy DPY</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-drgn icon-16"></span><strong>DragonChain DRGN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-elf icon-16"></span><strong>aelf ELF</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-eos icon-16"></span><strong>EOS EOS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-etc icon-16"></span><strong>以太经典 ETC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-fuel icon-16"></span><strong>Etherparty FUEL</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-fun icon-16"></span><strong>FunFair FUN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-gem icon-16"></span><strong>Gems GEM</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-gnt icon-16"></span><strong>Golem GNT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-gnx icon-16"></span><strong>Genaro GNX</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-gtc icon-16"></span><strong>G币 GTC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-hsr icon-16"></span><strong>HShare HSR</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-icx icon-16"></span><strong>ICON ICX</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-iht icon-16"></span><strong>云产币 IHT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ink icon-16"></span><strong>Ink INK</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-jnt icon-16"></span><strong>JibrelNetwork JNT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-kick icon-16"></span><strong>KickCoin KICK</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-knc icon-16"></span><strong>Kyber KNC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ledu icon-16"></span><strong>Education LEDU</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-lend icon-16"></span><strong>ETHLend LEND</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-link icon-16"></span><strong>ChainLink LINK</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-llt icon-16"></span><strong>流量币 LLT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-lrc icon-16"></span><strong>Loopring LRC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-lrn icon-16"></span><strong>路印NEO LRN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-lun icon-16"></span><strong>Lunyr LUN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-lym icon-16"></span><strong>Lympo LYM</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-man icon-16"></span><strong>MatrixAI MAN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-mana icon-16"></span><strong>Decentraland MANA</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-mco icon-16"></span><strong>Monaco MCO</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-mda icon-16"></span><strong>Moeda MDA</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-mds icon-16"></span><strong>MediShares MDS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-mdt icon-16"></span><strong>量数币 MDT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-med icon-16"></span><strong>MediBloc MED</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-mith icon-16"></span><strong>秘银币 MITH</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-mkr icon-16"></span><strong>MakerDAO MKR</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-mobi icon-16"></span><strong>Mobius MOBI</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-mtn icon-16"></span><strong>Medicalchain MTN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-nas icon-16"></span><strong>星云链 NAS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-oax icon-16"></span><strong>ANX OAX</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ocn icon-16"></span><strong>OCOIN OCN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-omg icon-16"></span><strong>OmiseGo OMG</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ont icon-16"></span><strong>本体 ONT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ost icon-16"></span><strong>SimpleToken OST</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-pay icon-16"></span><strong>TenX PAY</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-powr icon-16"></span><strong>PowerLedger POWR</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-pst icon-16"></span><strong>Primas PST</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-qash icon-16"></span><strong>LIQUID QASH</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-qbt icon-16"></span><strong>Qbao QBT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-qlc icon-16"></span><strong>QLINK QLC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-qsp icon-16"></span><strong>Quantstamp QSP</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-qtum icon-16"></span><strong>量子链 QTUM</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-rcn icon-16"></span><strong>Ripio RCN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-rdn icon-16"></span><strong>雷电网络 RDN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-rep icon-16"></span><strong>Augur REP</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-req icon-16"></span><strong>Request REQ</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-rfr icon-16"></span><strong>Refereum RFR</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-rlc icon-16"></span><strong>iExec RLC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ruff icon-16"></span><strong>RuffChain RUFF</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-salt icon-16"></span><strong>SALT  SALT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-senc icon-16"></span><strong>Sentinel SENC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-skm icon-16"></span><strong>Skrumble SKM</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-smt icon-16"></span><strong>SmartMesh SMT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-snet icon-16"></span><strong>Snetwork SNET</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-snt icon-16"></span><strong>Status SNT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-storj icon-16"></span><strong>Storj STORJ</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-stx icon-16"></span><strong>Stox STX</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-swth icon-16"></span><strong>Switcheo SWTH</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-theta icon-16"></span><strong>Theta THETA</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-tio icon-16"></span><strong>trade.io TIO</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-tips icon-16"></span><strong>帽子币 TIPS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-tnc icon-16"></span><strong>Trinity TNC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-tnt icon-16"></span><strong>Tierion  TNT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-trx icon-16"></span><strong>波场 TRX</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ven icon-16"></span><strong>唯链 VEN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-wings icon-16"></span><strong>Wings WINGS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-xlm icon-16"></span><strong>恒星币 XLM</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-zil icon-16"></span><strong>Zilliqa ZIL</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-zpt icon-16"></span><strong>Zeepin ZPT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-zrx icon-16"></span><strong>0x项目 ZRX</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-zsc icon-16"></span><strong>宙斯盾 ZSC</strong></a>
									</li>
								</ul>
							</li>
							<li>
								<a href="bbjy.bbjy.jsp">对USDT交易区<i class="caret"></i></a>
								<ul class="third-nav clearfix">
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-abt icon-16"></span><strong>ArcBlock ABT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ada icon-16"></span><strong>艾达币 ADA</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ae icon-16"></span><strong>Aeternity AE</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bat icon-16"></span><strong>注意力币 BAT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bcd icon-16"></span><strong>比特币钻石 BCD</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bcdn icon-16"></span><strong>BlockCDN BCDN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bch icon-16"></span><strong>BCH(原BCC) BCH</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bcx icon-16"></span><strong>比特无限 BCX</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bft icon-16"></span><strong>BFToken BFT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bifi icon-16"></span><strong>BitcoinFile BIFI</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-blz icon-16"></span><strong>Bluzelle BLZ</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bnty icon-16"></span><strong>Bounty0x BNTY</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bot icon-16"></span><strong>菩提 BOT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-btc icon-16"></span><strong>比特币 BTC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-btf icon-16"></span><strong>比特信仰 BTF</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-btg icon-16"></span><strong>BTG BTG</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-btm icon-16"></span><strong>比原链 BTM</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bto icon-16"></span><strong>铂链 BTO</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-bts icon-16"></span><strong>比特股 BTS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-cdt icon-16"></span><strong>CoinDash CDT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-cofi icon-16"></span><strong>CoinFi COFI</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-cs icon-16"></span><strong>Credits CS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-cvc icon-16"></span><strong>Civic CVC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dadi icon-16"></span><strong>DADI DADI</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dai icon-16"></span><strong>Dai DAI</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dash icon-16"></span><strong>达世币 DASH</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-data icon-16"></span><strong>Streamr DATA</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dbc icon-16"></span><strong>深脑链 DBC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ddd icon-16"></span><strong>Scry無域 DDD</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dgd icon-16"></span><strong>DigixDAO DGD</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dock icon-16"></span><strong>Dock DOCK</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-doge icon-16"></span><strong>狗狗币 DOGE</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-dpy icon-16"></span><strong>Delphy DPY</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-drgn icon-16"></span><strong>DragonChain DRGN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-elf icon-16"></span><strong>aelf ELF</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-eos icon-16"></span><strong>EOS EOS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-etc icon-16"></span><strong>以太经典 ETC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-eth icon-16"></span><strong>以太币 ETH</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-fil icon-16"></span><strong>IPFS六月 FIL</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-fuel icon-16"></span><strong>Etherparty FUEL</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-fun icon-16"></span><strong>FunFair FUN</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-gas icon-16"></span><strong>小蚁Gas GAS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-gem icon-16"></span><strong>Gems GEM</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-gnt icon-16"></span><strong>Golem GNT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-gnx icon-16"></span><strong>Genaro GNX</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-god icon-16"></span><strong>比特币上帝 GOD</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-gtc icon-16"></span><strong>G币 GTC</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-gxs icon-16"></span><strong>公信宝 GXS</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-hsr icon-16"></span><strong>HShare HSR</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-icx icon-16"></span><strong>ICON ICX</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-iht icon-16"></span><strong>云产币 IHT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-ink icon-16"></span><strong>Ink INK</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-iota icon-16"></span><strong>IOTA IOTA</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-jnt icon-16"></span><strong>JibrelNetwork JNT</strong></a>
									</li>
									<li>
										<a href='bbjy.bbjy.jsp'><span class="icon-16-kick icon-16"></span><strong>KickCoin KICK</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/KNC_USDT'><span class="icon-16-knc icon-16"></span><strong>Kyber KNC</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/LEND_USDT'><span class="icon-16-lend icon-16"></span><strong>ETHLend LEND</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/LINK_USDT'><span class="icon-16-link icon-16"></span><strong>ChainLink LINK</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/LRC_USDT'><span class="icon-16-lrc icon-16"></span><strong>Loopring LRC</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/LRN_USDT'><span class="icon-16-lrn icon-16"></span><strong>路印NEO LRN</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/LSK_USDT'><span class="icon-16-lsk icon-16"></span><strong>Lisk LSK</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/LTC_USDT'><span class="icon-16-ltc icon-16"></span><strong>莱特币 LTC</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/LUN_USDT'><span class="icon-16-lun icon-16"></span><strong>Lunyr LUN</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/LYM_USDT'><span class="icon-16-lym icon-16"></span><strong>Lympo LYM</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/MAN_USDT'><span class="icon-16-man icon-16"></span><strong>MatrixAI MAN</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/MANA_USDT'><span class="icon-16-mana icon-16"></span><strong>Decentraland MANA</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/MCO_USDT'><span class="icon-16-mco icon-16"></span><strong>Monaco MCO</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/MDA_USDT'><span class="icon-16-mda icon-16"></span><strong>Moeda MDA</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/MDS_USDT'><span class="icon-16-mds icon-16"></span><strong>MediShares MDS</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/MDT_USDT'><span class="icon-16-mdt icon-16"></span><strong>量数币 MDT</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/MED_USDT'><span class="icon-16-med icon-16"></span><strong>MediBloc MED</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/MITH_USDT'><span class="icon-16-mith icon-16"></span><strong>秘银币 MITH</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/MKR_USDT'><span class="icon-16-mkr icon-16"></span><strong>MakerDAO MKR</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/MOBI_USDT'><span class="icon-16-mobi icon-16"></span><strong>Mobius MOBI</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/MTN_USDT'><span class="icon-16-mtn icon-16"></span><strong>Medicalchain MTN</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/NANO_USDT'><span class="icon-16-nano icon-16"></span><strong>Nano NANO</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/NAS_USDT'><span class="icon-16-nas icon-16"></span><strong>星云链 NAS</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/NEO_USDT'><span class="icon-16-neo icon-16"></span><strong>小蚁Neo NEO</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/OCN_USDT'><span class="icon-16-ocn icon-16"></span><strong>OCOIN OCN</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/OMG_USDT'><span class="icon-16-omg icon-16"></span><strong>OmiseGo OMG</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/ONT_USDT'><span class="icon-16-ont icon-16"></span><strong>本体 ONT</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/OST_USDT'><span class="icon-16-ost icon-16"></span><strong>SimpleToken OST</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/PAY_USDT'><span class="icon-16-pay icon-16"></span><strong>TenX PAY</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/POWR_USDT'><span class="icon-16-powr icon-16"></span><strong>PowerLedger POWR</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/PST_USDT'><span class="icon-16-pst icon-16"></span><strong>Primas PST</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/QASH_USDT'><span class="icon-16-qash icon-16"></span><strong>LIQUID QASH</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/QBT_USDT'><span class="icon-16-qbt icon-16"></span><strong>Qbao QBT</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/QLC_USDT'><span class="icon-16-qlc icon-16"></span><strong>QLINK QLC</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/QSP_USDT'><span class="icon-16-qsp icon-16"></span><strong>Quantstamp QSP</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/QTUM_USDT'><span class="icon-16-qtum icon-16"></span><strong>量子链 QTUM</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/RCN_USDT'><span class="icon-16-rcn icon-16"></span><strong>Ripio RCN</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/RDN_USDT'><span class="icon-16-rdn icon-16"></span><strong>雷电网络 RDN</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/REQ_USDT'><span class="icon-16-req icon-16"></span><strong>Request REQ</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/RFR_USDT'><span class="icon-16-rfr icon-16"></span><strong>Refereum RFR</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/RLC_USDT'><span class="icon-16-rlc icon-16"></span><strong>iExec RLC</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/RUFF_USDT'><span class="icon-16-ruff icon-16"></span><strong>RuffChain RUFF</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/SALT_USDT'><span class="icon-16-salt icon-16"></span><strong>SALT  SALT</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/SBTC_USDT'><span class="icon-16-sbtc icon-16"></span><strong>超级比特币 SBTC</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/SENC_USDT'><span class="icon-16-senc icon-16"></span><strong>Sentinel SENC</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/SKM_USDT'><span class="icon-16-skm icon-16"></span><strong>Skrumble SKM</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/SMT_USDT'><span class="icon-16-smt icon-16"></span><strong>SmartMesh SMT</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/SNET_USDT'><span class="icon-16-snet icon-16"></span><strong>Snetwork SNET</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/SNT_USDT'><span class="icon-16-snt icon-16"></span><strong>Status SNT</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/STORJ_USDT'><span class="icon-16-storj icon-16"></span><strong>Storj STORJ</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/STX_USDT'><span class="icon-16-stx icon-16"></span><strong>Stox STX</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/SWTH_USDT'><span class="icon-16-swth icon-16"></span><strong>Switcheo SWTH</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/THETA_USDT'><span class="icon-16-theta icon-16"></span><strong>Theta THETA</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/TIO_USDT'><span class="icon-16-tio icon-16"></span><strong>trade.io TIO</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/TNC_USDT'><span class="icon-16-tnc icon-16"></span><strong>Trinity TNC</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/TNT_USDT'><span class="icon-16-tnt icon-16"></span><strong>Tierion  TNT</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/TRX_USDT'><span class="icon-16-trx icon-16"></span><strong>波场 TRX</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/TSL_USDT'><span class="icon-16-tsl icon-16"></span><strong>Energo TSL</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/VEN_USDT'><span class="icon-16-ven icon-16"></span><strong>唯链 VEN</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/WAVES_USDT'><span class="icon-16-waves icon-16"></span><strong>波币 WAVES</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/XLM_USDT'><span class="icon-16-xlm icon-16"></span><strong>恒星币 XLM</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/XMC_USDT'><span class="icon-16-xmc icon-16"></span><strong>门罗原链 XMC</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/XMR_USDT'><span class="icon-16-xmr icon-16"></span><strong>门罗币 XMR</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/XRP_USDT'><span class="icon-16-xrp icon-16"></span><strong>瑞波币 XRP</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/XTZ_USDT'><span class="icon-16-xtz icon-16"></span><strong>Tezos期 XTZ</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/XVG_USDT'><span class="icon-16-xvg icon-16"></span><strong>Verge XVG</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/ZEC_USDT'><span class="icon-16-zec icon-16"></span><strong>ZCash ZEC</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/ZIL_USDT'><span class="icon-16-zil icon-16"></span><strong>Zilliqa ZIL</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/ZPT_USDT'><span class="icon-16-zpt icon-16"></span><strong>Zeepin ZPT</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/ZRX_USDT'><span class="icon-16-zrx icon-16"></span><strong>0x项目 ZRX</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/ZSC_USDT'><span class="icon-16-zsc icon-16"></span><strong>宙斯盾 ZSC</strong></a>
									</li>
								</ul>
							</li>
							<li>
								<a href="bbjy.bbjy.jsp">对QTUM交易区<i class="caret"></i></a>
								<ul class="third-nav clearfix">
									<li>
										<a href='https://gateio.io/trade/BOT_QTUM'><span class="icon-16-bot icon-16"></span><strong>菩提 BOT</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/INK_QTUM'><span class="icon-16-ink icon-16"></span><strong>Ink INK</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/LLT_SNET'><span class="icon-16-llt icon-16"></span><strong>流量币 LLT</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/MED_QTUM'><span class="icon-16-med icon-16"></span><strong>MediBloc MED</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/QBT_QTUM'><span class="icon-16-qbt icon-16"></span><strong>Qbao QBT</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/TSL_QTUM'><span class="icon-16-tsl icon-16"></span><strong>Energo TSL</strong></a>
									</li>
								</ul>
							</li>
							<li>
								<a href="bbjy.bbjy.jsp">限时交易区<i class="caret"></i></a>
								<ul class="third-nav clearfix">
									<li>
										<a href='https://gateio.io/trade/ELEC_ETH'><span class="icon-16-elec icon-16"></span><strong>ElectrifyAsia ELEC</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/HAV_ETH'><span class="icon-16-hav icon-16"></span><strong>Havven HAV</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/HUR_ETH'><span class="icon-16-hur icon-16"></span><strong>Hurify HUR</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/INSTAR_ETH'><span class="icon-16-instar icon-16"></span><strong>InsightsNetwork INSTAR</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/LST_ETH'><span class="icon-16-lst icon-16"></span><strong>Lendroid LST</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/REM_ETH'><span class="icon-16-rem icon-16"></span><strong>Remme REM</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/SHIP_ETH'><span class="icon-16-ship icon-16"></span><strong>ShipChain SHIP</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/TFD_ETH'><span class="icon-16-tfd icon-16"></span><strong>TE-Food TFD</strong></a>
									</li>
									<li>
										<a href='https://gateio.io/trade/TOMO_ETH'><span class="icon-16-tomo icon-16"></span><strong>TomoChain TOMO</strong></a>
									</li>
								</ul>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="caiwubaogao.caiwubaogao.jsp">我的财务</a>

					</li>

					<li class="">
						<a href="shenfenrenzheng.shenfenrenzheng.jps">安全设置</a>

					</li>
					<li class="">
						<a href="gonggao.gonggao.jsp">公告</a>

					</li>
					<li class="">
						<a href="javascript:;">帮助<i class="caret"></i></a>
						<ul class="second-nav clearfix">
							<li>
								<a href="wentizhongxin.wentizhongxin.jsp">问题中心</a>
							</li>
							<li>
								<a href="wodegongdan.wodegongdan.jsp">提交工单</a>
							</li>
							<li>
								<a href="bizhongjieshao.bizhongjieshao.jsp">资料下载<i class="caret"></i></a>
								<ul class="third-nav nav-help clearfix">
									<li>
										<a href="bizhongjieshao.bizhongjieshao.jsp">手机APP</a>
									</li>
									<li>
										<a href="bizhongjieshao.bizhongjieshao.jsp" target="_blank">Windows APP</a>
									</li>
									<li>
										<a href="bizhongjieshao.bizhongjieshao.jsp" target="_blank">Mac APP</a>
									</li>
									<li>
										<a href="bizhongjieshao.bizhongjieshao.jsp">币种资料</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>

				<div id="top_last_rate" style="display: none"></div>

			</div>
		</div>

		<div class="content">

			<div id="full-screen-slider">
				<div id="bannerProgress">
					<div id="innerProg"></div>
				</div>
				<div class="l-box-con">
					<div class="login_box">
						<div class="step" id="login-reg" style="">
							<form name="login" id="loginform" method="post" action="https://gateio.io/login">
								<b>登录</b>
								<!-- <input type="hidden" name="iprestriction" id="iprestriction" value='1'> -->
								<div class="username">
									<input name="email" id="nick" class="intxt" placeholder="用户名" type="text" onfocus="if(placeholder=='用户名'){ $.cookie('mystyle')=='dark'?this.style.color='#fff':this.style.color='#000';placeholder=''}" onblur="if(placeholder==''){this.style.color='#aaa';placeholder='用户名'}">
								</div>
								<div class="password">
									<input name="password" id="pwd" class="intxt" placeholder="密码" type="password" autocomplete="new-password" onfocus="if(placeholder=='密码'){$.cookie('mystyle')=='dark'?this.style.color='#fff':this.style.color='#000';placeholder=''}" onblur="if(placeholder==''){this.style.color='#aaa';placeholder='密码'}" onkeydown="if (event.keyCode == 13) { this.form.submit(); return false; }">
								</div>
								<div class="cap-code">
									<!--<i class="icon-code"><img src="/images/loginpas.png" /></i>-->
									<input name="captcha" id="captcha" class="intxt" placeholder="验证码" type="text" onfocus="if(placeholder=='验证码'){$.cookie('mystyle')=='dark'?this.style.color='#fff':this.style.color='#000';placeholder=''}" onblur="if(placeholder==''){this.style.color='#aaa';placeholder='验证码'}" onkeydown="if (event.keyCode == 13) { this.form.submit(); return false; }" maxlength="8">
									<img id="loginCaptcha" src="https://gateio.io/captcha" alt="Captcha" title="看不清？换一张" onclick="document.getElementById('loginCaptcha').src = '/captcha?' + Math.random(); return false">
								</div>
								<div class="btn">
									<a href="javascript:document.getElementById('loginform').submit()" class="button button-flat-action">登录</a>
								</div>
								<div class="wj">
									<a href="https://gateio.io/resetpw" target="_blank">忘记密码?</a> &nbsp;&nbsp;&nbsp;
									<a class="im-new" href="https://gateio.io/login" target="_blank">新用户注册</a>
								</div>
							</form>
						</div>
					</div>

				</div>
				<ul id="slides">
					<li data-id="#972697" data-txt="#e3fdfb">
						<div class="l-box-con">
							<div class="txt-banner txt-top-60 add-coin-banner">
								<span class="banner-thin banner-font-42"><i class="icon-48 icon-48-qtum"></i>充值Qtum量子链赢取QTUM大奖</span>
								<div class="banner-s-font">
									<span class="banner-coininfo">Qtum充值竞赛现正进行中！关注Qtum x86虚拟机，企业应用，闪电网络 - 转发Twitter分享Airdrop！</span>
									<div class="banner-btn clearfix">

										<span class="r-btn clearfix" onclick="window.location.href='/myaccount/deposit/QTUM'"><i class="icon-32 icon-32-qtum"></i><em>充值QTUM</em></span>
										<span class="r-btn clearfix" onclick="window.location.href='/trade/QTUM_USDT'"><i class="icon-32 icon-32-usdt"></i><em>QTUM对USDT交易</em></span>
										<span class="r-btn clearfix" onclick="window.location.href='https://twitter.com/gate_io'"><i class="icon-32 icon-32-gate"></i><em>转发Twitter</em></span>
										<span class="r-btn clearfix" onclick="window.location.href='https://gateio.io/article/16451'"><i class="icon-32 icon-32-qtum"></i><em>大奖规则</em></span>
									</div>
									<div class="bg-txt">gate.io</div>
									<div class="slogan-effect">gate.io Blockchain Assets Trading Platform. The Gate of Blockchain Assets Exchange</div>
									<small></small>
								</div>
							</div>
						</div>
					</li>

					<li data-id="#962536" data-txt="#ffdede">
						<div class="l-box-con">
							<div class="txt-banner txt-top-60 add-coin-banner">
								<span class="banner-thin banner-font-42"><i class="icon-48 icon-48-usdt"></i>比特币，以太坊大涨大跌，法币如何上车？</span>
								<div class="banner-s-font">
									<span class="banner-coininfo">gate.io 提供快捷C2C（点对点）交易，10分钟完成法币买卖USDT，不错过任何行情！</span>
									<div class="banner-btn clearfix">
										<span class="r-btn clearfix" onclick="window.location.href='/c2c/usdt_cny'"><i class="icon-32 icon-32-usdt"></i><em>C2C交易(微信支付宝)</em></span>
										<span class="r-btn clearfix" onclick="window.location.href='/trade/BTC_USDT'"><i class="icon-32 icon-32-btc"></i><em>买卖比特币</em></span>
										<span class="r-btn clearfix" onclick="window.location.href='/trade/ETH_USDT'"><i class="icon-32 icon-32-eth"></i><em>买卖以太坊</em></span>
										<span class="r-btn clearfix" onclick="window.location.href='/article/16269'"><i class="icon-32 icon-32-usdt"></i><em>什么是USDT</em></span>
									</div>
									<div class="bg-txt">gate.io</div>
									<div class="slogan-effect">gate.io Blockchain Assets Trading Platform. The Gate of Blockchain Assets Exchange</div>
									<small></small>
								</div>
							</div>
						</div>
					</li>

					<li data-id="#113c5f" data-txt="#eee">
						<div class="l-box-con">
							<div class="txt-banner txt-top-60 add-coin-banner">
								<span class="banner-thin banner-font-42"><i class="icon-48 icon-48-gate"></i>gate.io全球加速 - 官方节点 gateio.io</span>
								<div class="banner-s-font">
									<span class="banner-coininfo">gate.io全球分布，请选择速度最快的节点使用!</span>
									<div class="banner-btn clearfix">
										<span class="r-btn clearfix" onclick="window.location.href='https://gateio.io'"><i class="icon-32 icon-32-gate"></i><em>主站</em></span>
										<span class="r-btn clearfix" onclick="window.location.href='https://kr.gateio.io'"><i class="icon-32 icon-32-korea icon-flag"></i><em>韩国节点</em></span>
										<span class="r-btn clearfix" onclick="window.location.href='https://us.gateio.io'"><i class="icon-32 icon-32-usa icon-flag"></i><em>美国节点</em></span>
										<span class="r-btn clearfix" onclick="window.location.href='https://gateio.io'"><i class="icon-32 icon-32-japan icon-flag"></i><em>日本节点</em></span>
									</div>
									<div class="bg-txt">gate.io</div>
									<div class="slogan-effect">gate.io Blockchain Assets Trading Platform. The Gate of Blockchain Assets Exchange</div>
									<small></small>
								</div>
							</div>
						</div>
					</li>

					<!--
		<li class="imgli" data-id="#11232d" data-txt="#ffdede">
           <a target=_blank href='/article/16378'><img src="/images/ledu.jpg"></a>
        </li>
		-->

					<li data-id="#11232d" data-txt="#ffdede">
						<div class="l-box-con">
							<div class="txt-banner txt-top-60 add-coin-banner">
								<span class="banner-thin banner-font-42"><i class="icon-48 icon-48-bts"></i>BTS 比特股 上线交易</span>
								<div class="banner-s-font">
									<span class="banner-coininfo">比特股（BitShares）是一个基于石墨烯区块链技术的去中心化金融服务综合平台。</span>
									<div class="banner-btn clearfix">
										<span class="r-btn clearfix" onclick="window.location.href='/trade/BTS_BTC'"><i class="icon-32 icon-32-bts"></i><em>BTS/BTC交易</em></span>
										<span class="r-btn clearfix" onclick="window.location.href='/trade/BTS_USDT'"><i class="icon-32 icon-32-bts"></i><em>BTS/USDT交易</em></span>
									</div>
									<div class="bg-txt">gate.io</div>
									<div class="slogan-effect">gate.io Blockchain Assets Trading Platform. The Gate of Blockchain Assets Exchange</div>
									<small></small>
								</div>
							</div>
						</div>
					</li>

					<li data-id="#009ab4" data-txt="#e3fdfb">
						<div class="l-box-con">
							<div class="txt-banner txt-top-60 add-coin-banner">
								<span class="banner-thin banner-font-42"><i class="icon-48 icon-48-nas"></i>星云链(Nebulas)交易开启</span>
								<div class="banner-s-font">
									<span class="banner-coininfo">星云链(Nebulas)是由小蚁创始成员发起的区块链操作系统及搜索引擎。</span>
									<div class="banner-btn clearfix">
										<span class="r-btn clearfix" onclick="window.location.href='/myaccount/deposit/NAS'"><i class="icon-32 icon-32-nas"></i><em>立即充值NAS</em></span>
										<span class="r-btn clearfix" onclick="window.location.href='/trade/NAS_USDT'"><i class="icon-32 icon-32-usdt"></i><em>NAS对USDT交易</em></span>
										<span class="r-btn clearfix" onclick="window.location.href='/trade/NAS_ETH'"><i class="icon-32 icon-32-eth"></i><em>NAS对ETH交易</em></span>
									</div>
									<div class="bg-txt">gate.io</div>
									<div class="slogan-effect">gate.io Blockchain Assets Trading Platform. The Gate of Blockchain Assets Exchange</div>
									<small></small>
								</div>
							</div>
						</div>
					</li>

					<li data-id="#11232d" data-txt="#ffdede">
						<div class="l-box-con">
							<div class="txt-banner txt-top-60 add-coin-banner">
								<span class="banner-thin banner-font-42"><i class="icon-48 icon-48-iota"></i>IOTA 埃欧塔 上线交易</span>
								<div class="banner-s-font">
									<span class="banner-coininfo">IOTA是为物联网而设计，无手续费，实时微交易，专注于解决机器与机器交互的新型数字货币</span>
									<div class="banner-btn clearfix">
										<span class="r-btn clearfix" onclick="window.location.href='/trade/IOTA_BTC'"><i class="icon-32 icon-32-iota"></i><em>IOTA/BTC交易</em></span>
										<span class="r-btn clearfix" onclick="window.location.href='/trade/IOTA_USDT'"><i class="icon-32 icon-32-iota"></i><em>IOTA/USDT交易</em></span>
									</div>
									<div class="bg-txt">gate.io</div>
									<div class="slogan-effect">gate.io Blockchain Assets Trading Platform. The Gate of Blockchain Assets Exchange</div>
									<small></small>
								</div>
							</div>
						</div>
					</li>

					<li data-id="#257896" data-txt="#e6fffd">
						<div class="l-box-con">
							<div class="txt-banner txt-top-60 add-coin-banner">
								<span class="banner-thin banner-font-42"><i class="icon-48 icon-48-fil"></i>IPFS上线交易</span>
								<div class="banner-s-font">
									<span class="banner-coininfo">星际文件系统 IPFS Filecoin 面向全球的、点对点的分布式版本文件系统</span>
									<div class="banner-btn clearfix">
										<span class="r-btn clearfix" onclick="window.location.href='/trade/FIL_USDT'"><i class="icon-32 icon-32-fil"></i><em>对USDT交易</em></span>
										<span class="r-btn clearfix" onclick="window.location.href='https://filecoin.io/'"><i class="icon-32 icon-32-fil"></i><em>官方网站</em></span>
									</div>
									<div class="bg-txt">gate.io</div>
									<div class="slogan-effect">gate.io Blockchain Assets Trading Platform. The Gate of Blockchain Assets Exchange</div>
									<small></small>
								</div>
							</div>
						</div>
					</li>

					<li data-id="#867919" data-txt="#fffed3">
						<div class="l-box-con">
							<div class="txt-banner txt-top-60"><span class="banner-thin banner-m-font">上线优质区块链项目<br>为您提供最佳投资渠道...</span></div>
							<div class="banner-btn clearfix">
								<span class="r-btn clearfix" onclick="window.location.href='/trade/HSR_USDT'"><i class="icon-32 icon-32-hsr"></i><em>HShare交易</em></span>
								<span class="r-btn clearfix" onclick="window.location.href='/trade/NEO_USDT'"><i class="icon-32 icon-32-neo"></i><em>小蚁NEO交易</em></span>
								<span class="r-btn clearfix" onclick="window.location.href='/trade/INK_USDT'"><i class="icon-32 icon-32-ink"></i><em>墨链INK交易</em></span>
								<span class="r-btn clearfix" onclick="window.location.href='/trade/BOT_USDT'"><i class="icon-32 icon-32-bot"></i><em>菩提BOT交易</em></span>
							</div>
						</div>
					</li>

					<li data-id="#384e77" data-txt="#dbe8ff">
						<div class="l-box-con">
							<div class="txt-banner txt-logo">
								<img class="gate-logo" src="images/gateio.svg" title="gate.io" alt="gate.io logo">
								<span class="banner-thin banner-m-font pull-left">大门交易平台<br>汇聚优质区块链资产</span>
							</div>
						</div>
					</li>

					<li data-id="#387760" data-txt="#e3fff5">
						<div class="l-box-con">
							<div class="txt-banner txt-middle"><span class="banner-thin banner-l-font">秒冲秒提，体验前所未有！</span></div>
						</div>
					</li>

					<li data-id="#542e63" data-txt="#f9ebff">
						<div class="l-box-con">
							<div class="txt-banner txt-top">
								<span class="banner-thin banner-m-font">独有地址共享技术，<br>再也不怕充错地址</span>
								<div class="banner-s-font">BTC, BCH, USDT 地址共享
									<span style="margin-left: 20px">ETH, ETC, Tokens 地址共享</span>
									<p class="bg-txt">gate.io</p>
									<p class="slogan-effect">gate.io Blockchain Assets Trading Platform. The Gate of Blockchain Assets Exchange</p>
									<small></small>
								</div>
							</div>
						</div>
					</li>
				</ul>
				<div class="area-btn-bg"></div>
			</div>

			<div class="left_con">
				<div class="tline_btns clearfix" id="marketlist_controller">
					<button id="usdt" class="tline_btn button btn_selected"><span>对USDT交易区</span></button>
					<button id="btc" class="tline_btn button "><span>对BTC交易区</span></button>
					<button id="eth" class="tline_btn button "><span>对ETH交易区</span></button>
					<button id="qtum" class="tline_btn button "><span>对QTUM交易区</span></button>
					<button id="limited" class="tline_btn button "><span>限时交易区</span></button>
					<button id="custom" class="tline_btn button "><span>我的自选区</span></button>
				</div>
				<div id="mkCon">
					<div id="sBar">
						<div class="bottom-notice">
							<ul>
								<li>
									<svg xmlns="http://www.w3.org/2000/svg" width="13" height="18" viewBox="0 -2.914 13 18">
										<path fill="#666" d="M9.126 5.273l-.88.782v.057c.73.795 1.178 1.884 1.178 3.083 0 1.2-.45 2.29-1.178 3.085v.06l.88.78c.915-1.02 1.476-2.4 1.476-3.925 0-1.523-.56-2.904-1.476-3.922zM0 6.84v4.712h2.356l3.534 3.534V3.306L2.356 6.84" />
										<path fill="#666" d="M10.98 3.625l-.883.782C11.15 5.725 11.78 7.387 11.78 9.2c0 1.814-.63 3.476-1.683 4.784l.882.782c1.234-1.52 1.977-3.457 1.977-5.57 0-2.112-.742-4.054-1.98-5.573v.002z" />
									</svg>
									<a class="n-box" href="gonggaoxiangqing.gonggaoxiangqing.jsp" target=_blank>公告：gate.io充值量子链(QTUM)赢取QTUM大奖活动公告</a>
									<a href="gonggao.gonggao.jsp" style="margin-left: 20px;color: #de5959">更多...</a>
								</li>
							</ul>
						</div>
						<div class="dataTables_wrapper">
							<div class="dataTables_filter search-p">
								<label><input type="search" id="fsBar" placeholder='搜索USDT交易区'></label>
							</div>
						</div>
					</div>
					<div id="marketMain">
						<div id="mianBox" class="USDT-box">
							<table id="listTable" class="marketlist dataTable">
								<thead>
									<tr>
										<th class="sortable"><b>币种对<span class=curr-base>USDT</span></b></th>
										<th class="sortable"><b>价格<span class=curr-base>USDT</span></b></th>
										<th class="sortable"><b>交易量<span class=curr-base>USDT</span></b></th>
										<th class="sortable"><b>总市值</b></th>
										<th class="sortable day-updn"><b>日涨跌</b></th>
										<th class="sorting_disabled price-flot"><b>价格趋势(3日)</b></th>
										<th class="sorting_disabled"></th>
										<th class="sorting_disabled"><i class="fav-icon" title="自选"></i></th>
									</tr>
								</thead>
								<tbody id="list_tbody">
									<tr id=eos_usdt>
										<td>
											<a class="coin-name " href="https://gateio.io/trade/EOS_USDT" title="EOS"><span class="icon-32 icon-32-eos"></span><span class="name-con"><b><span class="curr_a">EOS</span></b> <span class="cname">EOS</span> </span>
											</a>
										</td>
										<td class="rate_up">$13.98<span style='color:#999'>/￥90.87</span></td>
										<td>$12,413,778</td>
										<td>$13,980,000,000</td>
										<td class="day-updn"><span class=red>+2.73 %</span></td>
										<td>
											<div class="price-chart" id="eos_usdt_plot"></div>
										</td>
										<td>
											<a class="go-trade-btn r-btn" href="https://gateio.io/trade/EOS_USDT">去交易</a>
										</td>
										<td class="custom-option"><i class="add-fav"></i></td>
									</tr>
									<tr id=btm_usdt>
										<td>
											<a class="coin-name " href="https://gateio.io/trade/BTM_USDT" title="比原链"><span class="icon-32 icon-32-btm"></span><span class="name-con"><b><span class="curr_a">BTM</span></b> <span class="cname">比原链</span> </span>
											</a>
										</td>
										<td class="rate_up">$0.7438<span style='color:#999'>/￥4.83</span></td>
										<td>$10,927,006</td>
										<td>$1,561,980,000</td>
										<td class="day-updn"><span class=red>+21.20 %</span></td>
										<td>
											<div class="price-chart" id="btm_usdt_plot"></div>
										</td>
										<td>
											<a class="go-trade-btn r-btn" href="https://gateio.io/trade/BTM_USDT">去交易</a>
										</td>
										<td class="custom-option"><i class="add-fav"></i></td>
									</tr>
									<tr id=eth_usdt>
										<td>
											<a class="coin-name " href="https://gateio.io/trade/ETH_USDT" title="以太币"><span class="icon-32 icon-32-eth"></span><span class="name-con"><b><span class="curr_a">ETH</span></b> <span class="cname">以太币</span> </span>
											</a>
										</td>
										<td class="rate_up">$716.00<span style='color:#999'>/￥4654.00</span></td>
										<td>$9,664,807</td>
										<td>$67,938,734,000</td>
										<td class="day-updn"><span class=red>+1.29 %</span></td>
										<td>
											<div class="price-chart" id="eth_usdt_plot"></div>
										</td>
										<td>
											<a class="go-trade-btn r-btn" href="https://gateio.io/trade/ETH_USDT">去交易</a>
										</td>
										<td class="custom-option"><i class="add-fav"></i></td>
									</tr>
									<tr id=pst_usdt>
										<td>
											<a class="coin-name " href="https://gateio.io/trade/PST_USDT" title="Primas"><span class="icon-32 icon-32-pst"></span><span class="name-con"><b><span class="curr_a">PST</span></b> <span class="cname">Primas</span> </span>
											</a>
										</td>
										<td class="rate_up">$1.12<span style='color:#999'>/￥7.28</span></td>
										<td>$7,589,121</td>
										<td>$111,700,000</td>
										<td class="day-updn"><span class=red>+10.82 %</span></td>
										<td>
											<div class="price-chart" id="pst_usdt_plot"></div>
										</td>
										<td>
											<a class="go-trade-btn r-btn" href="https://gateio.io/trade/PST_USDT">去交易</a>
										</td>
										<td class="custom-option"><i class="add-fav"></i></td>
									</tr>
									<tr id=skm_usdt>
										<td>
											<a class="coin-name " href="https://gateio.io/trade/SKM_USDT" title="Skrumble"><span class="icon-32 icon-32-skm"></span><span class="name-con"><b><span class="curr_a">SKM</span></b> <span class="cname">Skrumble</span> </span>
											</a>
										</td>
										<td class="rate_up">$0.1000<span style='color:#999'>/￥0.65</span></td>
										<td>$6,036,275</td>
										<td>$150,000,000</td>
										<td class="day-updn"><span class=red>+11.98 %</span></td>
										<td>
											<div class="price-chart" id="skm_usdt_plot"></div>
										</td>
										<td>
											<a class="go-trade-btn r-btn" href="https://gateio.io/trade/SKM_USDT">去交易</a>
										</td>
										<td class="custom-option"><i class="add-fav"></i></td>
									</tr>
									<tr id=trx_usdt>
										<td>
											<a class="coin-name " href="https://gateio.io/trade/TRX_USDT" title="波场"><span class="icon-32 icon-32-trx"></span><span class="name-con"><b><span class="curr_a">TRX</span></b> <span class="cname">波场</span> </span>
											</a>
										</td>
										<td class="rate_up">$0.0807<span style='color:#999'>/￥0.52</span></td>
										<td>$5,624,926</td>
										<td>$5,294,329,108</td>
										<td class="day-updn"><span class=red>+14.57 %</span></td>
										<td>
											<div class="price-chart" id="trx_usdt_plot"></div>
										</td>
										<td>
											<a class="go-trade-btn r-btn" href="https://gateio.io/trade/TRX_USDT">去交易</a>
										</td>
										<td class="custom-option"><i class="add-fav"></i></td>
									</tr>
									<tr id=ocn_usdt>
										<td>
											<a class="coin-name " href="https://gateio.io/trade/OCN_USDT" title="OCOIN"><span class="icon-32 icon-32-ocn"></span><span class="name-con"><b><span class="curr_a">OCN</span></b> <span class="cname">OCOIN</span> </span>
											</a>
										</td>
										<td class="rate_up">$0.0187<span style='color:#999'>/￥0.12</span></td>
										<td>$4,455,720</td>
										<td>$187,000,000</td>
										<td class="day-updn"><span class=red>+10.00 %</span></td>
										<td>
											<div class="price-chart" id="ocn_usdt_plot"></div>
										</td>
										<td>
											<a class="go-trade-btn r-btn" href="https://gateio.io/trade/OCN_USDT">去交易</a>
										</td>
										<td class="custom-option"><i class="add-fav"></i></td>
									</tr>
									<tr id=lym_usdt>
										<td>
											<a class="coin-name " href="https://gateio.io/trade/LYM_USDT" title="Lympo"><span class="icon-32 icon-32-lym"></span><span class="name-con"><b><span class="curr_a">LYM</span></b> <span class="cname">Lympo</span> </span>
											</a>
										</td>
										<td class="rate_up">$0.0941<span style='color:#999'>/￥0.61</span></td>
										<td>$4,211,714</td>
										<td>$94,100,000</td>
										<td class="day-updn"><span class=red>+4.09 %</span></td>
										<td>
											<div class="price-chart" id="lym_usdt_plot"></div>
										</td>
										<td>
											<a class="go-trade-btn r-btn" href="https://gateio.io/trade/LYM_USDT">去交易</a>
										</td>
										<td class="custom-option"><i class="add-fav"></i></td>
									</tr>
									<tr id=iht_usdt>
										<td>
											<a class="coin-name " href="https://gateio.io/trade/IHT_USDT" title="云产币"><span class="icon-32 icon-32-iht"></span><span class="name-con"><b><span class="curr_a">IHT</span></b> <span class="cname">云产币</span> </span>
											</a>
										</td>
										<td class="rate_up">$0.2220<span style='color:#999'>/￥1.44</span></td>
										<td>$3,627,125</td>
										<td>$222,000,000</td>
										<td class="day-updn"><span class=red>+7.77 %</span></td>
										<td>
											<div class="price-chart" id="iht_usdt_plot"></div>
										</td>
										<td>
											<a class="go-trade-btn r-btn" href="https://gateio.io/trade/IHT_USDT">去交易</a>
										</td>
										<td class="custom-option"><i class="add-fav"></i></td>
									</tr>
									<tr id=bot_usdt>
										<td>
											<a class="coin-name " href="https://gateio.io/trade/BOT_USDT" title="菩提"><span class="icon-32 icon-32-bot"></span><span class="name-con"><b><span class="curr_a">BOT</span></b> <span class="cname">菩提</span> </span>
											</a>
										</td>
										<td class="rate_down">$1.26<span style='color:#999'>/￥8.19</span></td>
										<td>$3,594,105</td>
										<td>$126,070,000</td>
										<td class="day-updn"><span class=green>-3.28 %</span></td>
										<td>
											<div class="price-chart" id="bot_usdt_plot"></div>
										</td>
										<td>
											<a class="go-trade-btn r-btn" href="https://gateio.io/trade/BOT_USDT">去交易</a>
										</td>
										<td class="custom-option"><i class="add-fav"></i></td>
									</tr>
									<tr id=btc_usdt>
										<td>
											<a class="coin-name " href="https://gateio.io/trade/BTC_USDT" title="比特币"><span class="icon-32 icon-32-btc"></span><span class="name-con"><b><span class="curr_a">BTC</span></b> <span class="cname">比特币</span> </span>
											</a>
										</td>
										<td class="rate_up">$8517.24<span style='color:#999'>/￥55362.06</span></td>
										<td>$3,440,469</td>
										<td>$141,352,115,040</td>
										<td class="day-updn"><span class=red>+2.90 %</span></td>
										<td>
											<div class="price-chart" id="btc_usdt_plot"></div>
										</td>
										<td>
											<a class="go-trade-btn r-btn" href="https://gateio.io/trade/BTC_USDT">去交易</a>
										</td>
										<td class="custom-option"><i class="add-fav"></i></td>
									</tr>
									<tr id=ont_usdt>
										<td>
											<a class="coin-name " href="https://gateio.io/trade/ONT_USDT" title="本体"><span class="icon-32 icon-32-ont"></span><span class="name-con"><b><span class="curr_a">ONT</span></b> <span class="cname">本体</span> </span>
											</a>
										</td>
										<td class="rate_up">$8.19<span style='color:#999'>/￥53.24</span></td>
										<td>$3,312,557</td>
										<td>$8,185,000,000</td>
										<td class="day-updn"><span class=red>+10.61 %</span></td>
										<td>
											<div class="price-chart" id="ont_usdt_plot"></div>
										</td>
										<td>
											<a class="go-trade-btn r-btn" href="https://gateio.io/trade/ONT_USDT">去交易</a>
										</td>
										<td class="custom-option"><i class="add-fav"></i></td>
									</tr>
								</tbody>
							</table>
							<div class="load8 mload">
								<div class="loader">Loading</div><span>加载中...</span></div>
						</div>
					</div>
				</div>
			</div>
			<div class="advantage">
				<h1>Blockchain Assets Trading Platform</h1>
				<h2>Gate.io</h2>
				<img class="gate-logo" src="images/gateio_h.svg" title="下载大图" alt="gate.io logo">
			</div>
		</div>
		<div class="footer">
			<div class="fkicon">
				<ul class="clearfix">
					<li>
						<a href="javascript:ticketsRoute();" title="Ticket">
							<div class="fico fc5"></div>
							<div class="fkcont">
								<div class="ftel">Ticket</div>
								<div class="ftelnum">Submit a request</div>
							</div>
						</a>
					</li>
					<li>
						<a href="https://twitter.com/gate_io" target="_blank" title="Twitter">
							<div class="fico fc-twi"></div>
							<div class="fkcont">
								<div class="ftel">Twitter</div>
								<div class="ftelnum">twitter.com/gate_io</div>
							</div>
						</a>
					</li>
					<li>
						<a href="https://t.me/gate_io" target="_blank" title="Telegram">
							<div class="fico fc3"></div>
						</a>
					</li>
					<li>
						<a href="https://www.instagram.com/gate.io/" target="_blank" title="Instagram">
							<div class="fico fc7"></div>
						</a>
					</li>
					<li>
						<a href="mailto:support@mail.gate.io" target="_blank" title="Email">
							<div class="fico fc6"></div>
							<div class="fkcont">
								<div class="ftel">Email</div>
								<div class="ftelnum">Email us</div>
							</div>
						</a>
					</li>
					<li>
						<a href="https://github.com/gateio" target="_blank" title="Github">
							<div class="fico fc4"></div>
							<div class="fkcont">
								<div class="ftel">Github</div>
								<div class="ftelnum">gate.io Github</div>
							</div>
						</a>
					</li>
				</ul>
				<div class="fxts">
					<p style="text-align: center"><i>!</i>比特币等密码币的交易存在风险，在全球范围内一周7天，一天24小时无休止交易，没有每日涨停跌停限制，价格受到新闻事件，各国政策，市场需求等多种因素影响，浮动很大。我们强烈建议您事先调查了解，在自身所能承受的风险范围内参与交易。</p>
				</div>
			</div>

			<div class="fnav">
				<div class="fnavcon">
					<ul>
						<li class="fnav_list">
							<!--<div class="fnav_title">关于我们</div>-->
							<ul>
								<li>
									<a href="lianxiwomen.lianxiwomen.jsp">联系我们</a>
								</li>
								<li>
									<a href="huilv.huilv.jsp">费率标准</a>
								</li>
								<li>
									<a href="apishuoming.apishuoming.jsp">API文档</a>
								</li>
								<li>
									<a href="#">用户协议</a>
								</li>
								<li>
									<a href="gonggao.gonggao.jsp">本站公告</a>
								</li>
							</ul>
						</li>

					</ul>
				</div>
				<div class="tail">
					<span>gate.io&nbsp;&nbsp;版权所有 © 2018</span>
					<div class="vol-all">
						<span>成交量:</span>
						<span> USDT : $<span id="usdtAll">106665737</span> </span>
						<span> BTC : ฿<span id="btcAll">621</span> </span>
						<span> LTC : Ł<span id="ltcAll">2781</span> </span>
						<span> ETH : E<span id="ethAll">28028</span> </span>
					</div>
					<span id="runTime">
                <!--<a href="#">gate.io</a> is powered by <a href="#">gate.io Dev Team</a>-->
                <span class="admin-view"> Elapsed:4.200ms - cnst:0.1;b:2.2;vol:0.2;sl:0.2;14:0.3; .36 &nbsp; a/e/r </span>
					</span>
				</div>
			</div>
		</div>

		<script>
			//force user to use https
 			// if ('http:' != document.location.protocol) { window.location = 'http://' + window.location.hostname +":8020"+ window.location.pathname; }

			//for footer
			var tier_next_progress = '';

			$("#usdtAll").text(toThousands(106665737));
			$("#btcAll").text(toThousands(621));
			$("#ltcAll").text(toThousands(2781));
			$("#ethAll").text(toThousands(28028));
			is_login = '' != '';
		</script>

		<script>
			USDT_fiat_rate = '6.50000000';
			BTC_fiat_rate = '55362.06';
			ETH_fiat_rate = '4654';
			QTUM_fiat_rate = '108.615';
			var daysLeftArr = '{"REM":17,"TOMO":24,"HUR":25,"INSTAR":17,"TFD":24,"ELEC":24,"LST":25,"HAV":25,"SHIP":24}';
			var data_expired = '';
		</script>
		<script src="js/flot.js?0420"></script>
		<script src="js/marketlist.js?v=1525864037"></script>

		<script src="js/footer.js?v=0420"></script>

	</body>

</html>

<div class="hide">t:2.058ms</div>