<!--{include file="<!--{$uctplpath}-->block_head.tpl"}-->
<!--{include file="<!--{$uctplpath}-->block_top.tpl"}-->
<!--{assign var="cp_menuid" value="extend"}-->
<div class="user_main">
  <div class="oe_bn"><span></span><a href="<!--{$ucfile}-->">会员中心</a> &gt;&gt; 我的工具</div>
  <!--{include file="<!--{$uctplpath}-->block_menu.tpl"}-->

  <div class="main_right">
	  <div class="oe_tab_nv">
	    <ul>
		  <li class="tab_item<!--{if $a == 'connect'}--> current<!--{/if}-->"><a href="<!--{$ucfile}-->?c=extend&a=connect">绑定登录</a></li>
		  <li class="tab_item<!--{if $a == 'cpa'}--> current<!--{/if}-->"><a href="<!--{$ucfile}-->?c=extend&a=cpa">推广注册</a></li>
		  <li class="tab_item<!--{if $a == 'transfer'}--> current<!--{/if}-->"><a href="<!--{$ucfile}-->?c=extend&a=transfer">积分转换</a></li>
	    </ul>
	  </div>

    <div class="div_smallnav_content_hover">

	  <!--{if $a eq 'connect'}--> 
	    <div class="item_title item_margin"><p>绑定登录</p><span class="shadow"></span></div>
		<!--{if !empty($connect)}-->
		<table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh35">
		  <!--{foreach $connect as $volist}-->
		  <tr>
			<td class="lblock" width="25%"><!--{$volist.authname}--></td>
			<td class="rblock" width="75%">
			<img src="<!--{$volist.logo}-->">
			<!--{if $volist.bindcount>0}-->
			<font color='green'>已绑定 (<!--{$volist.bindcount}-->)</font> &nbsp;&nbsp;
			<a href="<!--{$volist.apiurl}-->" target="_blank" class="btn_c2"><span>绑定多个登录</span></a> &nbsp;&nbsp;
			<a href="<!--{$ucfile}-->?c=extend&a=delconnect&mod=<!--{$volist.filepath}-->" class="btn_c3"><span>解除绑定</span></a>
			<!--{else}-->
			<font color="#999999">未绑定 </font> &nbsp;&nbsp;
			<a href="<!--{$volist.apiurl}-->" target="_blank">绑定登录</a>
			<!--{/if}-->
			</td>
		  </tr>
		  <!--{/foreach}-->
		  <tr>
			<td colspan="2"><div class="nav-tips">选择要绑定的QQ，新浪微博登录方式，用您在所选平台注册的帐号，密码登录，登录成功后，可完美与本站进行登录绑定。</div></td>
		  </tr>
		</table>
		<!--{else}-->
		<table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh35">
		  <tr>
			<td colspan="2" align="center">对不起，本站没有开启QQ，新浪微博登录。</td>
		  </tr>
		</table>
		<!--{/if}-->

	  <!--{if !empty($config.oeinterface)}-->
	  <!--{if $config.oeinterface.flag == "1"}-->
	  <table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh35">
        <tr>
		  <td width="15%" class="lblock"><!--{$config.oeinterface.apiname}-->帐号</td>
		  <td class="rblock">
		    <!--{if !empty($u.oeopenid)}-->
		    <font color="green">已绑登录</font>
			<!--{else}-->
		    <table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh35">
			  <tr>
			    <td style="line-height:28px;width:15%;">用户名：</td>
				<td>
				  <input type="text" name="username" id="username" class="input-200" />
				</td>
			  </tr>
			  <tr>
			    <td style="line-height:28px;">密&nbsp;&nbsp;码：</td>
				<td>
				  <input type="password" name="password" id="password" class="input-200" />
				</td>
			  </tr>
			  <tr>
			    <td></td>
			    <td>输入<!--{$config.oeinterface.apiname}-->的用户名和密码进行绑定，绑定之后可同步登录</td>
			  </tr>
			  <tr>
			    <td style="line-height:28px;"></td>
				<td><input type="button" name="btn_submit" id="btn_submit" value="确定绑定" /></td>
			  </tr>
			</table>
		    <!--{/if}-->
		  </td>
        </tr>
      </table>
	  <!--{/if}--> 
	  <script type="text/javascript">
	  $(function(){

		$("#btn_submit").bind("click", function(){ //绑定登录
			$_username = $("#username").val();
			$_password = $("#password").val();
			if ($_username.length == 0) {
				ToastShow("请输入用户名");
				return false;
			}
			if ($_password.length == 0) {
				ToastShow("请输入密码");
				return false;
			}

			$.ajax({
				type: "POST",
				url: _ROOT_PATH+"index.php?c=interface",
				cache: false,
				data: {a:"sendbind", username:$_username, password:$_password, r:get_rndnum(8)},
				dataType: "json",
				success: function($data) {
					$json = eval($data);
					$response = $json.response;
					$result = $json.result;
					if ($response == '1') { //绑定成功
						ToastShow("绑定成功");
						setTimeout(function(){
							window.location.reload();
						}, 800);
					}
					else {
						if ($result.length > 0) {
							ToastTips($result);
						}
						else {
							ToastTips("绑定失败，请检查用户名和密码");
						}
					}
				},
				error: function() {
					ToastTips("绑定失败，请检查用户名和密码。");
				}
			});

		});

	  });
	  </script>
	  <!--{/if}--> 

	  <!--{/if}-->

	  <!--{if $a eq 'cpa'}--> 
	    <div class="item_title item_margin"><p>推广注册</p><span class="shadow"></span></div>
		<!--{if !empty($cpainfo)}-->
		<table cellpadding='5' cellspacing='5' width="98%" class="user-table table-margin lh35">
		  <tr>
			<td colspan="2" align="left">
			<div class="nav-tips">
			每推广一个有效注册会员（邮箱已认证<!--{if $cpainfo.avatarvalid==1}-->和头像有效<!--{/if}-->），即可获得<!--{$lang.money}--><!--{$cpainfo.onemoney}-->，<!--{$lang.points}--><!--{$cpainfo.onepoints}-->。
			</div>
			</td>
		  </tr>
		  <tr>
			<td class="lblock" width="10%">我的推广 </td>
			<td class="rblock" width="90%">
			累计推广注册：<!--{$cpacounts}--> 人，
			已结算：<!--{$settlecounts}--> 人， 
			未结算：<!--{$unsettlecounts}-->人
			<!--{if $unsettlecounts>0}-->
			<a href="<!--{$urlpath}-->usercp.php?c=extend&a=settlecpa" class="btn_c3"><span>点击结算</span></a>
			<!--{/if}-->
			<br />
			结算<!--{$lang.money}-->合计：<!--{$totalmoney}-->，结算<!--{$lang.points}-->合计：<!--{$totalpoints}-->
			</td>
		  </tr>
		  <tr>
			<td class="lblock">推广链接 </td>
			<td class="rblock">
			<!--{if true === $cpainfo.promotion}-->
			<input type="text" name="cpaurl" id="cpaurl" class="input-txt" value="<!--{$cpaurl}-->" />
			<input type="button" name="btn_copy" onclick="copy_url('cpaurl');" value="复制链接" class="button-red" />
			<!--{else}-->
			<input type="text" name="cpaurl" id="cpaurl" class="input-txt" value="推广注册已关闭" disabled />
			<!--{/if}-->

			</td>
		  </tr>
		</table>

		<!-- list start -->
		<table class="table" style="margin-top:20px;">
		  <tr>
			<td width='18%' align='center'>注册人ID</td>
			<td width='12%' align='center'>邮箱</td>
			<td width='12%' align='center'>头像</td>
			<td width='15%' align='center'>注册时间</td>
			<td width='12%' align='center'>奖励金币</td>
			<td width='12%' align='center'>奖励积分</td>
			<td align='center'>状态</td>
		  </tr>
		  <!--{foreach $list as $volist}-->
		  <tr>
			<td align='left'><a href="<!--{$urlpath}-->index.php?c=home&uid=<!--{$volist.ruserid}-->" target="_blank"><!--{$volist.ruserid}--></a></td>
			<td align='center'><!--{if $volist.rzemail==1}--><font color="green">有效</font><!--{else}--><font color="#999999">无效</font><!--{/if}--></td>
			<td align='center'><!--{if $volist.avatar==1}--><font color="green">有效</font><!--{else}--><font color="#999999">无效</font><!--{/if}--></td>
			<td align='center'><!--{$volist.timeline|date_format:"%Y-%m-%d"}--></td>
			<td align='center'><!--{$volist.validmoney}--></td>
			<td align='center'><!--{$volist.validpoints}--></td>
			<td align='center'>
			<!--{if $volist.settleflag==1}-->
			<font color="green">已结算</font>
			<!--{else}-->
			<font color="#999999">未结算</font>
			<!--{/if}-->
			</td>
		  </tr>
		  <!--{foreachelse}-->
		  <tr>
			<td colspan="7" align="center">对不起，暂无记录。</td>
		  </tr>
		  <!--{/foreach}-->
		</table>

		<!-- 分页 -->
		<!--{if $showpage!=""}-->
		<div class="page_digg" style="margin-top:15px"><!--{$showpage}--></div>
		<div class="c"></div>
		<!--{/if}-->

		<!--{else}-->
		<table cellpadding='5' cellspacing='5' width="98%" class="user-table table-margin lh35">
		  <tr>
			<td colspan="2" align="center">对不起，本站已关闭推广注册功能。</td>
		  </tr>
		</table>
		<!--{/if}-->
	  <!--{/if}-->


	  <!--{if $a eq 'transfer'}--> 
      <div class="nav-tips">
	  可用<!--{$lang.money}-->：<!--{$u.money}--> <!--{$lang.money_dot}-->，可用<!--{$lang.points}-->：<!--{$u.points}--> <!--{$lang.points_dot}-->
	  </div>
	  <table cellpadding='0' cellspacing='0' border='0' width="98%" class="user-table table-margin lh35">
		  <tr>
			<td colspan="2" style="padding-top:5px;padding-bottom:10px;"><div class="item_title" style="width:100%"><p><!--{$lang.points}-->转换<!--{$lang.money}--></p><span class="shadow"></span></div></td>
		  </tr>
		  <!-- 积分转换金币 -->
		  <!--{if true === $transfer['trade_money']}-->
		  <form name="my_moneyform" id="my_moneyform" action="<!--{$ucfile}-->?c=extend&a=transfermoney" method="post" >
		  <tr>
			<td class='lblock' width="18%">转换比例 <span class="f_red"></span></td>
			<td class="rblock" width="82%">1 个<!--{$lang.money}-->需要<!--{$lang.points}--> <!--{$transfer.trade_money_ratio}--></td>
		  </tr>
		  <tr>
			<td class='lblock'>最多可转换<!--{$lang.money}--> <span class="f_red"></span></td>
			<td class="rblock"><!--{$max_trans_money}--> <!--{$lang.money_dot}--></td>
		  </tr>
		  <tr>
			<td class='lblock'>输入转换<!--{$lang.money}-->数量 <span class="f_red"></span></td>
			<td class="rblock">
			<input type="text" name="quantity" id="quantity_money" class="input-100" maxlength="8" /> <span id="dquantiy" class="f_red"></span> 
			&nbsp;&nbsp;&nbsp;
			<input type="button"  id="btn_money" value="执行转换" class="button-qing" />
			</td>
		  </tr>
		  <!-- 提交保存 -->
		  </form>
		  <!--{else}-->
		  <tr>
			<td colspan="2" align="center">对不起，网站已关闭<!--{$lang.points}-->转换<!--{$lang.money}-->功能。</td>
		  </tr>
		  <!--{/if}-->

		  <!-- 金币转换积分 -->
		  <tr>
			<td colspan="2" style="padding-top:10px;padding-bottom:10px;"><div class="item_title" style="width:100%"><p><!--{$lang.money}-->转换<!--{$lang.points}--></p><span class="shadow"></span></div></td>
		  </tr>
		  <!--{if true === $transfer['trade_points']}-->
		  <form name="my_pointsform" id="my_pointsform" action="<!--{$ucfile}-->?c=extend&a=transferpoints" method="post" >
		  <tr>
			<td class='lblock'>转换比例 <span class="f_red"></span></td>
			<td class="rblock">1个<!--{$lang.money}-->可转换<!--{$lang.points}--> <!--{$transfer.trade_points_ratio}--></td>
		  </tr>
		  <tr>
			<td class='lblock'>最多可换得<!--{$lang.points}--> <span class="f_red"></span></td>
			<td class="rblock"><!--{$max_trans_points}--> <!--{$lang.points_dot}--></td>
		  </tr>
		  <tr>
			<td class='lblock'>可用<!--{$lang.money}-->数 <span class="f_red"></span></td>
			<td class="rblock"><!--{$u.money}--> <!--{$lang.money_dot}--></td>
		  </tr>
		  <tr>
			<td class='lblock'>输入转换<!--{$lang.money}-->数量 <span class="f_red"></span></td>
			<td class="rblock">
			<input type="text" name="quantity" id="quantity_points" class="input-100" maxlength="8" /> <span id="dquantiy" class="f_red"></span> 
			&nbsp;&nbsp;&nbsp;
			<input type="button" id="btn_points" value="执行转换" class="button-green" />
			</td>
		  </tr>
		  <!-- 提交保存 -->
		  </form>
		  <!--{else}-->
		  <tr>
			<td colspan="2" align="center">对不起，网站已关闭<!--{$lang.money}-->转换<!--{$lang.points}-->功能。</td>
		  </tr>
		  <!--{/if}-->
	  </table>

	  <!--{/if}-->


    </div>
	<!--//div_smallnav_content_hover End-->
  </div>
  <div class="clear"> </div>
  <!--//main_right End-->

