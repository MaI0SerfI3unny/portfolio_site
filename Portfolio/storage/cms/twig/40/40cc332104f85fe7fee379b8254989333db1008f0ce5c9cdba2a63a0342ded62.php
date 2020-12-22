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

/* C:\xampp\htdocs\Portfolio/plugins/saurabhdhariwal/comments/components/comments/default.htm */
class __TwigTemplate_31b62db5d44f75bc17d75e6774a5ff118781420413d782d56ae564ed344eb7ed extends \Twig\Template
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
        $tags = array("set" => 1, "if" => 4, "partial" => 9);
        $filters = array("escape" => 5);
        $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['set', 'if', 'partial'],
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
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "posts", [], "any", false, false, true, 1);
        // line 2
        echo "
<div class=\"col-xs-6\" id=\"comments-content\">
    ";
        // line 4
        if ((twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "count", [], "any", false, false, true, 4) > 0)) {
            // line 5
            echo "        <h3 class=\"text-right\"><span id=\"comments-count\">";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "count", [], "any", false, false, true, 5), 5, $this->source), "html", null, true);
            echo "</span> comments</h3>
    ";
        }
        // line 7
        echo "    ";
        if ((($context["user"] ?? null) || twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "settings", [], "any", false, false, true, 7), "allow_guest", [], "any", false, false, true, 7))) {
            // line 8
            echo "
        ";
            // line 9
            $context['__cms_partial_params'] = [];
            echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("commentsPost::form"            , $context['__cms_partial_params']            , true            );
            unset($context['__cms_partial_params']);
            // line 10
            echo "
    ";
        }
        // line 12
        echo "    <div class=\"comments\">
        <ul>
            ";
        // line 14
        $context['__cms_partial_params'] = [];
        $context['__cms_partial_params']['posts'] = ($context["posts"] ?? null)        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("commentsPost::list"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 15
        echo "        </ul>
    </div>
</div>


";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\Portfolio/plugins/saurabhdhariwal/comments/components/comments/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  99 => 15,  94 => 14,  90 => 12,  86 => 10,  82 => 9,  79 => 8,  76 => 7,  70 => 5,  68 => 4,  64 => 2,  62 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set posts = __SELF__.posts %}

<div class=\"col-xs-6\" id=\"comments-content\">
    {% if(__SELF__.count) > 0 %}
        <h3 class=\"text-right\"><span id=\"comments-count\">{{ __SELF__.count }}</span> comments</h3>
    {% endif %}
    {% if(user or __SELF__.settings.allow_guest) %}

        {% partial \"commentsPost::form\" %}

    {% endif %}
    <div class=\"comments\">
        <ul>
            {% partial \"commentsPost::list\" posts=posts %}
        </ul>
    </div>
</div>


", "C:\\xampp\\htdocs\\Portfolio/plugins/saurabhdhariwal/comments/components/comments/default.htm", "");
    }
}
