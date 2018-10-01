<?php

/* modular/important-reminders.html.twig */
class __TwigTemplate_534728f28cb7cc00d4ea65d2c9a55d3349353037b31c873f32d0f1cd5ab740c2 extends Twig_Template
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
        // line 2
        echo "<div class=\"list-item\">
  <div class=\"list-blog-header\">
    <div class=\"list-blog-padding\">
      <div class=\"listbullet alert alert-info\">
        ";
        // line 6
        echo $this->getAttribute(($context["page"] ?? null), "content", array());
        echo "
      </div>
    </div>
  </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "modular/important-reminders.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  25 => 6,  19 => 2,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{# new twig template file - hibbittsdesign.org #}
<div class=\"list-item\">
  <div class=\"list-blog-header\">
    <div class=\"list-blog-padding\">
      <div class=\"listbullet alert alert-info\">
        {{ page.content }}
      </div>
    </div>
  </div>
</div>
", "modular/important-reminders.html.twig", "C:\\xampp\\htdocs\\seniorknows\\new_seniorknows_site_by_KeYang\\coursehub\\user\\themes\\course-hub-bootstrap\\templates\\modular\\important-reminders.html.twig");
    }
}
