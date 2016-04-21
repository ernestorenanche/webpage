---
title: Current projects
---
{% for project_hash in site.data.projects %}
  {% assign project = project_hash[1] %}
{% for coauthor in project.coauthors %}{% if forloop.first %}With {% elsif forloop.last %} and {% else %}, {% endif %}[{{ coauthor.name }}]({{ coauthor.url }}){% endfor %}, *{{ project.title }}*.
{% endfor %}

{% comment %} <svg viewBox="0 0 32 32"> {% endcomment %}
{% comment %}   <circle r="16" cx="16" cy="16" /> {% endcomment %}
{% comment %} </svg> {% endcomment %}
