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

/* C:\xampp\htdocs\Portfolio/themes/portfolio/pages/service_post.htm */
class __TwigTemplate_4636779acb4c4d67e6ee3715a7b386f004da3e0c4459421ad63d410ca019def6 extends \Twig\Template
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
        $tags = array("for" => 15);
        $filters = array("slice" => 15, "escape" => 16);
        $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['for'],
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
    height: auto;
  }
  .post_content img{
    padding: 25px;
  }

</style>



<div class=\"container post_content pb-4\">
  ";
        // line 15
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_slice($this->env, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "featured_images", [], "any", false, false, true, 15), 0, 1));
        foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
            // line 16
            echo "    <p class=\"text-center\"><img src=\"";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["image"], "path", [], "any", false, false, true, 16), 16, $this->source), "html", null, true);
            echo "\" style=\"width:20%;\" alt=\"\"></p>
  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 18
        echo "  <h1 class=\"mb-4 text-center ml-4\">";
        echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "title", [], "any", false, false, true, 18), 18, $this->source), "html", null, true);
        echo "</h1>
  <p class=\"text-center\">";
        // line 19
        echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "content", [], "any", false, false, true, 19), 19, $this->source), "html", null, true);
        echo "</p>
  <p class=\"ml-4\">";
        // line 20
        echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "published_at", [], "any", false, false, true, 20), 20, $this->source), "html", null, true);
        echo "</p>
</div>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/service_post.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  100 => 20,  96 => 19,  91 => 18,  82 => 16,  78 => 15,  62 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<style media=\"screen\">
  .post_content{
    width: 100%;
    height: auto;
  }
  .post_content img{
    padding: 25px;
  }

</style>



<div class=\"container post_content pb-4\">
  {% for image in post.featured_images|slice(0, 1) %}
    <p class=\"text-center\"><img src=\"{{image.path}}\" style=\"width:20%;\" alt=\"\"></p>
  {% endfor %}
  <h1 class=\"mb-4 text-center ml-4\">{{ post.title }}</h1>
  <p class=\"text-center\">{{ post.content }}</p>
  <p class=\"ml-4\">{{ post.published_at}}</p>
</div>", "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/service_post.htm", "");
    }
}
