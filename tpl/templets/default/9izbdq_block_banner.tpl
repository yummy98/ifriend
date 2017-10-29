<div class="fullSlide"> 
  
  <!--{assign var='zone' value=get_zone('index_slide_banner')}--> 
  <!--{if !empty($zone.ads)}--> 
  <script type="text/javascript" src="<!--{$skinpath}-->themes/js/jquery.jslides.js"></script>
  <div id="full-screen-slider">
    <ul id="slides">
      <!--{foreach $zone.ads as $volist}-->
      <li style="background:url('<!--{$volist.uploadfiles}-->') no-repeat center top"></li>
      <!--{/foreach}-->
    </ul>
  </div>
  <!--{/if}-->
  
  
</div>