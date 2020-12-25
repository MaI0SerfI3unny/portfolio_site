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

/* C:\xampp\htdocs\Portfolio/themes/portfolio/pages/service.htm */
class __TwigTemplate_890d4a4b34a42631995efb86a14411c971f2c86c207170248483462c47674d9c extends \Twig\Template
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
        $tags = array("set" => 14, "for" => 15);
        $filters = array("escape" => 5, "slice" => 19);
        $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['set', 'for'],
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
    <main class=\"service\">
      <div class=\"container\">
        <h1 class=\"mb-5\">Service</h1>
        <div class=\"row justify-content-center\">

        ";
        // line 14
        $context["posts3"] = twig_get_attribute($this->env, $this->source, ($context["blogPosts"] ?? null), "posts", [], "any", false, false, true, 14);
        // line 15
        echo "        ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 16
            echo "
          <div class=\"col-md-4 p-4 m-1\">
            <a href=\"";
            // line 18
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, true, 18), 18, $this->source), "html", null, true);
            echo "\">
            ";
            // line 19
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_slice($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "featured_images", [], "any", false, false, true, 19), 0, 1));
            foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                // line 20
                echo "            <p class=\"text-center\"><img src=\"";
                echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["image"], "path", [], "any", false, false, true, 20), 20, $this->source), "html", null, true);
                echo "\" alt=\"\"></p>
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 22
            echo "              <h3 class=\"text-center\">";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, true, 22), 22, $this->source), "html", null, true);
            echo "</h3>
              <p class=\"text-center\">";
            // line 23
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "excerpt", [], "any", false, false, true, 23), 23, $this->source), "html", null, true);
            echo "</p>
            </a>
          </div>
          ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 27
        echo "

        </div>
      </div>
    </main>

  </body>
</html>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/service.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  123 => 27,  113 => 23,  108 => 22,  99 => 20,  95 => 19,  91 => 18,  87 => 16,  82 => 15,  80 => 14,  68 => 5,  62 => 1,);
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
    <main class=\"service\">
      <div class=\"container\">
        <h1 class=\"mb-5\">Service</h1>
        <div class=\"row justify-content-center\">

        {% set posts3 = blogPosts.posts  %}
        {% for post in posts %}

          <div class=\"col-md-4 p-4 m-1\">
            <a href=\"{{ post.url }}\">
            {% for image in post.featured_images|slice(0, 1) %}
            <p class=\"text-center\"><img src=\"{{ image.path}}\" alt=\"\"></p>
            {% endfor %}
              <h3 class=\"text-center\">{{ post.title }}</h3>
              <p class=\"text-center\">{{ post.excerpt }}</p>
            </a>
          </div>
          {% endfor %}


        </div>
      </div>
    </main>

  </body>
</html>", "C:\\xampp\\htdocs\\Portfolio/themes/portfolio/pages/service.htm", "");
    }
}
