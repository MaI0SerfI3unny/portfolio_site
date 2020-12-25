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
        $tags = array("styles" => 16, "partial" => 19, "page" => 21);
        $filters = array("escape" => 5, "theme" => 6);
        $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['styles', 'partial', 'page'],
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
        <script
  src=\"https://code.jquery.com/jquery-3.5.1.js\"
  integrity=\"sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=\"
  crossorigin=\"anonymous\"></script>
        ";
        // line 16
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('css');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('styles');
        // line 17
        echo "  </head>
  <body>
";
        // line 19
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("header"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 20
        echo "
";
        // line 21
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFunction();
        // line 22
        echo "
";
        // line 23
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("footer"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 24
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
        return array (  123 => 24,  119 => 23,  116 => 22,  114 => 21,  111 => 20,  107 => 19,  103 => 17,  100 => 16,  92 => 11,  88 => 10,  84 => 9,  80 => 8,  76 => 7,  72 => 6,  68 => 5,  62 => 1,);
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
        <script
  src=\"https://code.jquery.com/jquery-3.5.1.js\"
  integrity=\"sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=\"
  crossorigin=\"anonymous\"></script>
        {% styles %}
  </head>
  <body>
{% partial 'header' %}

{% page %}

{% partial 'footer' %}
  </body>
</html>", "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/layouts/default.htm", "");
    }
}
