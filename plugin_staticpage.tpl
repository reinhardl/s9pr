<article id="page_{$staticpage_pagetitle|makeFilename}" class="page white-sidebar b10pixel">
    <h2>{if $staticpage_articleformat}{if $staticpage_articleformattitle}{$staticpage_articleformattitle|escape}{else}{$staticpage_pagetitle}{/if}{else}{if $staticpage_headline}{$staticpage_headline|escape}{else}{$staticpage_pagetitle}{/if}{/if}</h2>
{if is_array($staticpage_childpages)}
    <ul class="child_pages">
    {foreach from=$staticpage_childpages item="childpage"}
        <li><a href="{$childpage.permalink|escape}" title="{$childpage.pagetitle|escape}">{$childpage.pagetitle|escape}</a></li>
    {/foreach}
    </ul>
{/if}
{if $staticpage_pass AND $staticpage_form_pass != $staticpage_pass}
    <form class="staticpage_password_form" action="{$staticpage_form_url}" method="post">
    <fieldset>
        <legend>{$CONST.STATICPAGE_PASSWORD_NOTICE}</legend>
        <input name="serendipity[pass]" type="password" value="">
        <input name="submit" type="submit" value="{$CONST.GO}" >
    </fieldset>
    </form>
{else}
    {if $staticpage_precontent}
    <div class="content preface">
    {$staticpage_precontent}
    </div>
    {/if}
    {if $staticpage_content}
    <div class="content">
    {$staticpage_content}
    </div>
    {/if}
{/if}
{if $staticpage_author or $staticpage_lastchange}
    <footer class="page_info">
        <small>
        {if $staticpage_author}
            <span>{$CONST.POSTED_BY} {$staticpage_author|escape}</span>
        {/if}
        {if $staticpage_lastchange}
            <span>{$CONST.ON} <time datetime="{$staticpage_lastchange|serendipity_html5time}">{$staticpage_lastchange|date_format:$template_option.date_format}</time></span>
        {/if}
        </small>
    </footer>
{/if}

  {if $staticpage_custom.show_author =='true' || $staticpage_custom.show_date =='true' || ($staticpage_adminlink && $staticpage_adminlink.page_user)}
        <footer class="staticpage-footer">
            <p class="post-meta">
                {if $staticpage_adminlink AND $staticpage_adminlink.page_user}{if $staticpage_custom.show_author =='true' || $staticpage_custom.show_date =='true'}{/if}<a href="{$staticpage_adminlink.link_edit}"  title="{$staticpage_adminlink.link_name|@escape}"><button class="btn btn-sm btn-default"><i class="fa fa-lg fa-edit"></i><span class="sr-only">{$staticpage_adminlink.link_name|@escape}</span></button></a>{/if}           
                
            </p>
        </footer>
    {/if}
</article>
