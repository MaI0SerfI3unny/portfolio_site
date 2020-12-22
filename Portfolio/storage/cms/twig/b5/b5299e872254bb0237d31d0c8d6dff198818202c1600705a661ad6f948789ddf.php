<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* C:\xampp\htdocs\Portfolio/themes/portfolio/layouts/default.htm */
class __TwigTemplate_611959ab40f5bbbd5dfed9a33b238d22c8240699d9e30df55f0d964f6a83862d extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
        $this->sandbox = $this->env->getExtension('\Twig\Extension\SandboxExtension');
        $tags = array("styles" => 12, "framework" => 13, "scripts" => 14, "partial" => 17, "page" => 18);
        $filters = array("escape" => 5, "theme" => 6);
        $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['styles', 'framework', 'scripts', 'partial', 'page'],
                ['escape', 'theme'],
                []
            );
        } catch (SecurityError $e) {
            $e->setSourceContext($this->source);

            if ($e instanceof SecurityNotAllowedTagError && isset($tags[$e->getTagName()])) {
                $e->setTemplateLine($tags[$e->getTagName()]);
            } elseif ($e instanceof SecurityNotAllowedFilterError && isset($filters[$e->getFilterName()])) {
                $e->setTemplateLine($filters[$e->getFilterName()]);
            } elseif ($e instanceof SecurityNotAllowedFunctionError && isset($functions[$e->getFunctionName()])) {
                $e->setTemplateLine($functions[$e->getFunctionName()]);
            }

            throw $e;
        }

    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<!DOCTYPE html>
<html lang=\"en\" dir=\"ltr\">
  <head>
    <meta charset=\"utf-8\">
    <title>";
        // line 5
        echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, true, 5), "title", [], "any", false, false, true, 5), 5, $this->source), "html", null, true);
        echo "</title>
    <link rel=\"stylesheet\" href=\"";
        // line 6
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/style/css/client.css");
        echo "\">
    <link rel=\"stylesheet\" href=\"";
        // line 7
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/style/css/service.css");
        echo "\">
    <link rel=\"stylesheet\" href=\"";
        // line 8
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/style/css/service1.css");
        echo "\">
        <link rel=\"stylesheet\" href=\"";
        // line 9
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/style/css/index_file.css");
        echo "\">
        <link rel=\"stylesheet\" href=\"";
        // line 10
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/style/css/bootstrap.css");
        echo "\">
        <link rel=\"stylesheet\" href=\"";
        // line 11
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/font-awesome-4.7.0/css/font-awesome.min.css");
        echo "\">
        ";
        // line 12
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('css');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('styles');
        // line 13
        echo "        ";
        $_minify = System\Classes\CombineAssets::instance()->useMinify;
        if ($_minify) {
            echo '<script src="' . Request::getBasePath() . '/modules/system/assets/js/framework.combined-min.js"></script>'.PHP_EOL;
        }
        else {
            echo '<script src="' . Request::getBasePath() . '/modules/system/assets/js/framework.js"></script>'.PHP_EOL;
            echo '<script src="' . Request::getBasePath() . '/modules/system/assets/js/framework.extras.js"></script>'.PHP_EOL;
        }
        echo '<link rel="stylesheet" property="stylesheet" href="' . Request::getBasePath() .'/modules/system/assets/css/framework.extras'.($_minify ? '-min' : '').'.css">'.PHP_EOL;
        unset($_minify);
        // line 14
        echo "        ";
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('js');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('scripts');
        // line 15
        echo "  </head>
  <body>
";
        // line 17
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("header"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 18
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFunction();
        // line 19
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('js');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('scripts');
        // line 20
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("footer"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 21
        echo "  </body>
</html>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/layouts/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  132 => 21,  128 => 20,  125 => 19,  123 => 18,  119 => 17,  115 => 15,  111 => 14,  99 => 13,  96 => 12,  92 => 11,  88 => 10,  84 => 9,  80 => 8,  76 => 7,  72 => 6,  68 => 5,  62 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!DOCTYPE html>
<html lang=\"en\" dir=\"ltr\">
  <head>
    <meta charset=\"utf-8\">
    <title>{{ this.page.title  }}</title>
    <link rel=\"stylesheet\" href=\"{{ 'assets/style/css/client.css' | theme }}\">
    <link rel=\"stylesheet\" href=\"{{ 'assets/style/css/service.css' | theme }}\">
    <link rel=\"stylesheet\" href=\"{{ 'assets/style/css/service1.css' | theme }}\">
        <link rel=\"stylesheet\" href=\"{{ 'assets/style/css/index_file.css' | theme }}\">
        <link rel=\"stylesheet\" href=\"{{  'assets/style/css/bootstrap.css' | theme }}\">
        <link rel=\"stylesheet\" href=\"{{  'assets/font-awesome-4.7.0/css/font-awesome.min.css' | theme }}\">
        {% styles %}
        {% framework extras %}
        {% scripts %}
  </head>
  <body>
{% partial 'header' %}
{% page %}
{% scripts %}
{% partial 'footer' %}
  </body>
</html>", "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/layouts/default.htm", "");
    }
}