</div>
<div class="_margin"></div>

<!--{include file="<!--{$uctplpath}-->block_footer.tpl"}-->
</body>
</html>
<script type='text/javascript'>
$(function(){
	//积分转换金币
	$('#btn_money').click(function(){
		var quantity_money = $('#quantity_money').val();
		if (quantity_money < 1) {
			$.dialog({
				lock:true,
				title: '错误提示',
				content: '请输入转换数量', 
				icon: 'error',
				button: [ 
					{
						name: '确定'
					}
				]
			});
			return false;
		}
		else {
			$.dialog({
				lock:true,
				title: '确认提示',
				content: '确定要执行转换吗？', 
				icon: 'warning',
				button: [
					{
						name: '确定',
						callback: function () {
							$('#my_moneyform').submit();
							return true;
						}
					}, 
					{
						name: '取消'
					}
				]
			});
		}
	});

	//金币转换积分
	$('#btn_points').click(function(){
		var quantity_points = $('#quantity_points').val();
		if (quantity_points < 1) {
			$.dialog({
				lock:true,
				title: '错误提示',
				content: '请输入转换数量', 
				icon: 'error',
				button: [ 
					{
						name: '确定'
					}
				]
			});
			return false;
		}
		else {
			$.dialog({
				lock:true,
				title: '确认提示',
				content: '确定要执行转换吗？', 
				icon: 'warning',
				button: [
					{
						name: '确定',
						callback: function () {
							$('#my_pointsform').submit();
							return true;
						}
					}, 
					{
						name: '取消'
					}
				]
			});
		}
	});

});
</script>