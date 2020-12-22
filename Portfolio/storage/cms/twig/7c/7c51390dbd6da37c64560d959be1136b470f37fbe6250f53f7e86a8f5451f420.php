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

/* C:\xampp\htdocs\Portfolio/themes/portfolio/pages/home.htm */
class __TwigTemplate_1cddd694048cbeb57067bcf4d0aaff896fed9d67a70299b7f581d778ca2446df extends \Twig\Template
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
        $tags = array();
        $filters = array("escape" => 5, "theme" => 14, "page" => 27);
        $functions = array();

        try {
            $this->sandbox->checkSecurity(
                [],
                ['escape', 'theme', 'page'],
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


<main class=\"main\">
  <div class=\"container\">
  <div class=\"col-md-6 float-left\">
    <img class=\"person\" src=\"";
        // line 14
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/person.png");
        echo "\" alt=\"\">
  </div>
  <div class=\"col-md-6 float-right\">
    <p>Hi, I’ am</p>
    <h1 class=\"text-uppercase\">ZAMBOO</h1>
    <h2>UI/UX Designer and Web Developer based in USA</h2>
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting and that is
industry. Lorem Ipsum has been the industry's standard dummy text iever since the 1500s, when an unknown

printer took a galley of type and scrambled it to make a type specimen book. remaining essentially unchanged. It was </p>
<div class=\"container\">

    <a href=\".\\storage\\app\\uploads\\resume.docx\"><button class=\"down\" type=\"button\" name=\"button\">Download CV</button></a>
    <a href=\"";
        // line 27
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("contact");
        echo "\"><button class=\"hire\" type=\"button\" name=\"button\">Hire me</button></a>
  </div>
  </div>
</div>

</main>
  </body>
</html>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/home.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  96 => 27,  80 => 14,  68 => 5,  62 => 1,);
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


<main class=\"main\">
  <div class=\"container\">
  <div class=\"col-md-6 float-left\">
    <img class=\"person\" src=\"{{ 'assets/images/person.png' | theme}}\" alt=\"\">
  </div>
  <div class=\"col-md-6 float-right\">
    <p>Hi, I’ am</p>
    <h1 class=\"text-uppercase\">ZAMBOO</h1>
    <h2>UI/UX Designer and Web Developer based in USA</h2>
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting and that is
industry. Lorem Ipsum has been the industry's standard dummy text iever since the 1500s, when an unknown

printer took a galley of type and scrambled it to make a type specimen book. remaining essentially unchanged. It was </p>
<div class=\"container\">

    <a href=\".\\storage\\app\\uploads\\resume.docx\"><button class=\"down\" type=\"button\" name=\"button\">Download CV</button></a>
    <a href=\"{{ 'contact'|page }}\"><button class=\"hire\" type=\"button\" name=\"button\">Hire me</button></a>
  </div>
  </div>
</div>

</main>
  </body>
</html>", "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/home.htm", "");
    }
}
