---
layout: default
---

{% assign imageCollection = site._photos | sort: 'order' %}

<main class="fade-out">
<div class="photos-page">
    <div class="section">
        <div class="container">

            <div class="row">
                <div class="col-lg-12 photo-header">
                    <h3>{{page.title_txt}}</h3>
                    <p>{{page.subtitle_txt}}</p>
                </div>
            </div>
            <div class="row card-grid">
                {% assign count = 0 %}
                {% for item in imageCollection %}
                    <div class="col-lg-4 col-sm-6 col-xs-12 card-container mobile-full-card-container">
                        {% assign image = item.image_list[0].img_txt %}
                        <div class="card-box partners-card-box mobile-full-card" style="background-image: url({{image}})">
                            <div class="card-box-content text-center">
                                <!-- lineheight,weight, size -->
                                <div class="title-height" style="color:{{item.dateColour_txt}}">{{item.date_txt}}</div> 
                                <div class="description-height" style="color:{{item.subtitleColour_txt}}">
                                    {{item.subtitle_txt}}
                                </div>
                                <div class="button-height">
                                <!-- <button type="button" data-target="#partnersModal" data-toggle="modal" data-slide-to={{count}} class="btn btn-primary arrow-right-white partners-read-more">Photos</button> -->
                                <a class="btn btn-primary arrow-right-white partners-read-more photos-button" href="{{item.permalink}}">Photos</a>
                                </div>
                            </div>
                        </div>
                    </div>
                {%assign count = count | plus:1%}
                {% endfor %}
            </div>
        </div>
    </div>
    <!-- <div class="modal fade carousel slide" id="partnersModal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <div class="carousel-inner">
                        {% assign count = 0 %}
                        {% for item in imageCollection %}
                        <div class="carousel-item {%if count == 0 %}active{% endif %}">
                            <div class="item-inner"> 
                                <div class="col-xs-12 partner-modal-body-content text-center">
                                    {% if item.paragraph_txt %}
                                    <p>{{item.paragraph_txt}}</p>
                                    {% endif %}
                                    <div class="row">
                                        <div class="col-lg-6 image-col-left">
                                            <div>
                                                {% for image in item.imageLeft_list %}
                                                <div class="image">
                                                    {%comment%}{% assign height = image.height_txt | append: "px"%}{%endcomment%}
                                                    <img src="{{image.img_txt}}" >
                                                    <div class="overlay">
                                                        <div class="text">
                                                            {{image.description_txt}}
                                                        </div>
                                                    </div>
                                                </div>
                                                {%endfor%}
                                            </div>     
                                        </div>
                                        <div class="col-lg-6 image-col-right">
                                            <div>
                                                {% for image in item.imageRight_list %}
                                                <div class="image">
                                                    {%comment%}{% assign height = image.height_txt | append: "px"%}{%endcomment%}
                                                    <img src="{{image.img_txt}}">
                                                    <div class="overlay">
                                                        <div class="text">
                                                            {{image.description_txt}}
                                                        </div>
                                                    </div>
                                                </div>
                                                {%endfor%}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {%assign count = count | plus:1 %}
                        {% endfor %}
                    </div>
                </div>
                <div class="modal-footer text-center">
                    <div class="page-navigation-controls flex-center-container w-100">
                        <button type="button" class="btn btn-plain left arrow-left-grey" href="#partnersModal" data-slide="prev">Previous</button>
                        <button type="button" class="btn btn-plain back-to-list" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-plain right arrow-right-grey" href="#partnersModal" data-slide="next">Next</button>
                    </div>
                </div>
            </div>
        </div>
    </div>  -->
</div>
</main>
<script src="../assets/js/common.js"></script>
     
    
