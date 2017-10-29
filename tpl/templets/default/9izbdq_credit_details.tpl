  <div class="oe_id_bigboxcn">
    <h3>
	  该会员
	  <!--{if $type == "idcard"}-->
	  身份证号
	  <!--{elseif $type == "mobile"}-->
	  手机号
	  <!--{elseif $type == "email"}-->
	  邮箱
	  <!--{elseif $type == "qq"}-->
	  QQ号
	  <!--{elseif $type == "weixin"}-->
	  微信号
	  <!--{/if}-->
	  举报记录<em style="cursor:pointer;" f="but_close_credit_details">×</em>
	</h3>

    <div class="oe_id_bigcontent">
	  <!--{if empty($details)}-->
	  <p>暂时没有详情信息</p>
	  <!--{else}-->
	  <!--{foreach $details as $volist}-->
	  <ul>
	    <li><span>来源网站：</span><!--{$volist.sitename}--></li>
    	<li><span>举报时间：</span><!--{$volist.addtime|date_format:"%Y-%m-%d %H:%M:%S"}--></li>
    	<li><span>举报原因：</span><!--{$volist.reason|nl2br}--></li>
	  </ul>
	  <!--{/foreach}-->
	  <!--{/if}-->
    </div>

  </div>