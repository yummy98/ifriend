<!--{include file="<!--{$tplpath}--><!--{$tplpre}-->block_top.tpl"}-->
<div id="header">
  <div class="n_top">
    <div class="nn_top">
      <div class="n_logo"> <a href="<!--{$urlpath}-->index.php"><img src="<!--{$config.logo}-->"  alt="<!--{$config.sitename}-->" /></a> </div>
      <div class="oe_menu">
        <ul>
          <li<!--{if $menuid=='index'}--> class='current first'<!--{/if}-->><a href="<!--{$urlpath}-->">交友首页</a>
          </li>
          <li<!--{if $menuid=='user'}--> class='current'<!--{/if}-->> 
          <!--{if $login.status == '1'}--> 
          <!--{if $login.info.gender == '1'}--> 
          <!--{assign var='yx_sex' value='2'}--> 
          <!--{elseif $login.info.gender == '2'}--> 
          <!--{assign var='yx_sex' value='1'}--> 
          <!--{else}--> 
          <!--{assign var='yx_sex' value='0'}--> 
          <!--{/if}--> 
          <a href="<!--{$urlpath}-->index.php?c=user&s_sex=<!--{$yx_sex}-->&s_dist1=<!--{$login.info.provinceid}-->&s_dist2=<!--{$login.info.cityid}-->">同城异性</a> 
          <!--{else}--> 
          <a href="<!--{$urlpath}-->index.php?c=user">同城异性</a> 
          <!--{/if}-->
          </li>
          <li<!--{if $menuid=='online'}--> class='current'<!--{/if}-->><a href="<!--{$urlpath}-->index.php?c=online">在线会员</a>
          </li>
          
          <li<!--{if $menuid=='diary'}--> class='current'<!--{/if}-->><a href="<!--{$urlpath}-->index.php?c=diary">心情日记</a>
          </li>
          <li<!--{if $menuid=='advsearch'}--> class='current'<!--{/if}-->><a href="<!--{$urlpath}-->index.php?c=user&a=advsearch">高级搜索</a>
          </li>
          <li<!--{if $menuid=='blackuser'}--> class='current'<!--{/if}-->><a href="<!--{$urlpath}-->index.php?c=blackuser">黑名单</a>
          </li>
          <!--{if $login.status == '0'}-->
          <li><a href="javascript:;" onclick="artbox_loginbox();">举报/投诉</a></li>
          <!--{else}-->
          <li><a href="javascript:;" onclick="artbox_complaint('0');">举报/投诉</a></li>
          <!--{/if}-->
          
          <li<!--{if $menuid=='usercp'}--> class='current'<!--{/if}-->><a href="<!--{$urlpath}-->usercp.php">会员中心</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>