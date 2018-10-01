<?php

/* forms/fields/password/password.html.twig */
class __TwigTemplate_28018c57493371fe531e99f21dbe16172e2928d33e6e385468f51d12064c1838 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        $context["value"] = (((null === ($context["value"] ?? null))) ? ($this->getAttribute(($context["field"] ?? null), "default", array())) : (($context["value"] ?? null)));
        // line 2
        echo "
<div class=\"form-field\">
    <label class=\"control-label col-sm-2\">
        ";
        // line 5
        if ($this->getAttribute(($context["field"] ?? null), "help", array())) {
            // line 6
            echo "            <span class=\"tooltip\" data-asTooltip-position=\"w\" title=\"";
            echo twig_escape_filter($this->env, $this->getAttribute(($context["field"] ?? null), "help", array()));
            echo "\">";
            echo $this->env->getExtension('Grav\Common\Twig\TwigExtension')->translate((($this->getAttribute(($context["field"] ?? null), "label", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["field"] ?? null), "label", array()), twig_capitalize_string_filter($this->env, $this->getAttribute(($context["field"] ?? null), "name", array())))) : (twig_capitalize_string_filter($this->env, $this->getAttribute(($context["field"] ?? null), "name", array())))));
            echo "</span>
        ";
        } else {
            // line 8
            echo "            ";
            echo $this->env->getExtension('Grav\Common\Twig\TwigExtension')->translate((($this->getAttribute(($context["field"] ?? null), "label", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["field"] ?? null), "label", array()), twig_capitalize_string_filter($this->env, $this->getAttribute(($context["field"] ?? null), "name", array())))) : (twig_capitalize_string_filter($this->env, $this->getAttribute(($context["field"] ?? null), "name", array())))));
            echo "
            ";
            // line 9
            echo ((twig_in_filter($this->getAttribute($this->getAttribute(($context["field"] ?? null), "validate", array()), "required", array()), array(0 => "on", 1 => "true", 2 => 1))) ? ("<span class=\"required\">*</span>") : (""));
            echo "
        ";
        }
        // line 11
        echo "    </label>
    <div class=\"col-sm-10\">
        <input  type=\"password\"
                class=\"form-control\"
                name=\"";
        // line 15
        echo $this->env->getExtension('Grav\Common\Twig\TwigExtension')->fieldNameFilter((($context["scope"] ?? null) . $this->getAttribute(($context["field"] ?? null), "name", array())));
        echo "\"
                value=\"";
        // line 16
        echo twig_join_filter(($context["value"] ?? null), ", ");
        echo "\"
                ";
        // line 17
        if ($this->getAttribute(($context["field"] ?? null), "placeholder", array())) {
            echo "placeholder=\"";
            echo $this->getAttribute(($context["field"] ?? null), "placeholder", array());
            echo "\"";
        }
        // line 18
        echo "                ";
        if (twig_in_filter($this->getAttribute(($context["field"] ?? null), "autofocus", array()), array(0 => "on", 1 => "true", 2 => 1))) {
            echo "autofocus=\"autofocus\"";
        }
        // line 19
        echo "                ";
        if (twig_in_filter($this->getAttribute(($context["field"] ?? null), "novalidate", array()), array(0 => "on", 1 => "true", 2 => 1))) {
            echo "novalidate=\"novalidate\"";
        }
        // line 20
        echo "                ";
        if (twig_in_filter($this->getAttribute(($context["field"] ?? null), "autocomplete", array()), array(0 => "on", 1 => "off"))) {
            echo "autocomplete=\"";
            echo $this->getAttribute(($context["field"] ?? null), "autocomplete", array());
            echo "\"";
        }
        // line 21
        echo "                ";
        if (twig_in_filter($this->getAttribute($this->getAttribute(($context["field"] ?? null), "validate", array()), "required", array()), array(0 => "on", 1 => "true", 2 => 1))) {
            echo "required=\"required\"";
        }
        // line 22
        echo "                ";
        if ($this->getAttribute($this->getAttribute(($context["field"] ?? null), "validate", array()), "pattern", array())) {
            echo "pattern=\"";
            echo $this->getAttribute($this->getAttribute(($context["field"] ?? null), "validate", array()), "pattern", array());
            echo "\"";
        }
        // line 23
        echo "        />
    </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "forms/fields/password/password.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  95 => 23,  88 => 22,  83 => 21,  76 => 20,  71 => 19,  66 => 18,  60 => 17,  56 => 16,  52 => 15,  46 => 11,  41 => 9,  36 => 8,  28 => 6,  26 => 5,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% set value = (value is null ? field.default : value) %}

<div class=\"form-field\">
    <label class=\"control-label col-sm-2\">
        {% if field.help %}
            <span class=\"tooltip\" data-asTooltip-position=\"w\" title=\"{{ field.help|e }}\">{{ field.label|default(field.name|capitalize)|t }}</span>
        {% else %}
            {{ field.label|default(field.name|capitalize)|t }}
            {{ field.validate.required in ['on', 'true', 1] ? '<span class=\"required\">*</span>' }}
        {% endif %}
    </label>
    <div class=\"col-sm-10\">
        <input  type=\"password\"
                class=\"form-control\"
                name=\"{{ (scope ~ field.name)|fieldName }}\"
                value=\"{{ value|join(', ') }}\"
                {% if field.placeholder %}placeholder=\"{{ field.placeholder }}\"{% endif %}
                {% if field.autofocus in ['on', 'true', 1] %}autofocus=\"autofocus\"{% endif %}
                {% if field.novalidate in ['on', 'true', 1] %}novalidate=\"novalidate\"{% endif %}
                {% if field.autocomplete in ['on', 'off'] %}autocomplete=\"{{ field.autocomplete }}\"{% endif %}
                {% if field.validate.required in ['on', 'true', 1] %}required=\"required\"{% endif %}
                {% if field.validate.pattern %}pattern=\"{{ field.validate.pattern }}\"{% endif %}
        />
    </div>
</div>
", "forms/fields/password/password.html.twig", "C:\\xampp\\htdocs\\seniorknows\\new_seniorknows_site_by_KeYang\\coursehub\\user\\themes\\bootstrap\\templates\\forms\\fields\\password\\password.html.twig");
    }
}
