<div class="serendipity_Entry_Date freetag_cloud white-sidebar b10pixel">
    <h3 class="xserendipity_date">{$CONST.PLUGIN_EVENT_FREETAG_USING|@sprintf:$freetag_tagTitle}</h3>

    <div class="serendipity_freetag_taglist">
        <p class="serendipity_freetag_taglist_related">{$CONST.PLUGIN_EVENT_FREETAG_RELATED_TAGS}</p>
    
        {if $freetag_hasTags}
            {$freetag_displayTags}
        {else}
            {$CONST.PLUGIN_EVENT_FREETAG_NO_RELATED}
        {/if}
    </div>
</div>