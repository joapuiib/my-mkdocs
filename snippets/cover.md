<div class="page">
<div class="cover text-center">
<img class="mx-auto" src={{ logo }} alt="logo">

<h1>{{ page.title }}</h1>

{% if subtitle %}
<h2>{{ subtitle }}</h2>
{% endif %}

<div class="details">
    <p><strong>Autor:</strong> {{ teacher.name }}</p>
    <p><strong>Correu electrònic:</strong> {{ teacher.email }}</p>
    {% if curs %}
    <p><strong>Curs:</strong> {{ curs }}</p>
    {% endif %}
</div>

<div class="license">

{% if autor_original %}
<p>Aquest material és una obra derivada a partir del material de: <strong>{{ autor_original }}</strong></p>
{% endif %}

<p><strong>Llicència: {{ license }}</strong></p>
{% if license_desc %}
<p class="">{{license_desc}}</p>
{% endif %}

<a href="{{ license_url }}" target="_blank">
    <img class="" src="/img/license/{{ license.lower() }}.png" alt="Licence"/>
</a>
</div><!--license-->
</div><!--cover-->
</div><!--page-->

