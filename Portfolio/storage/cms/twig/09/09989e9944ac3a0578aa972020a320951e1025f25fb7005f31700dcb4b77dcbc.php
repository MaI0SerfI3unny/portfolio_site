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

/* C:\xampp\htdocs\Portfolio/themes/portfolio/partials/header.htm */
class __TwigTemplate_056fabffeefa5a04e284d81c37423843503eaed91cbda1a499cbf872ab26f72b extends \Twig\Template
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
        $filters = array("page" => 16);
        $functions = array();

        try {
            $this->sandbox->checkSecurity(
                [],
                ['page'],
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
        echo "<header>
  <div class=\"container\">
<a href=\"/Portfolio\">
    <h1 class=\"\">
      <span>ZU</span>
      <span>TU</span>
    </h1>
  </a>
    <div class=\"hamburger-menu\">

    <input id=\"menu__toggle\" type=\"checkbox\" />
<label class=\"menu__btn\" for=\"menu__toggle\">
  <span></span>
</label>
    <ul class=\"menu__box\">
      <li><a class=\"menu__item\"  href=\"";
        // line 16
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("home");
        echo "\">Home</a></li>
      <li><a class=\"menu__item\"  href=\"storage\\app\\uploads\\resume.docx\">Resume</a></li>
      <li><a class=\"menu__item\"  href=\"";
        // line 18
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("service");
        echo "\">Service</a></li>
      <li><a class=\"menu__item\"  href=\"";
        // line 19
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("portfolio");
        echo "\">Portfolio</a></li>
      <li><a class=\"menu__item\"  href=\"";
        // line 20
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("clients");
        echo "\">Client</a></li>
      <li><a class=\"menu__item\"  href=\"";
        // line 21
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("contact");
        echo "\">Contact</a></li>
    </ul>
  </div>
</div>
</header>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/partials/header.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  96 => 21,  92 => 20,  88 => 19,  84 => 18,  79 => 16,  62 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<header>
  <div class=\"container\">
<a href=\"/Portfolio\">
    <h1 class=\"\">
      <span>ZU</span>
      <span>TU</span>
    </h1>
  </a>
    <div class=\"hamburger-menu\">

    <input id=\"menu__toggle\" type=\"checkbox\" />
<label class=\"menu__btn\" for=\"menu__toggle\">
  <span></span>
</label>
    <ul class=\"menu__box\">
      <li><a class=\"menu__item\"  href=\"{{ 'home'|page }}\">Home</a></li>
      <li><a class=\"menu__item\"  href=\"storage\\app\\uploads\\resume.docx\">Resume</a></li>
      <li><a class=\"menu__item\"  href=\"{{ 'service'|page }}\">Service</a></li>
      <li><a class=\"menu__item\"  href=\"{{ 'portfolio'|page }}\">Portfolio</a></li>
      <li><a class=\"menu__item\"  href=\"{{ 'clients'|page }}\">Client</a></li>
      <li><a class=\"menu__item\"  href=\"{{ 'contact'|page }}\">Contact</a></li>
    </ul>
  </div>
</div>
</header>", "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/partials/header.htm", "");
    }
}
