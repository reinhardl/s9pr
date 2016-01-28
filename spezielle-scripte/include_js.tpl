

{* this side use cookie info *}
{if $template_option.display_cookies=="1"}
  <script src="{$serendipityBaseURL}templates/{$template}/js/bootstrap-cookie-consent.js"></script> 
  {/if}
 {if $template_option.display_cookies==""}
  false
  {/if} 
{* --------- *} 



{* feedback jqery *}
{if $currpage=="http://110.in/news/feedback.html"}

<script src="//cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
<script src={serendipity_getFile file="spezielle-scripte/site.js"}></script>
  {/if} 
{* -------------- *}