	  <!--{assign var='likeuser' value=vo_list("mod={spuser} num={9}")}-->
	  <!--{foreach $likeuser as $volist}-->
      <div class="img_list">
	    <a href="<!--{$volist.homeurl}-->"><!--{avatar width='80' height='96' css='h3h' value=$volist.avatarurl}--></a><br />
        <a href="<!--{$volist.homeurl}-->"><!--{$volist.username}--></a><br>
        <!--{$volist.age}-->岁  <!--{area type='text' value=$volist.provinceid}-->
	  </div>
	  <!--{/foreach}-->