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

/* C:\xampp\htdocs\Portfolio/themes/portfolio/partials/footer.htm */
class __TwigTemplate_b3ad90de54e8247bd5656d792ad829ee077b56e4be04a3c0284702a341106f26 extends \Twig\Template
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
        $filters = array();
        $functions = array();

        try {
            $this->sandbox->checkSecurity(
                [],
                [],
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
        echo "<footer>
<div class=\"container\">
  <a href=\"#\"><label for=\"\">
    <i class=\"fa fa-facebook\" aria-hidden=\"true\"></i>
  </label></a>
  <a href=\"https://www.instagram.com/?hl=ru\"><label for=\"\">
    <i class=\"fa fa-instagram\" aria-hidden=\"true\"></i>
  </label></a>
  <a href=\"https://twitter.com/?lang=ru\"><label for=\"\">
    <i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>
  </label></a>
<a href=\"https://www.behance.net/\"><label for=\"\">
  <i class=\"fa fa-behance\" aria-hidden=\"true\"></i>
</label></a>
</div>
</footer>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/partials/footer.htm";
    }

    public function getDebugInfo()
    {
        return array (  62 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<footer>
<div class=\"container\">
  <a href=\"#\"><label for=\"\">
    <i class=\"fa fa-facebook\" aria-hidden=\"true\"></i>
  </label></a>
  <a href=\"https://www.instagram.com/?hl=ru\"><label for=\"\">
    <i class=\"fa fa-instagram\" aria-hidden=\"true\"></i>
  </label></a>
  <a href=\"https://twitter.com/?lang=ru\"><label for=\"\">
    <i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>
  </label></a>
<a href=\"https://www.behance.net/\"><label for=\"\">
  <i class=\"fa fa-behance\" aria-hidden=\"true\"></i>
</label></a>
</div>
</footer>", "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/partials/footer.htm", "");
    }
}
