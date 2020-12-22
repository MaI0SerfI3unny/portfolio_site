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

/* C:\xampp\htdocs\Portfolio/themes/portfolio/partials/genericform/default.htm */
class __TwigTemplate_14ff6e0d0764a31140fdd72f6caf3bbb86ab60ed1ec52d198378ab82ce29c884 extends \Twig\Template
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
        $tags = array("partial" => 10);
        $filters = array("escape" => 3);
        $functions = array("form_token" => 2);

        try {
            $this->sandbox->checkSecurity(
                ['partial'],
                ['escape'],
                ['form_token']
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
        echo "<div class=\"col-md-5 mr-5\">
  ";
        // line 2
        echo call_user_func_array($this->env->getFunction('form_token')->getCallable(), ["token"]);
        echo "
  <form  data-request=\"";
        // line 3
        echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(($context["__SELF__"] ?? null), 3, $this->source), "html", null, true);
        echo "::onFormSubmit\" method=\"get\">
    <input type=\"text\" id=\"name\" name=\"name\" class=\"form-control mt-3\" placeholder=\"Your Name...\">

    <input class=\"mt-3\" type=\"text\" id=\"email\" name=\"email\" placeholder=\"Your Email...\">
    <input class=\"mt-3\" id=\"subject\" name=\"subject\" placeholder=\"Your Business Name...\">
    <textarea class=\"mt-3\"  id=\"comments\" name=\"comments\" placeholder=\"Write Your Message...\" rows=\"8\" cols=\"80\"></textarea>
    <div class=\"form-group\">
      ";
        // line 10
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("@recaptcha"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 11
        echo "    </div>
    <button class=\"mt-2\" id=\"simpleContactSubmitButton\" type=\"submit\" name=\"button\">Submit</button>
  </form>
</div>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/partials/genericform/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  83 => 11,  79 => 10,  69 => 3,  65 => 2,  62 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"col-md-5 mr-5\">
  {{ form_token() }}
  <form  data-request=\"{{ __SELF__ }}::onFormSubmit\" method=\"get\">
    <input type=\"text\" id=\"name\" name=\"name\" class=\"form-control mt-3\" placeholder=\"Your Name...\">

    <input class=\"mt-3\" type=\"text\" id=\"email\" name=\"email\" placeholder=\"Your Email...\">
    <input class=\"mt-3\" id=\"subject\" name=\"subject\" placeholder=\"Your Business Name...\">
    <textarea class=\"mt-3\"  id=\"comments\" name=\"comments\" placeholder=\"Write Your Message...\" rows=\"8\" cols=\"80\"></textarea>
    <div class=\"form-group\">
      {% partial '@recaptcha' %}
    </div>
    <button class=\"mt-2\" id=\"simpleContactSubmitButton\" type=\"submit\" name=\"button\">Submit</button>
  </form>
</div>", "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/partials/genericform/default.htm", "");
    }
}
