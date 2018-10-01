<?php

/* partials/login-form.html.twig */
class __TwigTemplate_5d553faa343e85e2b301647ee32edf0f6d6b6b8a7ecf22bb0ad84008bb570f72 extends Twig_Template
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
        echo "<section id=\"grav-login\">
    ";
        // line 2
        $this->loadTemplate("partials/messages.html.twig", "partials/login-form.html.twig", 2)->display($context);
        // line 3
        echo "
    ";
        // line 4
        if ((($this->getAttribute(($context["page"] ?? null), "template", array()) == "login") || ($context["show_login_form"] ?? null))) {
            // line 5
            echo "
        ";
            // line 6
            if ($this->getAttribute($this->getAttribute(($context["grav"] ?? null), "user", array()), "authenticated", array())) {
                // line 7
                echo "            <h4>";
                echo $this->env->getExtension('Grav\Common\Twig\TwigExtension')->translate("PLUGIN_LOGIN.WELCOME");
                echo " <strong>";
                echo (($this->getAttribute($this->getAttribute(($context["grav"] ?? null), "user", array()), "fullname", array())) ? ($this->getAttribute($this->getAttribute(($context["grav"] ?? null), "user", array()), "fullname", array())) : ($this->getAttribute($this->getAttribute(($context["grav"] ?? null), "user", array()), "username", array())));
                echo "</strong></h4>
            <hr>
            <a class=\"button logout\" href=\"";
                // line 9
                echo twig_escape_filter($this->env, $this->getAttribute(($context["uri"] ?? null), "addNonce", array(0 => ((((($context["base_url_relative"] ?? null) . $this->getAttribute(($context["uri"] ?? null), "path", array())) . "/task") . $this->getAttribute($this->getAttribute(($context["config"] ?? null), "system", array()), "param_sep", array())) . "login.logout"), 1 => "logout-form", 2 => "logout-nonce"), "method"));
                echo "\">";
                echo $this->env->getExtension('Grav\Common\Twig\TwigExtension')->translate("PLUGIN_LOGIN.BTN_LOGOUT");
                echo "</a>

        ";
            } else {
                // line 12
                echo "            ";
                echo ($context["content"] ?? null);
                echo "

            <form method=\"post\" action=\"";
                // line 14
                echo twig_escape_filter($this->env, (($context["base_url_relative"] ?? null) . $this->getAttribute(($context["uri"] ?? null), "path", array())));
                echo "\">
                ";
                // line 15
                if ($this->getAttribute($this->getAttribute(($context["grav"] ?? null), "twig", array()), "plugins_hooked_loginPage", array())) {
                    // line 16
                    echo "                    ";
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute(($context["grav"] ?? null), "twig", array()), "plugins_hooked_loginPage", array()));
                    $context['loop'] = array(
                      'parent' => $context['_parent'],
                      'index0' => 0,
                      'index'  => 1,
                      'first'  => true,
                    );
                    if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
                        $length = count($context['_seq']);
                        $context['loop']['revindex0'] = $length - 1;
                        $context['loop']['revindex'] = $length;
                        $context['loop']['length'] = $length;
                        $context['loop']['last'] = 1 === $length;
                    }
                    foreach ($context['_seq'] as $context["_key"] => $context["label"]) {
                        // line 17
                        echo "                        ";
                        $this->loadTemplate($context["label"], "partials/login-form.html.twig", 17)->display($context);
                        // line 18
                        echo "                    ";
                        ++$context['loop']['index0'];
                        ++$context['loop']['index'];
                        $context['loop']['first'] = false;
                        if (isset($context['loop']['length'])) {
                            --$context['loop']['revindex0'];
                            --$context['loop']['revindex'];
                            $context['loop']['last'] = 0 === $context['loop']['revindex0'];
                        }
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['label'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 19
                    echo "                ";
                }
                // line 20
                echo "
                ";
                // line 21
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["form"] ?? null), "fields", array()));
                $context['loop'] = array(
                  'parent' => $context['_parent'],
                  'index0' => 0,
                  'index'  => 1,
                  'first'  => true,
                );
                if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
                    $length = count($context['_seq']);
                    $context['loop']['revindex0'] = $length - 1;
                    $context['loop']['revindex'] = $length;
                    $context['loop']['length'] = $length;
                    $context['loop']['last'] = 1 === $length;
                }
                foreach ($context['_seq'] as $context["_key"] => $context["field"]) {
                    // line 22
                    echo "                    ";
                    if ($this->getAttribute($context["field"], "type", array())) {
                        // line 23
                        echo "                        <div>
                            ";
                        // line 24
                        $this->loadTemplate(array(0 => (((("forms/fields/" . $this->getAttribute($context["field"], "type", array())) . "/") . $this->getAttribute($context["field"], "type", array())) . ".html.twig"), 1 => "forms/fields/text/text.html.twig"), "partials/login-form.html.twig", 24)->display($context);
                        // line 25
                        echo "                        </div>
                    ";
                    }
                    // line 27
                    echo "                ";
                    ++$context['loop']['index0'];
                    ++$context['loop']['index'];
                    $context['loop']['first'] = false;
                    if (isset($context['loop']['length'])) {
                        --$context['loop']['revindex0'];
                        --$context['loop']['revindex'];
                        $context['loop']['last'] = 0 === $context['loop']['revindex0'];
                    }
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['field'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 28
                echo "
                <div class=\"form-actions secondary-accent\">
                    ";
                // line 30
                if (($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "plugins", array()), "login", array()), "rememberme", array()), "enabled", array()) && ((($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array(), "any", false, true), "form", array(), "any", false, true), "login", array(), "any", false, true), "rememberme", array(), "any", true, true) &&  !(null === $this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array(), "any", false, true), "form", array(), "any", false, true), "login", array(), "any", false, true), "rememberme", array())))) ? ($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array(), "any", false, true), "form", array(), "any", false, true), "login", array(), "any", false, true), "rememberme", array())) : (true)))) {
                    // line 31
                    echo "                        <div class=\"form-data rememberme\" data-grav-default=\"null\" data-grav-disabled=\"true\" data-grav-field=\"checkbox\">
                            <div class=\"form-input-wrapper\">
                                <input type=\"checkbox\" value=\"1\" name=\"rememberme\" id=\"#rememberme\">
                                <label class=\"inline\" for=\"#rememberme\" title=\"";
                    // line 34
                    echo $this->env->getExtension('Grav\Common\Twig\TwigExtension')->translate("PLUGIN_LOGIN.REMEMBER_ME_HELP");
                    echo "\">";
                    echo $this->env->getExtension('Grav\Common\Twig\TwigExtension')->translate("PLUGIN_LOGIN.REMEMBER_ME");
                    echo "</label>
                            </div>
                        </div>
                    ";
                }
                // line 38
                echo "
                    ";
                // line 39
                if (((($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array(), "any", false, true), "form", array(), "any", false, true), "login", array(), "any", false, true), "forgot_button", array(), "any", true, true) &&  !(null === $this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array(), "any", false, true), "form", array(), "any", false, true), "login", array(), "any", false, true), "forgot_button", array())))) ? ($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array(), "any", false, true), "form", array(), "any", false, true), "login", array(), "any", false, true), "forgot_button", array())) : (true))) {
                    // line 40
                    echo "                    <a class=\"button secondary\" href=\"";
                    echo ($context["base_url_relative"] ?? null);
                    echo $this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "plugins", array()), "login", array()), "route_forgot", array());
                    echo "\"><i class=\"fa fa-exclamation-circle\"></i> ";
                    echo $this->env->getExtension('Grav\Common\Twig\TwigExtension')->translate("PLUGIN_LOGIN.BTN_FORGOT");
                    echo "</a>
                    ";
                }
                // line 42
                echo "
                    <button type=\"submit\" class=\"button primary\" name=\"task\" value=\"login.login\"><i class=\"fa fa-sign-in\"></i> ";
                // line 43
                echo $this->env->getExtension('Grav\Common\Twig\TwigExtension')->translate("PLUGIN_LOGIN.BTN_LOGIN");
                echo "</button>
                </div>

                ";
                // line 46
                echo $this->env->getExtension('Grav\Common\Twig\TwigExtension')->nonceFieldFunc("login-form", "login-form-nonce");
                echo "
            </form>

        ";
            }
            // line 50
            echo "
    ";
        }
        // line 52
        echo "
