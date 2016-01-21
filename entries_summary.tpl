{serendipity_hookPlugin hook="entries_header"}
{counter start=0 assign='entry_count'}
{foreach from=$entries item="countme"}
    {foreach from=$countme.entries item="entry"}
        {counter assign='entry_count'}
    {/foreach}
{/foreach}

<article class="archive-summary  white-sidebar t10pixel">
    <h3>{if $category}{$category_info.category_name} - {/if}{$entry_count} {$CONST.TOPICS_OF} {$dateRange.0|@formatTime:"%B, %Y"}</h3>
    <ul  >
    {foreach from=$entries item="sentries"}
        {foreach from=$sentries.entries item="entry"}
        <li><h4><a href="{$entry.link}">{$entry.title}</a></h4>
             <p class="post-meta">{$CONST.POSTED_BY} <a href="{$entry.link_author}">{$entry.author}</a> {$CONST.ON} <time datetime="{$entry.timestamp|@serendipity_html5time}">{$entry.timestamp|@formatTime:$template_option.date_format}</time></p>
        </li>
        {/foreach}
    {/foreach}
    </ul>
</article>
{serendipity_hookPlugin hook="entries_footer"}