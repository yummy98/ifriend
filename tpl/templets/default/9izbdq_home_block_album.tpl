
<!--{assign var='album' value=vo_list("mod={album} where={v.userid='<!--{$home.userid}-->'} num={1000}")}--> 
<!--{if !empty($album)}--> 
<script type="text/javascript" src="<!--{$urlpath}-->tpl/static/js/fancybox/jquery.mousewheel-3.0.4.pack.js"></script> 
<script type="text/javascript" src="<!--{$urlpath}-->tpl/static/js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="<!--{$urlpath}-->tpl/static/js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript">
		$(document).ready(function() {
			$("a[rel=example_group]").fancybox({
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'titlePosition' 	: 'over',
				'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
					return '<span id="fancybox-title-over">[<!--{$home.username}-->] 的相册 ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
				}
			});
		});
		</script>
<div class="articlesec detailsec">
  <div class="titlebar">
    <h1 class="title">相册（<!--{count($album)}-->张）</h1>
  </div>
  <div class="hd">
  <!--{if $login.status=='1'}-->
  <!--{if count($album) >5}-->
    <a class="prev"></a>
    <a class="next"></a>
  <!--{/if}-->
  <!--{/if}-->
  </div>

    <!--{if $config.avatarpermflag=='1' && $login.info.avatarflag!='1'}-->
    <table border="0" cellspacing="10" cellpadding="10" width="98%">
      <tr>
        <td align="center">对不起，您还没上传形象照或未通过审核，无法查看其他会员相册<br />
          <a href="<!--{$urlpath}-->usercp.php?c=avatar">马上设置形象照</a></td>
      </tr>
    </table>
    <!--{else}-->
    <div class="home-album bd">
      <!--{if $login.status=='1'}-->
      <ul>
        <!--{foreach $album as $volist}-->
        <li> <a rel="example_group" href="<!--{$volist.uploadfiles}-->"><img src="<!--{$volist.thumbfiles}-->" alt="<!--{$volist.title}-->" title="<!--{$volist.title}-->" /></a><img class="imgheigt" src="<!--{$skinpath}-->themes/images/l39_height.png" alt="" />
        </li>
        <!--{/foreach}-->
      </ul>
      <!--{else}-->
        <p>对不起，需要登录才可查看会员相册，<a href="###" onclick="artbox_loginbox();">点此登录</a>。</p>
      <!--{/if}-->
      <div style="clear:both;"></div>
    </div>
    <!--{/if}--> 
  <script type="text/javascript">
		jQuery(".articlesec").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:5,trigger:"click"});
  </script>
</div>
<!--{/if}--> 
