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

/* C:\xampp\htdocs\Portfolio/plugins/martin/forms/components/partials/recaptcha.htm */
class __TwigTemplate_99e48cfcd77835a4518556ed0c63919f30bf0fce629bb07c8d2506b5bd5e1b3a extends \Twig\Template
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
        $tags = array("if" => 1);
        $filters = array("escape" => 2);
        $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['if'],
                ['escape'],
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
        if (($context["recaptcha_enabled"] ?? null)) {
            // line 2
            echo "    <div id=\"";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(($context["__SELF__"] ?? null), 2, $this->source), "html", null, true);
            echo "\" class=\"g-recaptcha\" data-sitekey=\"";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "settings", [], "any", false, false, true, 2), "recaptcha_site_key", [], "any", false, false, true, 2), 2, $this->source), "html", null, true);
            echo "\" data-theme=\"";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "property", [0 => "recaptcha_theme"], "method", false, false, true, 2), 2, $this->source), "html", null, true);
            echo "\" data-type=\"";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "property", [0 => "recaptcha_type"], "method", false, false, true, 2), 2, $this->source), "html", null, true);
            echo "\" data-size=\"";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "property", [0 => "recaptcha_size"], "method", false, false, true, 2), 2, $this->source), "html", null, true);
            echo "\"></div>
";
        } elseif (        // line 3
($context["recaptcha_misconfigured"] ?? null)) {
            // line 4
            echo "    <h5>";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(($context["recaptcha_warn"] ?? null), 4, $this->source), "html", null, true);
            echo "</h5>
";
        }
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\Portfolio/plugins/martin/forms/components/partials/recaptcha.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  79 => 4,  77 => 3,  64 => 2,  62 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% if (recaptcha_enabled) %}
    <div id=\"{{ __SELF__ }}\" class=\"g-recaptcha\" data-sitekey=\"{{ __SELF__.settings.recaptcha_site_key }}\" data-theme=\"{{ __SELF__.property('recaptcha_theme') }}\" data-type=\"{{ __SELF__.property('recaptcha_type') }}\" data-size=\"{{ __SELF__.property('recaptcha_size') }}\"></div>
{% elseif (recaptcha_misconfigured) %}
    <h5>{{ recaptcha_warn }}</h5>
{% endif %}", "C:\\xampp\\htdocs\\Portfolio/plugins/martin/forms/components/partials/recaptcha.htm", "");
    }
}
