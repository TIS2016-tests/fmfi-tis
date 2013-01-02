<!DOCTYPE html>
<html>
<head>
    <title>Inštalácia aplikácie {block name="title"}{/block}</title>
    <meta charset="utf-8" />
    <link type="text/css" media="screen,print" rel="stylesheet" href="{$site_base_url}public/css/smoothness/jquery-ui.css" />
	<link type="text/css" media="screen,print" rel="stylesheet" href="{$site_base_url}public/css/admin_style.css" />
    <link rel="stylesheet" type="text/css" href="{$site_base_url}public/css/fancybox/jquery.fancybox.css" media="screen" />
    {foreach $additional_css_files as $css_file nocache}<link type="text/css" media="{$css_file->media}" rel="stylesheet" href="{$css_file->href}" />{/foreach}
    <script type="text/javascript" src="{$site_base_url nocache}public/js/jquery.js"></script>
    <script type="text/javascript" src="{$site_base_url nocache}public/js/jquery-ui.js"></script>
    <script type="text/javascript" src="{$site_base_url nocache}public/js/jquery.mousewheel.pack.js"></script>
    <script type="text/javascript" src="{$site_base_url nocache}public/js/jquery.fancybox.pack.js"></script>
    {foreach $additional_js_files as $js_file nocache}<script type="text/javascript" src="{$js_file->src}"></script>{/foreach}
</head>
{function name='steps' current_step=null}
<ul id="installationSteps">
{foreach $steps as $step}
<li class="step{if $current_step eq $step@key} current{/if}">{$step|escape:'html'}</li>
{if !$step@last}<li class="arrow">&gt;&gt;</li>{/if}
{/foreach}
</ul>
{/function}
<body>
<h1>I N Š T A L Á C I A</h1>
{steps steps=$steps current_step=$current_step}
<div id="installationWrap">
    <fieldset id="installationFieldset">
        <legend id="installationLegend">{$legend|default:'< Popis nezadaný >'|escape:'html'}</legend>
        {include file='partials/admin.flash_message.tpl'}
        {block name="content"}
        {/block}
    </fieldset>
</div>
</body>
</html>