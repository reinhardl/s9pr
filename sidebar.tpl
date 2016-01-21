{if $is_raw_mode}
<div id="serendipity{$pluginside}SideBar">
{/if}
{foreach from=$plugindata item=item}
	<section class="  white-sidebar b10pixel ">
    {if $item.title != ""}
    	<h3 class="serendipitySideBarTitle {$item.class} ">{$item.title}</h3>
	{/if}
        <div class="content">
    	{$item.content}
    	</div>
    </section>
{/foreach}
{if $is_raw_mode}
</div>
{/if}
