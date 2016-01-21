   <div id="pinBoot">
	{foreach from=$entries item="dategroup"}
		{foreach from=$dategroup.entries item="entry"}
		  {assign var="entry" value=$entry scope="parent"}
		<article class="white-panel">
		
		<a href="{$entry.link}"><img class="pict" src="{$entry.properties.ep_largeIMG}" alt="{$entry.properties.ep_largeIMG} image" /></a>
		
		 
		<hr>
			<h4><a class="title" href="{$entry.link}" rel="bookmark">{$entry.title|@default:$entry.id}&raquo;</a> </h4> 
			<p>
				<a  href="{foreach from=$entry.categories item="entry_category"}{$entry_category.category_link}{/foreach}">{foreach from=$entry.categories item="entry_category"}{$entry_category.category_name|@escape}{/foreach}</a> 
			</p>
			<p><small>{$entry.body|strip_tags|truncate:300:" ..."} </small></p>
			<a href="{$entry.link}" class="btn-xs btn-primary btn-product"><span class="fa fa-file-text-o"></span> Details</a>
			{if $entry.is_entry_owner and not $is_preview}&nbsp;&nbsp;<a href="{$entry.link_edit}"  title="{$CONST.EDIT_ENTRY}"><button class=" btn-xs btn-primary btn-product">  {$CONST.EDIT_ENTRY}</button></a>{/if}
		</article>
 		         
    
		{/foreach}
	{/foreach}
 
  </div>
       
        <ul class="pager">
            {if $footer_prev_page}<li class="previous"><a href="{$footer_prev_page}"><i class="fa fa-arrow-left" aria-hidden="true"></i> {$CONST.PREVIOUS_PAGE}</a></li>{/if}
            {if $footer_next_page}<li class="next"><a href="{$footer_next_page}">{$CONST.NEXT_PAGE} <i class="fa fa-arrow-right" aria-hidden="true"></i></a></li>{/if}
        </ul>