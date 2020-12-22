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

/* C:\xampp\htdocs\Portfolio/themes/portfolio/pages/contact.htm */
class __TwigTemplate_7a2045250323eb7b3aee85954b1aa6418a278f9ba87ed0901e3b2fd9b9847129 extends \Twig\Template
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
        $tags = array("component" => 13);
        $filters = array("escape" => 5, "theme" => 37);
        $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['component'],
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
    <main class=\"contact\">
      <div class=\"container\">
        <h1 class=\"\">Contact us</h1>
        <div class=\"row\">
          ";
        // line 13
        $context['__cms_component_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->componentFunction("genericForm"        , $context['__cms_component_params']        );
        unset($context['__cms_component_params']);
        // line 14
        echo "      
          <div class=\"col-md-5 cardk text-center\">
            <h3>Zamboo</h3>
            <p class=\"mb-3\">UI/UX Designer Developer</p>
            <h4>Lets Work Together</h4>
            <div class=\"row justify-content-center\">
              <a href=\"https://mail.google.com/\"><label for=\"\">
                <i class=\"fa fa-envelope-open\" aria-hidden=\"true\"></i>
              </label></a>
              <a href=\"https://www.skype.com/ru/\"><label for=\"\">
                <i class=\"fa fa-skype\" aria-hidden=\"true\"></i>
              </label></a>
              <a href=\"https://ru.stackoverflow.com/\"><label for=\"\">
                <i class=\"fa fa-stack-overflow\" aria-hidden=\"true\"></i>
              </label></a>
            </div>
          </div>
        </div>
      </div>
      <div class=\"address mt-5\">
        <div class=\"container\">
          <div class=\"row\">
            <div class=\"col-md-4 pt-3 pb-3\">
              <img class=\"mt-2\" src=\"";
        // line 37
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/icon3.png");
        echo "\" alt=\"\">
              <h4>Email</h4>
              <p>abc123@gmail.com
                <br>xyz987@gmail.com</p>
              </div>
              <div class=\"col-md-4 pt-3 pb-3\">
                <img class=\"mt-2\" src=\"";
        // line 43
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/icon2.png");
        echo "\" alt=\"\">
                <h4>Email</h4>
                <p>
                  +1234 159 8903 22<br>
                  +0321 2369 5897 11 </p>
                </div>
                <div class=\"col-md-4 pt-3 pb-3\">
                  <img class=\"mt-2\" src=\"";
        // line 50
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/icon1.png");
        echo "\" alt=\"\">
                  <h4>Email</h4>
                  <p>
                    123/a san freedom Road<br>
                    New yourk city</p>
                  </div>
                </div>
              </div>
            </div>
          </main>
  </body>
</html>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/contact.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  127 => 50,  117 => 43,  108 => 37,  83 => 14,  79 => 13,  68 => 5,  62 => 1,);
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
    <main class=\"contact\">
      <div class=\"container\">
        <h1 class=\"\">Contact us</h1>
        <div class=\"row\">
          {% component'genericForm' %}
      
          <div class=\"col-md-5 cardk text-center\">
            <h3>Zamboo</h3>
            <p class=\"mb-3\">UI/UX Designer Developer</p>
            <h4>Lets Work Together</h4>
            <div class=\"row justify-content-center\">
              <a href=\"https://mail.google.com/\"><label for=\"\">
                <i class=\"fa fa-envelope-open\" aria-hidden=\"true\"></i>
              </label></a>
              <a href=\"https://www.skype.com/ru/\"><label for=\"\">
                <i class=\"fa fa-skype\" aria-hidden=\"true\"></i>
              </label></a>
              <a href=\"https://ru.stackoverflow.com/\"><label for=\"\">
                <i class=\"fa fa-stack-overflow\" aria-hidden=\"true\"></i>
              </label></a>
            </div>
          </div>
        </div>
      </div>
      <div class=\"address mt-5\">
        <div class=\"container\">
          <div class=\"row\">
            <div class=\"col-md-4 pt-3 pb-3\">
              <img class=\"mt-2\" src=\"{{ 'assets/images/icon3.png' | theme }}\" alt=\"\">
              <h4>Email</h4>
              <p>abc123@gmail.com
                <br>xyz987@gmail.com</p>
              </div>
              <div class=\"col-md-4 pt-3 pb-3\">
                <img class=\"mt-2\" src=\"{{ 'assets/images/icon2.png' | theme }}\" alt=\"\">
                <h4>Email</h4>
                <p>
                  +1234 159 8903 22<br>
                  +0321 2369 5897 11 </p>
                </div>
                <div class=\"col-md-4 pt-3 pb-3\">
                  <img class=\"mt-2\" src=\"{{ 'assets/images/icon1.png' | theme }}\" alt=\"\">
                  <h4>Email</h4>
                  <p>
                    123/a san freedom Road<br>
                    New yourk city</p>
                  </div>
                </div>
              </div>
            </div>
          </main>
  </body>
</html>", "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/contact.htm", "");
    }
}
