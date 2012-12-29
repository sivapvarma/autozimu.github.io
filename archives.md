---
layout: page
title : Archive | Fabio Souto
header : Post Archive
group: navigation
---

<div class="post-list">
  {% for post in site.posts %}
  {% cycle '<div class="row post">', '' %}
    <div class="span6">
      <h3><a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></h3>
      <h4><em>{{ post.description }}</em></h4>
    </div>
  {% cycle '', '</div>' %}
  {% endfor %}
</div>