</section>
";
    }

    public function getTemplateName()
    {
        return "partials/login-form.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  200 => 52,  196 => 50,  189 => 46,  183 => 43,  180 => 42,  171 => 40,  169 => 39,  166 => 38,  157 => 34,  152 => 31,  150 => 30,  146 => 28,  132 => 27,  128 => 25,  126 => 24,  123 => 23,  120 => 22,  103 => 21,  100 => 20,  97 => 19,  83 => 18,  80 => 17,  62 => 16,  60 => 15,  56 => 14,  50 => 12,  42 => 9,  34 => 7,  32 => 6,  29 => 5,  27 => 4,  24 => 3,  22 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<section id=\"grav-login\">
    {% include 'partials/messages.html.twig' %}

    {% if page.template == 'login' or show_login_form %}

        {% if grav.user.authenticated %}
            <h4>{{ 'PLUGIN_LOGIN.WELCOME'|t }} <strong>{{ grav.user.fullname ?: grav.user.username }}</strong></h4>
            <hr>
            <a class=\"button logout\" href=\"{{ uri.addNonce(base_url_relative ~ uri.path ~ '/task' ~ config.system.param_sep ~ 'login.logout', 'logout-form', 'logout-nonce')|e }}\">{{ 'PLUGIN_LOGIN.BTN_LOGOUT'|t }}</a>

        {% else %}
            {{ content|raw }}

            <form method=\"post\" action=\"{{ (base_url_relative ~ uri.path)|e }}\">
                {% if grav.twig.plugins_hooked_loginPage %}
                    {% for label in grav.twig.plugins_hooked_loginPage %}
                        {% include label %}
                    {% endfor %}
                {% endif %}

                {% for field in form.fields %}
                    {% if field.type %}
                        <div>
                            {% include [\"forms/fields/#{field.type}/#{field.type}.html.twig\", 'forms/fields/text/text.html.twig'] %}
                        </div>
                    {% endif %}
                {% endfor %}

                <div class=\"form-actions secondary-accent\">
                    {% if config.plugins.login.rememberme.enabled and page.header.form.login.rememberme ?? true %}
                        <div class=\"form-data rememberme\" data-grav-default=\"null\" data-grav-disabled=\"true\" data-grav-field=\"checkbox\">
                            <div class=\"form-input-wrapper\">
                                <input type=\"checkbox\" value=\"1\" name=\"rememberme\" id=\"#rememberme\">
                                <label class=\"inline\" for=\"#rememberme\" title=\"{{ 'PLUGIN_LOGIN.REMEMBER_ME_HELP'|t }}\">{{ 'PLUGIN_LOGIN.REMEMBER_ME'|t }}</label>
                            </div>
                        </div>
                    {% endif %}

                    {% if page.header.form.login.forgot_button ?? true %}
                    <a class=\"button secondary\" href=\"{{ base_url_relative }}{{ config.plugins.login.route_forgot }}\"><i class=\"fa fa-exclamation-circle\"></i> {{ 'PLUGIN_LOGIN.BTN_FORGOT'|t }}</a>
                    {% endif %}

                    <button type=\"submit\" class=\"button primary\" name=\"task\" value=\"login.login\"><i class=\"fa fa-sign-in\"></i> {{ 'PLUGIN_LOGIN.BTN_LOGIN'|t }}</button>
                </div>

                {{ nonce_field('login-form', 'login-form-nonce')|raw }}
            </form>

        {% endif %}

    {% endif %}

</section>
", "partials/login-form.html.twig", "C:\\xampp\\htdocs\\seniorknows\\new_seniorknows_site_by_KeYang\\coursehub\\user\\plugins\\login\\templates\\partials\\login-form.html.twig");
    }
}
