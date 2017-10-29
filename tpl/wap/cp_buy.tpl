<!--{assign var="menu_id" value="buy"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<div class="cp-bartitle">购买特权</div>

<div class="cp-layout-body">

  <!--{assign var="viplist" value=vo_list("mod={usergroup} where={v.groupid>1}")}-->
  <!--{foreach $viplist as $volist}-->
  <div class="buy-box" onclick="changeTab('group_<!--{$volist.groupid}-->');">
    <div class="buy-wrap">
	  <div class="buy-wrap-left"><img src="<!--{$wapskin}-->images/service_000.png" /></div>
	  <div class="buy-wrap-right">
	    <h2><!--{$volist.groupname}--></h2>
		<p>开通<!--{$volist.groupname}-->，尊享更多特权。</p>
	  </div>
	  <div class="clear"></div>
	</div>
	<span class="sel-down" id="span_group_<!--{$volist.groupid}-->"></span>
  </div>
  <div style="position:relative;display:none;" id="group_<!--{$volist.groupid}-->">
    <div class="buy-slide-up"></div>
  	<div class="buy-vip-spec">
	  <h2>特权：</h2> 
	  <ul>
	    <li>炫亮身份标识</li>
		<!--{if $volist.msg.daysendslimit == '0'}-->
		<li>每天不限免费发信</li>
		<!--{else}-->
		<li>每天免费发<!--{$volist.msg.daysends}-->封信件</li>
		<!--{/if}-->
		<!--{if $volist.msg.dayviewslimit == '0'}-->
		<li>每天不限免费看信</li>
		<!--{else}-->
		<li>每天免费看<!--{$volist.msg.dayviews}-->封信件</li>
		<!--{/if}-->

		<!--{if $volist.view.viewlogintime== '1'}-->
		<li>查看登录时间</li>
		<!--{/if}-->
		<!--{if $volist.msg.msgistop== '1'}-->
		<li>信件置顶</li>
		<!--{/if}-->
		<!--{if $volist.view.useadvsearch== '1'}-->
		<li>条件搜索</li>
		<!--{/if}-->
		<!--{if $volist.view.viewvisitor== '1'}-->
		<li>谁看过我</li>
		<!--{/if}-->
		<!--{if $volist.view.viewmatch== '1'}-->
		<li>缘分速配</li>
		<!--{/if}-->
		<!--{if $volist.view.viewcontact== '1'}-->
		<li>查看联系方式</li>
		<!--{/if}-->
		<!--{if $volist.view.viewcredit== '1'}-->
		<li>诚信查询</li>
		<!--{/if}-->
	  </ul>
	  <div class="clear"></div>
	</div>
	<div class="buy-list">
      <ul>
	    <!--{foreach $volist.commer as $val}-->
	    <li>有效<font color="green"><!--{$val.days}--></font>天，￥<font color="orange"><!--{$val.money}--></font><!--{if $val.postage>0}-->，送<font color="blue"><!--{$val.postage}--></font>张邮票<!--{/if}--> <span onclick="confirmBuy('buyvip', '<!--{$volist.groupid}-->_<!--{$val.orders}-->');">购买</span></li>
	    <!--{/foreach}-->
	  </ul>
    </div>
  </div>
  <!--{/foreach}-->

</div>

<div id="varpop_shade" class="varpop-shade"></div>
<div class="confirm-layout" id="confirm_box" style="display:none;">
  <input type="hidden" name="type" id="type" value="" />
  <h2>信息提示</h2>
  <p>确定要购买该套餐吗？</p>
  <div class="confirm-list">
    <div class="confirm-l" id="btn_cancel">取消</div>
	<div class="confirm-r" id="btn_confirm">确定</div>
	<div class="clear"></div>
  </div>
</div>
<script type="text/javascript">
//切换tab
function changeTab(id) {
	if (document.getElementById(id).style.display == "none") { //展开
		$("#span_"+id).removeClass("sel-down");
		$("#span_"+id).addClass("sel-up");
		$("#"+id).show();
	}
	else { //隐藏
		$("#span_"+id).removeClass("sel-up");
		$("#span_"+id).addClass("sel-down");
		$("#"+id).hide();
	}
}

//购买套餐
function objBuyService() {
	var type = $("#type").val();
	$.ajax({
		type: "POST",
		url: "<!--{$wapfile}-->?c=cp_buy",
		cache: false,
		data: {a:"buyvip", type:type, r:get_rndnum(8)},
		dataType: "json",
		success: function(data) {
			var json = eval(data);
			var response = json.response;
			var result = json.result;
			if (response == '1') {
				ToastShow("购买成功");
				setTimeout(function(){
					window.location.href = "<!--{$wapfile}-->?c=cp";
				}, 800);
			}
			else if (response == '2') {
				ToastShow("帐户余额不足，请先充值。");
				setTimeout(function(){
					goUrl("<!--{$wapfile}-->?c=index&a=payment");
				}, 800);
			}
			else {
				if (result.length > 0) {
					ToastShow(result);
				}
				else {
					ToastShow("购买失败");
				}
			}
		},
		error: function() {
			ToastShow("操作失败，请检查网络状态。");
		}
	});
}

//确认购买
function confirmBuy(a, type) {
	$("#varpop_shade").show();
	tabPopMarginAuto("confirm_box");
	$("#confirm_box").fadeIn(200); //显示
	$("#type").val(type);
}

$(function(){
	$("#btn_cancel").click(function(){ //取消
		$("#varpop_shade").hide();
		$("#confirm_box").fadeOut(200);
	});

	$("#btn_confirm").click(function(){
		$("#varpop_shade").hide();
		$("#confirm_box").fadeOut(200);
		objBuyService();
	});
});
</script>
</body>
</html>
