---
layout: default
---

<main class="fade-out">
    
<!-- <div id="tabNavHref" class="data-tab">
    <div class = "container">
        <ul class="nav nav-tabs">
            {% for item in page.content_list %}
            <li class="col-sm-6 tab-item text-center resume-button">
                <button  class="btn-filter" href="#{{item.id_txt}}" data-toggle="tab" >{{item.tabTitle_txt}}</button>
            </li>
            {% endfor %}
        </ul>
    </div>
</div> -->

<!-- <div class="tab-content portfolio">
{% assign counter = 0 %}
{% assign collectionItems = site._portfolio | sort: 'order' %}
{% assign size = collectionItems | size %}
{% assign size = size | minus: 1 %}
{% for item in page.content_list %}
{% assign id = item.id_txt %}
    <div class="tab-pane fade show {% if counter == 0%}active{%endif%}" id="{{item.id_txt}}" >
        <div class="photos-page">
            <div class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 photo-header">
                            <h3>{{item.title_txt}}</h3>
                            <p>{{item.subtitle_txt}}</p>
                        </div>
                    </div>
                    <div class="row card-grid">
                        {% assign count = 0 %}
                        {% for file in collectionItems %}
                        {% assign fileId = file.tag_txt %}
                        {% if fileId == id %}
                            <div class="col-lg-4 col-sm-6 col-xs-12 card-container mobile-full-card-container">
                                {% assign image = file.image_list[0].img_txt %}
                                <div class="card-box partners-card-box mobile-full-card" style="background-image: url({{image}});">
                                    <div class="card-box-content text-center">
                                        <div class="title-height" style="color:{%if file.title == 'BME121' %}white{%else%}black{%endif%}">
                                            {{file.subtitle_txt}}
                                        </div>
                                        <div class="button-height">
                                        <button type="button" data-target="#{{item.modalId_txt}}" data-toggle="modal" data-slide-to="{{count}}" class="btn btn-primary arrow-right-white partners-read-more">Read More</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {% assign count = count | plus:1 %}
                        {%endif%}
                        {%endfor%}
                    </div>
                </div>
            </div>

            <div class="modal fade carousel slide" id="{{item.modalId_txt}}">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            <div class="carousel-inner">
                            {% assign count = 0 %}
                            {% for file in collectionItems %}
                                {% assign fileId = file.tag_txt %}
                                {% if id == fileId %}
                                <div class="carousel-item {%if count == 0 %}active{% endif %}">
                                    <div class="item-inner">
                                        <div class="col-xs-12 partner-modal-body-content text-center">
                                        {% if file.paragraph_txt %}
                                            <p>{{file.paragraph_txt}}</p>
                                        {% endif %}
                                        {% if file.image_list %}
                                        <div class="row">
                                            <div class="col-lg-12">
                                                {% for img in file.image_list %}
                                                    <div class = "image">
                                                        {% if img.description_txt %}
                                                            <img src="{{img.img_txt}}" style="width:100%">
                                                                <div class="overlay">
                                                                    <div class="text" {% if file.title == 'BME162' %}style="color:black"{%endif%}>{{img.description_txt}}</div>
                                                                </div>
                                                        {% else %}
                                                            <img src="{{img.img_txt}}" style="padding:1px; width:100%" />
                                                        {% endif %}
                                                    </div>
                                                {% endfor %}
                                            </div>
                                        </div>
                                        {% endif %}
                                        {{file.content}}
                                        </div>      
                                    </div>
                                </div>
                                {% assign count = count | plus:1 %}
                                {% endif %}
                                {% endfor %}   
                            </div>
                        </div>
                        <div class="modal-footer text-center">
                            <div class="page-navigation-controls flex-center-container w-100">
                                <button type="button" class="btn btn-plain left arrow-left-grey" href="#{{item.modalId_txt}}" data-slide="prev">Prev</button>
                                <button type="button" class="btn btn-plain back-to-list" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-plain right arrow-right-grey" href="#{{item.modalId_txt}}" data-slide="next">Next</button>
                            </div>
                        </div>        
                    </div>
                </div>
            </div>  
        </div>    
    </div>
{% assign counter = counter | plus: 1 %}
{% endfor %}
</div> -->

<div class = "container">
<div class="col-sm-12 tab-item text-center content-temp"><em>This section is currently under development.</div>
</div>

</main>
<script src="../assets/js/common.js"></script>
       
