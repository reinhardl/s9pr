
		<div class="col-sm-12  ">
	    <br/>
			<h3>weitere Artikel mit ähnlichem Inhalt:   </h3>
			 
		</div>  
		<div class="clearfix"> .</div>
 
 
 	        		 									 
					 
 <div id="pinBoot">
	{foreach from=$entry.freetag.related.entries item="feld"}
		<article class="white-panel">
		
		 
		<a href="{$feld.url}" rel="bookmark" title="Permanent link: {$feld.title}"><img class="img-responsive maxPicHeight bo2" src="{$feld.rlbild}" alt="{$feld.title}"></a>
		 
		<hr>
			<h4><a class="title" href="{$feld.url}" rel="bookmark">{$feld.title|@default:$entry.id}&raquo;</a> </h4> 

			<p><small>{{$feld.sub_title}|strip_tags|truncate:300:" ..."} </small></p>
			<a href="{$entry.link}" class="btn-xs btn-primary btn-product"><span class="fa fa-file-text-o"></span> Details</a>
			{if $entry.is_entry_owner and not $is_preview}&nbsp;&nbsp;<a href="{$entry.link_edit}"  title="{$CONST.EDIT_ENTRY}"><button class=" btn-xs btn-primary btn-product">  {$CONST.EDIT_ENTRY}</button></a>{/if}
		</article>
 		         
    {/foreach}
	 
 
  </div>