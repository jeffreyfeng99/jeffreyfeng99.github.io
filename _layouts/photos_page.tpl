---
layout: default
---
<main class="fade-out">
<div class="photos-page">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 photo-header" style="padding-bottom:30px">
                    <h3 class="grid-item-title">{{page.title}} - {{page.date_txt}}</h3>
                    <!-- <p>{{page.subtitle_txt}}</p> -->
                </div>
            </div>
            {% assign count = 0 %}
            {% if page.paragraph_txt %}
            <p>{{page.paragraph_txt}}</p>
            {% endif %}
            <!-- <div class="row" style="padding-left: 15px;padding-right:15px">
                <div class="col-lg-4 col-sm-6 image-col-left-page">
                    <div>
                        {% for image in page.imageLeft_list %}
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
                <div class="col-lg-4 col-sm-6 image-col-center-page">
                    <div>
                        {% for image in page.imageCenter_list %}
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
                <div class="col-lg-4 col-sm-6 image-col-right-page">
                    <div>
                        {% for image in page.imageRight_list %}
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
            {%assign count = count | plus:1 %}
        </div> -->
        <div class="container">
            <div class="grid">
                <div>
                    {% for image in page.image_list %}
                    <div class="grid-item image">
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
    
    {% assign imageCollection = site._photos | sort: 'order' %}
    {% assign size = imageCollection | size %}
    {% assign size = size | minus: 1 %}
    {% assign count = 0 %}
    <div class="section">
        <div class="container">
            <div class="row">
                {% for item in imageCollection %}
                    {% if page.permalink == item.permalink %}
                    {% if count == 0 %}
                    {% assign nextCount = count | plus: 1%}
                    {% assign nextLink = imageCollection[nextCount].permalink %}
                        <div class="page-navigation-controls flex-no-wrap">
                            <a class="btn left photos-left not-active" href="" data-slide="prev">Previous</a>
                            <a class="btn back-to-list photos-back" href="/photos/"></a>
                            <a class="btn right photos-right" href="{{nextLink}}" data-slide="next">Next</a>
                        </div>
                    {% elsif count == size %}
                    {% assign prevCount = count | minus: 1 %}
                    {% assign prevLink = imageCollection[prevCount].permalink %}
                        <div class="page-navigation-controls flex-no-wrap">
                            <a class="btn left photos-left" href="{{prevLink}}" data-slide="prev">Previous</a>
                            <a class="btn back-to-list photos-back" href="/photos/"></a>
                            <a class="btn right photos-right not-active" href="" data-slide="next">Next</a>
                        </div>
                    {% else %}
                    {% assign prevCount = count | minus: 1 %}
                    {% assign nextCount = count | plus: 1%}
                    {% assign nextLink = imageCollection[nextCount].permalink %}
                    {% assign prevLink = imageCollection[prevCount].permalink %}
                        <div class="page-navigation-controls flex-no-wrap">
                            <a class="btn left photos-left" href="{{prevLink}}">Previous</a>
                            <a class="btn back-to-list photos-back" href="/photos/"></a>
                            <a class="btn right photos-right" href="{{nextLink}}" >Next</a>
                        </div>
                    {% endif %}
                    {% endif %}
                {% assign count = count | plus: 1 %}
                {% endfor %}
            </div>
        </div>
    </div>
</div>
</main>
<script src="../assets/js/common.js"></script>
<script src="../node_modules/masonry-layout/dist/masonry.pkgd.min.js"></script>
    
