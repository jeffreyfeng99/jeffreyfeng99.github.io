---
layout: default
---
        
<main class="fade-out">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 social-media">
                {% assign count = 0 %}
                {% for item in page.media_list %}
                {% if count == 0 %}
                {{item.title_txt}} {% for link in item.link_list %}<br> <a href="{{link.link_txt}}">{{link.title_txt}}</a> {%endfor%}
                {% assign count = count | plus: 1 %}
                {% else %}
                <br/><br/>
                {{item.title_txt}} {% for link in item.link_list %}<br> <a href="{{link.link_txt}}">{{link.title_txt}}</a> {%endfor%}
                {% endif %}
                {% endfor %}    
            </div>

            <div class="col-lg-9 social-media">
                {{page.description_txt | markdownify}}
            </div>
        </div>
    </div>
</main>


<script src="/assets/js/common.js"></script>
 