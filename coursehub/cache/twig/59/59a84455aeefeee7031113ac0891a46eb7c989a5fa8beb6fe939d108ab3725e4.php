<?php

/* partials/logo.html.twig */
class __TwigTemplate_0496adc37cc36ab7f8a8270883ddbf03e6bcf1955f306f121cb5d6679999d4c5 extends Twig_Template
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
        if ($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "plugins", array()), "admin", array()), "logo_text", array())) {
            // line 2
            echo "<h3>
\t<a href=\"";
            // line 3
            echo twig_escape_filter($this->env, ($context["base_url_relative"] ?? null), "html", null, true);
            echo "\">
\t\t";
            // line 4
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "plugins", array()), "admin", array()), "logo_text", array()), "html", null, true);
            echo "
\t</a>
\t<a class=\"front-end\" target=\"_blank\" href=\"";
            // line 6
            echo twig_escape_filter($this->env, ($context["base_url_relative_frontend"] ?? null), "html", null, true);
            echo "\"> <i class=\"fa fa-arrow-circle-right\"></i></a>
</h3>
";
        } else {
            // line 9
            echo "<div class=\"admin-logo\">
\t<a href=\"";
            // line 10
            echo twig_escape_filter($this->env, ($context["base_url_relative"] ?? null), "html", null, true);
            echo "\">
      <svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Capa_1\" x=\"5px\" y=\"5px\" width=\"50px\" height=\"50px\" viewBox=\"2 -10 34 42\" style=\"enable-background:new 0 0 32 32;\" xml:space=\"preserve\">
<g>
\t<g>
\t\t<path d=\"M4.058,10.703c-0.022-0.022-0.048-0.04-0.073-0.059c-0.018-0.024-0.035-0.049-0.059-0.072L3.152,9.797    c-0.282-0.282-0.74-0.282-1.021,0c-0.283,0.283-0.283,0.74,0,1.023l0.27,0.27l-0.832,0.833l-0.271-0.271    c-0.282-0.282-0.74-0.282-1.023,0c-0.281,0.283-0.281,0.741,0,1.023l0.774,0.774c0.042,0.042,0.088,0.075,0.137,0.105    c0.003,0.004,0.006,0.008,0.01,0.012c0.352,0.351,0.919,0.351,1.271,0l1.592-1.593C4.41,11.623,4.41,11.053,4.058,10.703z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M15.164,29.555c0.285-0.146,0.48-0.438,0.48-0.781c0-0.383-0.247-0.707-0.589-0.828c0.342-0.12,0.589-0.443,0.589-0.827    c0-0.386-0.25-0.71-0.596-0.829c0.346-0.119,0.596-0.443,0.596-0.83c0-0.486-0.395-0.88-0.881-0.88H14.2    c-0.486,0-0.882,0.396-0.882,0.88c0,0.387,0.25,0.711,0.597,0.83c-0.347,0.119-0.597,0.443-0.597,0.829    c0,0.384,0.247,0.707,0.59,0.827c-0.343,0.121-0.59,0.445-0.59,0.828c0,0.291,0.145,0.547,0.362,0.709    c-1.114,0.278-1.939,1.283-1.939,2.482c3.828,0,2.519,0,5.123,0C16.863,30.852,16.154,29.909,15.164,29.555z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M21.714,29.518c0.218-0.16,0.361-0.416,0.361-0.709c0-0.383-0.247-0.705-0.59-0.826c0.344-0.121,0.59-0.444,0.59-0.827    c0-0.386-0.25-0.71-0.597-0.83c0.347-0.119,0.597-0.443,0.597-0.829c0-0.487-0.395-0.882-0.882-0.882h-0.562    c-0.486,0-0.881,0.395-0.881,0.882c0,0.386,0.25,0.71,0.596,0.829c-0.346,0.12-0.596,0.444-0.596,0.83    c0,0.383,0.247,0.706,0.588,0.827c-0.341,0.121-0.588,0.443-0.588,0.826c0,0.342,0.196,0.635,0.48,0.782    c-0.989,0.354-1.699,1.298-1.699,2.409c2.604,0,1.295,0,5.123,0C23.655,30.8,22.829,29.795,21.714,29.518z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M31.81,20.477l-0.619-0.904c-0.032-0.049-0.072-0.09-0.114-0.129c-0.002-0.004-0.006-0.008-0.008-0.014    c-0.273-0.399-0.814-0.507-1.221-0.248c-0.024-0.072-0.057-0.143-0.102-0.207c-0.188-0.276-0.503-0.408-0.813-0.382    c0.137-0.28,0.127-0.622-0.061-0.896c-0.222-0.322-0.613-0.451-0.971-0.355c0.165-0.287,0.166-0.654-0.033-0.947    c-0.191-0.279-0.514-0.412-0.828-0.379c0.103-0.267,0.079-0.577-0.096-0.831c-0.188-0.275-0.503-0.408-0.812-0.381    c0.137-0.28,0.127-0.622-0.062-0.896c-0.277-0.407-0.834-0.511-1.24-0.232l-0.473,0.323c-0.405,0.279-0.511,0.834-0.231,1.241    c0.188,0.275,0.505,0.408,0.813,0.382c-0.136,0.28-0.127,0.622,0.062,0.896c0.19,0.28,0.513,0.412,0.828,0.381    c-0.104,0.266-0.079,0.576,0.095,0.83c0.22,0.321,0.613,0.449,0.97,0.354c-0.166,0.288-0.166,0.656,0.034,0.948    c0.189,0.274,0.504,0.407,0.814,0.381c-0.138,0.278-0.128,0.621,0.062,0.896c0.044,0.064,0.098,0.119,0.154,0.168    c-0.403,0.282-0.506,0.836-0.228,1.244c0.019,0.026,0.04,0.047,0.062,0.071c0.014,0.028,0.025,0.056,0.045,0.083l0.619,0.902    c0.225,0.33,0.675,0.414,1.004,0.188c0.329-0.228,0.414-0.676,0.188-1.006l-0.216-0.315l0.972-0.664l0.217,0.315    c0.226,0.329,0.675,0.413,1.004,0.188C31.953,21.255,32.037,20.805,31.81,20.477z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M10.771,13.815c-0.349-0.349-0.914-0.349-1.263,0c-0.275,0.276-0.33,0.686-0.17,1.019    c-0.313-0.11-0.674-0.042-0.925,0.208c-0.212,0.212-0.294,0.504-0.248,0.779c-0.059-0.008-0.116-0.018-0.177-0.018    c-0.068,0-0.136,0.01-0.202,0.021c0.018-0.25-0.064-0.505-0.255-0.696c-0.275-0.276-0.687-0.33-1.02-0.169    c0.11-0.314,0.042-0.675-0.208-0.926c-0.262-0.262-0.646-0.327-0.968-0.195c0.145-0.328,0.085-0.723-0.185-0.992    c-0.348-0.349-0.914-0.349-1.263,0L3.486,13.25c-0.349,0.349-0.349,0.914,0,1.263c0.263,0.262,0.646,0.327,0.969,0.196    C4.31,15.036,4.371,15.432,4.638,15.7c0.276,0.275,0.687,0.33,1.02,0.17c-0.109,0.313-0.042,0.675,0.208,0.925    c0.238,0.238,0.576,0.311,0.879,0.223c0,0.013-0.003,0.023-0.003,0.037c0,0.689,0.559,1.25,1.25,1.25c0.69,0,1.25-0.56,1.25-1.25    c0-0.039-0.009-0.076-0.012-0.115c0.295,0.076,0.621,0.002,0.853-0.229c0.275-0.276,0.33-0.687,0.169-1.019    c0.313,0.109,0.674,0.042,0.925-0.208c0.349-0.349,0.349-0.914,0-1.263L10.771,13.815z M7.991,17.518    c-0.258,0-0.465-0.207-0.465-0.463c0-0.257,0.208-0.466,0.465-0.466c0.256,0,0.465,0.208,0.465,0.466    C8.456,17.311,8.248,17.518,7.991,17.518z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M14.122,6.773V6.082c0-0.335-0.271-0.607-0.607-0.607h-0.692c-0.335,0-0.606,0.271-0.606,0.607v0.691    c0,0.335,0.271,0.608,0.606,0.608h0.691C13.849,7.381,14.122,7.108,14.122,6.773z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M21.538,6.084v0.691c0,0.335,0.271,0.608,0.606,0.608h0.691c0.335,0,0.606-0.272,0.606-0.608V6.084    c0-0.335-0.271-0.607-0.606-0.607h-0.691C21.809,5.477,21.538,5.749,21.538,6.084z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M17.711,16.314c-0.866-0.028-1.593,0.649-1.623,1.517c-0.03,0.866,0.647,1.593,1.516,1.623    c0.867,0.028,1.593-0.649,1.622-1.517C19.257,17.072,18.58,16.346,17.711,16.314z M17.638,18.48    c-0.329-0.012-0.586-0.289-0.575-0.616c0.012-0.329,0.287-0.587,0.616-0.575c0.329,0.011,0.586,0.287,0.575,0.616    C18.243,18.234,17.967,18.492,17.638,18.48z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M22.416,12.292h-2.123c0.068-0.193,0.108-0.4,0.108-0.617c0-0.229-0.044-0.449-0.121-0.651h1.517    c0.685,0,1.24-0.555,1.24-1.24V8.623h0.159c0.821,0,1.488-0.667,1.488-1.488v-1.41c0-0.82-0.667-1.488-1.488-1.488h-0.254    c-0.184-0.454-0.627-0.774-1.146-0.774h-2.179l0.695-1.959c0.021,0.002,0.042,0.006,0.063,0.006c0.417,0,0.754-0.338,0.754-0.754    c0-0.417-0.338-0.754-0.754-0.754s-0.753,0.337-0.753,0.754c0,0.263,0.135,0.494,0.339,0.628l-0.739,2.079H17.83V3.46h-1.394    l-0.737-2.078c0.203-0.135,0.339-0.366,0.339-0.628C16.038,0.337,15.7,0,15.284,0s-0.755,0.337-0.755,0.754    c0,0.416,0.338,0.754,0.755,0.754c0.021,0,0.042-0.004,0.062-0.007l0.696,1.959h-2.181c-0.52,0-0.962,0.32-1.146,0.774h-0.252    c-0.82,0-1.487,0.667-1.487,1.487v1.41c0,0.82,0.667,1.487,1.487,1.487h0.16V9.78c0,0.685,0.555,1.24,1.238,1.24h1.517    c-0.077,0.202-0.121,0.42-0.121,0.65c0,0.218,0.04,0.426,0.109,0.62h-2.465c-0.685,0-1.239,0.555-1.239,1.24v9.202    c0,0.686,0.555,1.24,1.239,1.24h9.514c0.685,0,1.239-0.555,1.239-1.24V13.53C23.655,12.846,23.1,12.292,22.416,12.292z     M24.187,5.725v1.41c0,0.547-0.444,0.992-0.992,0.992h-1.409c-0.548,0-0.992-0.445-0.992-0.992v-1.41    c0-0.547,0.444-0.992,0.992-0.992h1.409C23.743,4.733,24.187,5.178,24.187,5.725z M11.471,7.132v-1.41    c0-0.547,0.445-0.991,0.992-0.991h1.41c0.546,0,0.99,0.444,0.99,0.991v1.41c0,0.546-0.443,0.991-0.99,0.991h-1.41    C11.917,8.124,11.471,7.679,11.471,7.132z M16.482,8.325h1.348v0.002h1.347c0.517,0,0.936,0.325,0.936,0.727    c0,0.401-0.418,0.727-0.936,0.727H17.83V9.78h-1.348c-0.517,0-0.936-0.326-0.936-0.728C15.546,8.651,15.965,8.325,16.482,8.325z     M21.015,18.335c-0.003,0.082-0.072,0.146-0.154,0.144l-0.419-0.014c-0.084,0.396-0.253,0.773-0.495,1.102l0.285,0.306    c0.057,0.06,0.053,0.153-0.007,0.21l-0.517,0.482c-0.028,0.027-0.067,0.043-0.107,0.041s-0.077-0.019-0.104-0.047l-0.277-0.298    c-0.347,0.231-0.742,0.386-1.155,0.448l-0.014,0.413c-0.003,0.083-0.072,0.146-0.154,0.144l-0.707-0.022    c-0.082-0.004-0.146-0.073-0.145-0.154l0.014-0.401c-0.411-0.082-0.8-0.256-1.14-0.508l-0.278,0.26    c-0.061,0.057-0.155,0.054-0.211-0.006l-0.483-0.519c-0.053-0.058-0.05-0.156,0.009-0.21l0.271-0.254    c-0.234-0.355-0.388-0.758-0.448-1.18l-0.355-0.012c-0.082-0.003-0.146-0.07-0.145-0.154l0.023-0.707    c0.003-0.082,0.072-0.146,0.154-0.144l0.356,0.013c0.089-0.418,0.271-0.812,0.533-1.152l-0.247-0.265    c-0.025-0.028-0.041-0.066-0.04-0.106s0.019-0.077,0.047-0.104l0.518-0.484c0.061-0.056,0.153-0.052,0.21,0.007l0.254,0.273    c0.354-0.225,0.752-0.37,1.165-0.424l0.013-0.363c0.003-0.082,0.071-0.146,0.153-0.144l0.708,0.024    c0.082,0.003,0.146,0.072,0.143,0.154l-0.012,0.375c0.404,0.09,0.785,0.268,1.114,0.52l0.291-0.271    c0.027-0.027,0.066-0.042,0.106-0.04c0.04,0.001,0.077,0.018,0.104,0.047l0.482,0.518c0.057,0.06,0.054,0.154-0.007,0.21    l-0.297,0.276c0.221,0.348,0.366,0.738,0.424,1.142l0.418,0.015c0.082,0.002,0.147,0.071,0.145,0.153L21.015,18.335z\" fill=\"#d1dee7\"></path>
\t</g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
</svg>
\t</a>
\t<a class=\"front-end\" target=\"_blank\" href=\"";
            // line 57
            echo twig_escape_filter($this->env, ($context["base_url_relative_frontend"] ?? null), "html", null, true);
            echo "\"> <i class=\"fa fa-arrow-circle-right\"></i></a>
</div>
";
        }
        // line 60
        echo "





