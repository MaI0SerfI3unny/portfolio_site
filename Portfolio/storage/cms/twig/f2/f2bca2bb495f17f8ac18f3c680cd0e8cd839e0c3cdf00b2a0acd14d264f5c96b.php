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

/* C:\xampp\htdocs\Portfolio/themes/portfolio/pages/clients.htm */
class __TwigTemplate_7a5276869be12fc12a9194c93fc1d2c12f672fb2248d058df64bef4ee7f6d6f7 extends \Twig\Template
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
        $tags = array("partial" => 16);
        $filters = array("escape" => 5, "theme" => 23);
        $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['partial'],
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

  </head>
  <body>
    <main class=\"client\">
    <div class=\"container\">

    <h1 class=\"mt-5 mb-4\">Testimonials</h1>
    <div class=\"slider mb-5 pb-3\">
    <div class=\"slider__wrapper mb-4\">

      ";
        // line 16
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("client_content"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 17
        echo "

    </div>
    <a class=\"slider__control slider__control_left\" href=\"#\" role=\"button\"></a>
    <a class=\"slider__control slider__control_right\" href=\"#\" role=\"button\"></a>

    <script src=\"";
        // line 23
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/js/slider.js");
        echo "\"></script>
    </div>
    </div>
    </main>
  </body>
</html>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/clients.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  94 => 23,  86 => 17,  82 => 16,  68 => 5,  62 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!DOCTYPE html>
<html lang=\"en\" dir=\"ltr\">
  <head>
    <meta charset=\"utf-8\">
    <title>{{ this.page.title  }}</title>

  </head>
  <body>
    <main class=\"client\">
    <div class=\"container\">

    <h1 class=\"mt-5 mb-4\">Testimonials</h1>
    <div class=\"slider mb-5 pb-3\">
    <div class=\"slider__wrapper mb-4\">

      {% partial 'client_content' %}


    </div>
    <a class=\"slider__control slider__control_left\" href=\"#\" role=\"button\"></a>
    <a class=\"slider__control slider__control_right\" href=\"#\" role=\"button\"></a>

    <script src=\"{{ 'assets/js/slider.js' | theme }}\"></script>
    </div>
    </div>
    </main>
  </body>
</html>", "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/clients.htm", "");
    }
}
