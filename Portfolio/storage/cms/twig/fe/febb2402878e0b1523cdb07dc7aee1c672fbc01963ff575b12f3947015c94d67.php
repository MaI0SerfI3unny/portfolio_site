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
        $tags = array("for" => 3, "if" => 24, "partial" => 26);
        $filters = array("escape" => 5, "raw" => 7);
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
        echo "<div class=\"col-md-12\">

";
        // line 3
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 4
            echo "
    <div class=\"comment\" style=\"width: 100%;\" id=\"comment-";
            // line 5
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "id", [], "any", false, false, true, 5), 5, $this->source), "html", null, true);
            echo "\">
        <div class=\"comment-avatar\">
            ";
            // line 7
            echo $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "avatar", [], "any", false, false, true, 7), 7, $this->source);
            echo "
        </div>
        <div class=\"comment-content\">
            <div class=\"comment-header\">
                <span class=\"comment-name\">";
            // line 11
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "name", [], "any", false, false, true, 11), 11, $this->source), "html", null, true);
            echo "</span>
                <a class=\"comment-date\" href=\"#comment-";
            // line 12
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "id", [], "any", false, false, true, 12), 12, $this->source), "html", null, true);
            echo "\">
                    ";
            // line 13
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["post"], "created_at", [], "any", false, false, true, 13), "diffForHumans", [], "any", false, false, true, 13), 13, $this->source), "html", null, true);
            echo "
                </a>
            </div>
            <div>";
            // line 16
            echo $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "content", [], "any", false, false, true, 16), 16, $this->source);
            echo "</div>
            <div class=\"comment-footer\">
                <a class=\"comment-reply\" onclick=\"Comment.replay(event,'";
            // line 18
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, $context["post"], "id", [], "any", false, false, true, 18), 18, $this->source), "html", null, true);
            echo "')\">Reply</a>
            </div>
        </div>
        <div class=\"clearfix\"></div>
    </div>

    ";
            // line 24
            if (twig_get_attribute($this->env, $this->source, $context["post"], "children", [], "any", false, false, true, 24)) {
                // line 25
                echo "    <ul>
        ";
                // line 26
                $context['__cms_partial_params'] = [];
                $context['__cms_partial_params']['posts'] = twig_get_attribute($this->env, $this->source, $context["post"], "children", [], "any", false, false, true, 26)                ;
                echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("commentsPost::list"                , $context['__cms_partial_params']                , true                );
                unset($context['__cms_partial_params']);
                // line 27
                echo "    </ul>
    ";
            }
            // line 29
            echo "
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 31
        echo "</div>
</div>
";
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
        return array (  134 => 31,  127 => 29,  123 => 27,  118 => 26,  115 => 25,  113 => 24,  104 => 18,  99 => 16,  93 => 13,  89 => 12,  85 => 11,  78 => 7,  73 => 5,  70 => 4,  66 => 3,  62 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"col-md-12\">

{% for post in posts %}

    <div class=\"comment\" style=\"width: 100%;\" id=\"comment-{{post.id}}\">
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

{% endfor %}
</div>
</div>
", "C:\\xampp\\htdocs\\Portfolio/plugins/saurabhdhariwal/comments/components/comments/list.htm", "");
    }
}
