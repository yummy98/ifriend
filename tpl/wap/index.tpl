<!--{assign var="menu_id" value="index"}-->
<!--{include file="<!--{$waptpl}-->block_header.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_navbar.tpl"}-->
<!--{include file="<!--{$waptpl}-->block_menu.tpl"}-->

<!--{if $login.status == 1}-->
	<!--{if $login.info.gender == 1}-->
		<!--{assign var='eliteuser' value=vo_list("mod={listuser} type={elite} where={v.avatar='1' AND v.gender='2'} num={6}")}--> 
	<!--{else}-->
		<!--{assign var='eliteuser' value=vo_list("mod={listuser} type={elite} where={v.avatar='1' AND v.gender='1'} num={6}")}--> 
	<!--{/if}-->
<!--{else}-->
<!--{assign var='eliteuser' value=vo_list("mod={listuser} type={elite} where={v.avatar='1'} num={6}")}--> 
<!--{/if}-->
<div class="index-user-list">
  <ul>
	<!--{foreach $eliteuser as $volist}-->
    <!--{if $volist.i == '1'}-->
	<li class="b-li" onclick="userDetail('<!--{$volist.userid}-->');">
	  <img class="b-li-img" src="<!--{$volist.avatarurl}-->" />
	  <p><!--{$volist.username}--> <!--{$volist.age}-->岁</p>
	</li>
	<!--{elseif $volist.i == '2'}-->
	<li class="s-li" style="margin-bottom:10px;" onclick="userDetail('<!--{$volist.userid}-->');">
	  <img class="s-li-img" src="<!--{$volist.avatarurl}-->" />
	  <p><!--{$volist.username}--> <!--{$volist.age}-->岁</p>
	</li>
	<!--{else}-->
	  <!--{if $volist.i == '5'}-->
	  <li class="s-li" style="margin-left:10px;margin-right:10px;" onclick="userDetail('<!--{$volist.userid}-->');">
	    <img class="s-li-img" src="<!--{$volist.avatarurl}-->" />
		<p><!--{$volist.username}--> <!--{$volist.age}-->岁</p>
	  </li>
	  <!--{else}-->
	  <li class="s-li" onclick="userDetail('<!--{$volist.userid}-->');">
	    <img class="s-li-img" src="<!--{$volist.avatarurl}-->" />
		<p><!--{$volist.username}--> <!--{$volist.age}-->岁</p>
	  </li>
	  <!--{/if}-->
	<!--{/if}-->
	<!--{if $volist.i%3 == '0'}-->
    </ul>
    <div class="clear"></div>
    <ul style="margin-top:10px;">
    <!--{/if}-->
	<!--{/foreach}-->
  </ul>
  <div class="clear"></div>  
</div>
<script type="text/javascript">
	//var scWidth = $(window).width();
	scWidth = WIN_WIDTH;
	var tWidth = (scWidth-10); //减去padding的10px
	//平均分三等份
	var onewidth = parseInt((tWidth-30)/3);
	var oneheight = parseInt(onewidth/110*135); //高度按照110x135缩放比例
	//大图的图片大小：+10margin右边和下边的
	var bigimg_width = (onewidth*2+10);
    var bigimg_height = (oneheight*2+10);
	$(".b-li, .b-li-img").css({"width":bigimg_width+"px", "height":bigimg_height+"px"});
	$(".s-li, .s-li-img").css({"width":onewidth+"px", "height":oneheight+"px"});
	//alert("小图："+onewidth+"x"+oneheight+"大图："+bigimg_width+"x"+bigimg_height);
</script>
<!--{include file="<!--{$waptpl}-->block_footer.tpl"}-->
</body>
</html>