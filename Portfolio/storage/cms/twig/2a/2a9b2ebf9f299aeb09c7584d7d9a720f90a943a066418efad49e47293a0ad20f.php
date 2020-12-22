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

/* C:\xampp\htdocs\Portfolio/themes/portfolio/partials/portfolio_content.htm */
class __TwigTemplate_fc9d9d4f32e24075cb403b07b5179072f6aa4ea1d7da0e8ad22a38fa8d8c4192 extends \Twig\Template
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
        $tags = array("set" => 24, "for" => 26, "component" => 42);
        $filters = array("escape" => 28, "slice" => 29);
        $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['set', 'for', 'component'],
                ['escape', 'slice'],
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
        echo "<style media=\"screen\">
  .container .col-md-3{
    z-index: 1;
    border: 1px solid black;
    background-color: #382c2c;
    height: 350px;
    padding: 0;
    max-height: 350px;
    min-height: 350px;
  }
  .container .col-md-3:hover{
    transition: 0.6s;
    z-index: 2;
    min-width: 300px;
    min-height: 350px;
    box-shadow: 10px 10px;
  }

  .time{
    font-size: 12px;
  }
</style>

";
        // line 24
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["blogPosts"] ?? null), "posts", [], "any", false, false, true, 24);
        // line 25
        echo "
";
        // line 26
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        $context['_iterated'] = false;
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 27
            echo "<div class=\"col-md-3\">
  <a href=\"";
            // line 28
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, true, 28), 28, $this->source), "html", null, true);
            echo "\">
";
            // line 29
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_slice($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "featured_images", [], "any", false, false, true, 29), 0, 1));
            foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                // line 30
                echo "  <img src=\"";
                echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["image"], "path", [], "any", false, false, true, 30), 30, $this->source), "html", null, true);
                echo "\" style=\"width:100%;\" alt=\"\">
";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 32
            echo "  <h3 class=\"text-white ml-2\">";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, true, 32), 32, $this->source), "html", null, true);
            echo "</h3>
  <p class=\"text-white ml-2\">";
            // line 33
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "content", [], "any", false, false, true, 33), 33, $this->source), "html", null, true);
            echo "</p>
  <p class=\"text-white ml-2 time\">";
            // line 34
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "published_at", [], "any", false, false, true, 34), 34, $this->source), "html", null, true);
            echo "</p>
  </a>
</div>
";
            $context['_iterated'] = true;
        }
        if (!$context['_iterated']) {
            // line 38
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(($context["noPostsMessage"] ?? null), 38, $this->source), "html", null, true);
            echo "
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 40
        echo "
<div class=\"container\">
  ";
        // line 42
        $context['__cms_component_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->componentFunction("commentsPost"        , $context['__cms_component_params']        );
        unset($context['__cms_component_params']);
        // line 43
        echo "</div>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/partials/portfolio_content.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  151 => 43,  147 => 42,  143 => 40,  135 => 38,  126 => 34,  122 => 33,  117 => 32,  108 => 30,  104 => 29,  100 => 28,  97 => 27,  92 => 26,  89 => 25,  87 => 24,  62 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<style media=\"screen\">
  .container .col-md-3{
    z-index: 1;
    border: 1px solid black;
    background-color: #382c2c;
    height: 350px;
    padding: 0;
    max-height: 350px;
    min-height: 350px;
  }
  .container .col-md-3:hover{
    transition: 0.6s;
    z-index: 2;
    min-width: 300px;
    min-height: 350px;
    box-shadow: 10px 10px;
  }

  .time{
    font-size: 12px;
  }
</style>

{% set posts = blogPosts.posts  %}

{% for post in posts %}
<div class=\"col-md-3\">
  <a href=\"{{ post.url }}\">
{% for image in post.featured_images|slice(0, 1) %}
  <img src=\"{{image.path}}\" style=\"width:100%;\" alt=\"\">
{% endfor %}
  <h3 class=\"text-white ml-2\">{{ post.title }}</h3>
  <p class=\"text-white ml-2\">{{ post.content}}</p>
  <p class=\"text-white ml-2 time\">{{ post.published_at}}</p>
  </a>
</div>
{% else %}
{{ noPostsMessage }}
{% endfor %}

<div class=\"container\">
  {% component 'commentsPost' %}
</div>", "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/partials/portfolio_content.htm", "");
    }
}
