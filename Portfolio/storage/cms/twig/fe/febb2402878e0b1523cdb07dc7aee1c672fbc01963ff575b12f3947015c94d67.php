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

/* C:\xampp\htdocs\Portfolio/plugins/saurabhdhariwal/comments/components/comments/list.htm */
class __TwigTemplate_495a31a43e8f9ca5a790d9f536a70cded78e745d3bbcf55e5035d3b5199be6f3 extends \Twig\Template
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
        $tags = array("for" => 1, "if" => 22, "partial" => 24);
        $filters = array("escape" => 3, "raw" => 5);
        $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['for', 'if', 'partial'],
                ['escape', 'raw'],
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
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 2
            echo "<li>
    <div class=\"comment\" id=\"comment-";
            // line 3
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "id", [], "any", false, false, true, 3), 3, $this->source), "html", null, true);
            echo "\">
        <div class=\"comment-avatar\">
            ";
            // line 5
            echo $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "avatar", [], "any", false, false, true, 5), 5, $this->source);
            echo "
        </div>
        <div class=\"comment-content\">
            <div class=\"comment-header\">
                <span class=\"comment-name\">";
            // line 9
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "name", [], "any", false, false, true, 9), 9, $this->source), "html", null, true);
            echo "</span>
                <a class=\"comment-date\" href=\"#comment-";
            // line 10
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "id", [], "any", false, false, true, 10), 10, $this->source), "html", null, true);
            echo "\">
                    ";
            // line 11
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["post"], "created_at", [], "any", false, false, true, 11), "diffForHumans", [], "any", false, false, true, 11), 11, $this->source), "html", null, true);
            echo "
                </a>
            </div>
            <div>";
            // line 14
            echo $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "content", [], "any", false, false, true, 14), 14, $this->source);
            echo "</div>
            <div class=\"comment-footer\">
                <a class=\"comment-reply\" onclick=\"Comment.replay(event,'";
            // line 16
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "id", [], "any", false, false, true, 16), 16, $this->source), "html", null, true);
            echo "')\">Reply</a>
            </div>
        </div>
        <div class=\"clearfix\"></div>
    </div>

    ";
            // line 22
            if (twig_get_attribute($this->env, $this->source, $context["post"], "children", [], "any", false, false, true, 22)) {
                // line 23
                echo "    <ul>
        ";
                // line 24
                $context['__cms_partial_params'] = [];
                $context['__cms_partial_params']['posts'] = twig_get_attribute($this->env, $this->source, $context["post"], "children", [], "any", false, false, true, 24)                ;
                echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("commentsPost::list"                , $context['__cms_partial_params']                , true                );
                unset($context['__cms_partial_params']);
                // line 25
                echo "    </ul>
    ";
            }
            // line 27
            echo "</li>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\Portfolio/plugins/saurabhdhariwal/comments/components/comments/list.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  123 => 27,  119 => 25,  114 => 24,  111 => 23,  109 => 22,  100 => 16,  95 => 14,  89 => 11,  85 => 10,  81 => 9,  74 => 5,  69 => 3,  66 => 2,  62 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% for post in posts %}
<li>
    <div class=\"comment\" id=\"comment-{{post.id}}\">
        <div class=\"comment-avatar\">
            {{post.avatar|raw}}
        </div>
        <div class=\"comment-content\">
            <div class=\"comment-header\">
                <span class=\"comment-name\">{{post.name}}</span>
                <a class=\"comment-date\" href=\"#comment-{{post.id}}\">
                    {{post.created_at.diffForHumans}}
                </a>
            </div>
            <div>{{post.content|raw}}</div>
            <div class=\"comment-footer\">
                <a class=\"comment-reply\" onclick=\"Comment.replay(event,'{{post.id}}')\">Reply</a>
            </div>
        </div>
        <div class=\"clearfix\"></div>
    </div>

    {% if post.children %}
    <ul>
        {% partial \"commentsPost::list\" posts=post.children %}
    </ul>
    {% endif %}
</li>
{% endfor %}", "C:\\xampp\\htdocs\\Portfolio/plugins/saurabhdhariwal/comments/components/comments/list.htm", "");
    }
}
