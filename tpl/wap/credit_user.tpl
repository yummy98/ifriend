<!--{if !empty($homeuser)}-->
<ul>
  <li>
    <em class="em_1">身份证：</em>
    <label id="id_credit_idcard">
	  <!--{if empty($homeuser.idnumber)}-->
	  --
	  <!--{else}-->
		<script type="text/javascript">
		$(function(){
			_oeCreditGet("idcard", "<!--{$homeuser.userid}-->");
		});
		</script>
	  <!--{/if}-->
    </label>
  </li>
  <li>
    <em class="em_1">手机号：</em> 
    <label id="id_credit_mobile">
	  <!--{if empty($homeuser.mobile)}-->
	  --
	  <!--{else}-->
	    <script type="text/javascript">
		$(function(){
			_oeCreditGet("mobile", "<!--{$homeuser.userid}-->");
		});
		</script>
	  <!--{/if}-->
	</label>
  </li>
  <li>
    <em class="em_1">QQ号：</em> 
    <label id="id_credit_qq">
	  <!--{if empty($homeuser.qq)}-->
	  --
	  <!--{else}-->
	    <script type="text/javascript">
		$(function(){
			_oeCreditGet("qq", "<!--{$homeuser.userid}-->");
		});
		</script>
	  <!--{/if}-->
	</label>
  </li>
  <li>
    <em class="em_1">邮&#12288;箱：</em> 
    <label id="id_credit_email">
	  <!--{if empty($homeuser.email)}-->
	  --
	  <!--{else}-->
		<script type="text/javascript">
		$(function(){
			_oeCreditGet("email", "<!--{$homeuser.userid}-->");
		});
		</script>
	  <!--{/if}-->
	</label>
  </li>
  <li>
    <em class="em_1">微信号：</em> 
    <label id="id_credit_weixin">
	  <!--{if empty($homeuser.weixin)}-->
	  --
	  <!--{else}-->
		<script type="text/javascript">
		$(function(){
			_oeCreditGet("weixin", "<!--{$homeuser.userid}-->");
		});
		</script>
	  <!--{/if}-->
	</label>
  </li>
</ul>
<!--{/if}-->