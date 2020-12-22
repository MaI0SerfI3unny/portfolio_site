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

/* C:\xampp\htdocs\Portfolio/themes/portfolio/pages/post.htm */
class __TwigTemplate_365e76204d164480e73b7f5f07aca4e25a95de2489f61451343379d5fcdd8c39 extends \Twig\Template
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
        $tags = array("for" => 14, "component" => 23);
        $filters = array("slice" => 14, "escape" => 15);
        $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['for', 'component'],
                ['slice', 'escape'],
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
  .post_content{
    width: 100%;
    background-color: #382c2c;
    height: auto;
  }
  .post_content img{
    padding: 25px;
  }

</style>

<div class=\"container post_content pb-4\">
  ";
        // line 14
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_slice($this->env, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "featured_images", [], "any", false, false, true, 14), 0, 1));
        foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
            // line 15
            echo "    <p class=\"text-center\"><img src=\"";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["image"], "path", [], "any", false, false, true, 15), 15, $this->source), "html", null, true);
            echo "\" style=\"width:100%;\" alt=\"\"></p>
  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 17
        echo "  <h1 class=\"mb-4 text-white ml-4\">";
        echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "title", [], "any", false, false, true, 17), 17, $this->source), "html", null, true);
        echo "</h1>
  <p class=\"text-white ml-4\">";
        // line 18
        echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "content", [], "any", false, false, true, 18), 18, $this->source), "html", null, true);
        echo "</p>
  <p class=\"text-white ml-4\">";
        // line 19
        echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "published_at", [], "any", false, false, true, 19), 19, $this->source), "html", null, true);
        echo "</p>
</div>

<div class=\"container\">
  ";
        // line 23
        $context['__cms_component_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->componentFunction("commentsPost"        , $context['__cms_component_params']        );
        unset($context['__cms_component_params']);
        // line 24
        echo "</div>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/post.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  110 => 24,  106 => 23,  99 => 19,  95 => 18,  90 => 17,  81 => 15,  77 => 14,  62 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<style media=\"screen\">
  .post_content{
    width: 100%;
    background-color: #382c2c;
    height: auto;
  }
  .post_content img{
    padding: 25px;
  }

</style>

<div class=\"container post_content pb-4\">
  {% for image in post.featured_images|slice(0, 1) %}
    <p class=\"text-center\"><img src=\"{{image.path}}\" style=\"width:100%;\" alt=\"\"></p>
  {% endfor %}
  <h1 class=\"mb-4 text-white ml-4\">{{ post.title }}</h1>
  <p class=\"text-white ml-4\">{{ post.content }}</p>
  <p class=\"text-white ml-4\">{{ post.published_at}}</p>
</div>

<div class=\"container\">
  {% component'commentsPost' %}
</div>", "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/post.htm", "");
    }
}