";
    }

    public function getTemplateName()
    {
        return "partials/logo.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  98 => 60,  92 => 57,  42 => 10,  39 => 9,  33 => 6,  28 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% if config.plugins.admin.logo_text %}
<h3>
\t<a href=\"{{ base_url_relative }}\">
\t\t{{ config.plugins.admin.logo_text }}
\t</a>
\t<a class=\"front-end\" target=\"_blank\" href=\"{{ base_url_relative_frontend }}\"> <i class=\"fa fa-arrow-circle-right\"></i></a>
</h3>
{% else %}
<div class=\"admin-logo\">
\t<a href=\"{{ base_url_relative }}\">
      <svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Capa_1\" x=\"5px\" y=\"5px\" width=\"50px\" height=\"50px\" viewBox=\"2 -10 34 42\" style=\"enable-background:new 0 0 32 32;\" xml:space=\"preserve\">
<g>
\t<g>
\t\t<path d=\"M4.058,10.703c-0.022-0.022-0.048-0.04-0.073-0.059c-0.018-0.024-0.035-0.049-0.059-0.072L3.152,9.797    c-0.282-0.282-0.74-0.282-1.021,0c-0.283,0.283-0.283,0.74,0,1.023l0.27,0.27l-0.832,0.833l-0.271-0.271    c-0.282-0.282-0.74-0.282-1.023,0c-0.281,0.283-0.281,0.741,0,1.023l0.774,0.774c0.042,0.042,0.088,0.075,0.137,0.105    c0.003,0.004,0.006,0.008,0.01,0.012c0.352,0.351,0.919,0.351,1.271,0l1.592-1.593C4.41,11.623,4.41,11.053,4.058,10.703z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M15.164,29.555c0.285-0.146,0.48-0.438,0.48-0.781c0-0.383-0.247-0.707-0.589-0.828c0.342-0.12,0.589-0.443,0.589-0.827    c0-0.386-0.25-0.71-0.596-0.829c0.346-0.119,0.596-0.443,0.596-0.83c0-0.486-0.395-0.88-0.881-0.88H14.2    c-0.486,0-0.882,0.396-0.882,0.88c0,0.387,0.25,0.711,0.597,0.83c-0.347,0.119-0.597,0.443-0.597,0.829    c0,0.384,0.247,0.707,0.59,0.827c-0.343,0.121-0.59,0.445-0.59,0.828c0,0.291,0.145,0.547,0.362,0.709    c-1.114,0.278-1.939,1.283-1.939,2.482c3.828,0,2.519,0,5.123,0C16.863,30.852,16.154,29.909,15.164,29.555z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M21.714,29.518c0.218-0.16,0.361-0.416,0.361-0.709c0-0.383-0.247-0.705-0.59-0.826c0.344-0.121,0.59-0.444,0.59-0.827    c0-0.386-0.25-0.71-0.597-0.83c0.347-0.119,0.597-0.443,0.597-0.829c0-0.487-0.395-0.882-0.882-0.882h-0.562    c-0.486,0-0.881,0.395-0.881,0.882c0,0.386,0.25,0.71,0.596,0.829c-0.346,0.12-0.596,0.444-0.596,0.83    c0,0.383,0.247,0.706,0.588,0.827c-0.341,0.121-0.588,0.443-0.588,0.826c0,0.342,0.196,0.635,0.48,0.782    c-0.989,0.354-1.699,1.298-1.699,2.409c2.604,0,1.295,0,5.123,0C23.655,30.8,22.829,29.795,21.714,29.518z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M31.81,20.477l-0.619-0.904c-0.032-0.049-0.072-0.09-0.114-0.129c-0.002-0.004-0.006-0.008-0.008-0.014    c-0.273-0.399-0.814-0.507-1.221-0.248c-0.024-0.072-0.057-0.143-0.102-0.207c-0.188-0.276-0.503-0.408-0.813-0.382    c0.137-0.28,0.127-0.622-0.061-0.896c-0.222-0.322-0.613-0.451-0.971-0.355c0.165-0.287,0.166-0.654-0.033-0.947    c-0.191-0.279-0.514-0.412-0.828-0.379c0.103-0.267,0.079-0.577-0.096-0.831c-0.188-0.275-0.503-0.408-0.812-0.381    c0.137-0.28,0.127-0.622-0.062-0.896c-0.277-0.407-0.834-0.511-1.24-0.232l-0.473,0.323c-0.405,0.279-0.511,0.834-0.231,1.241    c0.188,0.275,0.505,0.408,0.813,0.382c-0.136,0.28-0.127,0.622,0.062,0.896c0.19,0.28,0.513,0.412,0.828,0.381    c-0.104,0.266-0.079,0.576,0.095,0.83c0.22,0.321,0.613,0.449,0.97,0.354c-0.166,0.288-0.166,0.656,0.034,0.948    c0.189,0.274,0.504,0.407,0.814,0.381c-0.138,0.278-0.128,0.621,0.062,0.896c0.044,0.064,0.098,0.119,0.154,0.168    c-0.403,0.282-0.506,0.836-0.228,1.244c0.019,0.026,0.04,0.047,0.062,0.071c0.014,0.028,0.025,0.056,0.045,0.083l0.619,0.902    c0.225,0.33,0.675,0.414,1.004,0.188c0.329-0.228,0.414-0.676,0.188-1.006l-0.216-0.315l0.972-0.664l0.217,0.315    c0.226,0.329,0.675,0.413,1.004,0.188C31.953,21.255,32.037,20.805,31.81,20.477z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M10.771,13.815c-0.349-0.349-0.914-0.349-1.263,0c-0.275,0.276-0.33,0.686-0.17,1.019    c-0.313-0.11-0.674-0.042-0.925,0.208c-0.212,0.212-0.294,0.504-0.248,0.779c-0.059-0.008-0.116-0.018-0.177-0.018    c-0.068,0-0.136,0.01-0.202,0.021c0.018-0.25-0.064-0.505-0.255-0.696c-0.275-0.276-0.687-0.33-1.02-0.169    c0.11-0.314,0.042-0.675-0.208-0.926c-0.262-0.262-0.646-0.327-0.968-0.195c0.145-0.328,0.085-0.723-0.185-0.992    c-0.348-0.349-0.914-0.349-1.263,0L3.486,13.25c-0.349,0.349-0.349,0.914,0,1.263c0.263,0.262,0.646,0.327,0.969,0.196    C4.31,15.036,4.371,15.432,4.638,15.7c0.276,0.275,0.687,0.33,1.02,0.17c-0.109,0.313-0.042,0.675,0.208,0.925    c0.238,0.238,0.576,0.311,0.879,0.223c0,0.013-0.003,0.023-0.003,0.037c0,0.689,0.559,1.25,1.25,1.25c0.69,0,1.25-0.56,1.25-1.25    c0-0.039-0.009-0.076-0.012-0.115c0.295,0.076,0.621,0.002,0.853-0.229c0.275-0.276,0.33-0.687,0.169-1.019    c0.313,0.109,0.674,0.042,0.925-0.208c0.349-0.349,0.349-0.914,0-1.263L10.771,13.815z M7.991,17.518    c-0.258,0-0.465-0.207-0.465-0.463c0-0.257,0.208-0.466,0.465-0.466c0.256,0,0.465,0.208,0.465,0.466    C8.456,17.311,8.248,17.518,7.991,17.518z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M14.122,6.773V6.082c0-0.335-0.271-0.607-0.607-0.607h-0.692c-0.335,0-0.606,0.271-0.606,0.607v0.691    c0,0.335,0.271,0.608,0.606,0.608h0.691C13.849,7.381,14.122,7.108,14.122,6.773z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M21.538,6.084v0.691c0,0.335,0.271,0.608,0.606,0.608h0.691c0.335,0,0.606-0.272,0.606-0.608V6.084    c0-0.335-0.271-0.607-0.606-0.607h-0.691C21.809,5.477,21.538,5.749,21.538,6.084z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M17.711,16.314c-0.866-0.028-1.593,0.649-1.623,1.517c-0.03,0.866,0.647,1.593,1.516,1.623    c0.867,0.028,1.593-0.649,1.622-1.517C19.257,17.072,18.58,16.346,17.711,16.314z M17.638,18.48    c-0.329-0.012-0.586-0.289-0.575-0.616c0.012-0.329,0.287-0.587,0.616-0.575c0.329,0.011,0.586,0.287,0.575,0.616    C18.243,18.234,17.967,18.492,17.638,18.48z\" fill=\"#d1dee7\"></path>
\t\t<path d=\"M22.416,12.292h-2.123c0.068-0.193,0.108-0.4,0.108-0.617c0-0.229-0.044-0.449-0.121-0.651h1.517    c0.685,0,1.24-0.555,1.24-1.24V8.623h0.159c0.821,0,1.488-0.667,1.488-1.488v-1.41c0-0.82-0.667-1.488-1.488-1.488h-0.254    c-0.184-0.454-0.627-0.774-1.146-0.774h-2.179l0.695-1.959c0.021,0.002,0.042,0.006,0.063,0.006c0.417,0,0.754-0.338,0.754-0.754    c0-0.417-0.338-0.754-0.754-0.754s-0.753,0.337-0.753,0.754c0,0.263,0.135,0.494,0.339,0.628l-0.739,2.079H17.83V3.46h-1.394    l-0.737-2.078c0.203-0.135,0.339-0.366,0.339-0.628C16.038,0.337,15.7,0,15.284,0s-0.755,0.337-0.755,0.754    c0,0.416,0.338,0.754,0.755,0.754c0.021,0,0.042-0.004,0.062-0.007l0.696,1.959h-2.181c-0.52,0-0.962,0.32-1.146,0.774h-0.252    c-0.82,0-1.487,0.667-1.487,1.487v1.41c0,0.82,0.667,1.487,1.487,1.487h0.16V9.78c0,0.685,0.555,1.24,1.238,1.24h1.517    c-0.077,0.202-0.121,0.42-0.121,0.65c0,0.218,0.04,0.426,0.109,0.62h-2.465c-0.685,0-1.239,0.555-1.239,1.24v9.202    c0,0.686,0.555,1.24,1.239,1.24h9.514c0.685,0,1.239-0.555,1.239-1.24V13.53C23.655,12.846,23.1,12.292,22.416,12.292z     M24.187,5.725v1.41c0,0.547-0.444,0.992-0.992,0.992h-1.409c-0.548,0-0.992-0.445-0.992-0.992v-1.41    c0-0.547,0.444-0.992,0.992-0.992h1.409C23.743,4.733,24.187,5.178,24.187,5.725z M11.471,7.132v-1.41    c0-0.547,0.445-0.991,0.992-0.991h1.41c0.546,0,0.99,0.444,0.99,0.991v1.41c0,0.546-0.443,0.991-0.99,0.991h-1.41    C11.917,8.124,11.471,7.679,11.471,7.132z M16.482,8.325h1.348v0.002h1.347c0.517,0,0.936,0.325,0.936,0.727    c0,0.401-0.418,0.727-0.936,0.727H17.83V9.78h-1.348c-0.517,0-0.936-0.326-0.936-0.728C15.546,8.651,15.965,8.325,16.482,8.325z     M21.015,18.335c-0.003,0.082-0.072,0.146-0.154,0.144l-0.419-0.014c-0.084,0.396-0.253,0.773-0.495,1.102l0.285,0.306    c0.057,0.06,0.053,0.153-0.007,0.21l-0.517,0.482c-0.028,0.027-0.067,0.043-0.107,0.041s-0.077-0.019-0.104-0.047l-0.277-0.298    c-0.347,0.231-0.742,0.386-1.155,0.448l-0.014,0.413c-0.003,0.083-0.072,0.146-0.154,0.144l-0.707-0.022    c-0.082-0.004-0.146-0.073-0.145-0.154l0.014-0.401c-0.411-0.082-0.8-0.256-1.14-0.508l-0.278,0.26    c-0.061,0.057-0.155,0.054-0.211-0.006l-0.483-0.519c-0.053-0.058-0.05-0.156,0.009-0.21l0.271-0.254    c-0.234-0.355-0.388-0.758-0.448-1.18l-0.355-0.012c-0.082-0.003-0.146-0.07-0.145-0.154l0.023-0.707    c0.003-0.082,0.072-0.146,0.154-0.144l0.356,0.013c0.089-0.418,0.271-0.812,0.533-1.152l-0.247-0.265    c-0.025-0.028-0.041-0.066-0.04-0.106s0.019-0.077,0.047-0.104l0.518-0.484c0.061-0.056,0.153-0.052,0.21,0.007l0.254,0.273    c0.354-0.225,0.752-0.37,1.165-0.424l0.013-0.363c0.003-0.082,0.071-0.146,0.153-0.144l0.708,0.024    c0.082,0.003,0.146,0.072,0.143,0.154l-0.012,0.375c0.404,0.09,0.785,0.268,1.114,0.52l0.291-0.271    c0.027-0.027,0.066-0.042,0.106-0.04c0.04,0.001,0.077,0.018,0.104,0.047l0.482,0.518c0.057,0.06,0.054,0.154-0.007,0.21    l-0.297,0.276c0.221,0.348,0.366,0.738,0.424,1.142l0.418,0.015c0.082,0.002,0.147,0.071,0.145,0.153L21.015,18.335z\" fill=\"#d1dee7\"></path>
\t</g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
</svg>
\t</a>
\t<a class=\"front-end\" target=\"_blank\" href=\"{{ base_url_relative_frontend }}\"> <i class=\"fa fa-arrow-circle-right\"></i></a>
</div>
{% endif %}






", "partials/logo.html.twig", "C:\\xampp\\htdocs\\seniorknows\\new_seniorknows_site_by_KeYang\\coursehub\\user\\plugins\\admin\\themes\\grav\\templates\\partials\\logo.html.twig");
    }
}
