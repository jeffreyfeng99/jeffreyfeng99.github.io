---
layout: default
---

{% assign imageCollection = site._photos | sort: 'order' | reverse %}

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
                        {% assign image = item.imageLeft_list[0].img_txt %}
                        <div class="card-box partners-card-box mobile-full-card" style="background-image: url({{image}})">
                            <div class="card-box-content text-center">
                              <!-- lineheight,weight, size -->
                              <div class="title-height">{{item.date_txt}}</div> 
                                <div class="description-height">
                                    {{item.subtitle_txt}}
                                </div>
                                <div class="button-height">
                                <button type="button" data-target="#partnersModal" data-toggle="modal" data-slide-to={{count}} class="btn btn-primary arrow-right-white partners-read-more">Photos</button>
                                </div>
                            </div>
                        </div>
                    </div>
                {%assign count = count | plus:1%}
                {% endfor %}
            </div>
        </div>
    </div>
    <div class="modal fade carousel slide" id="partnersModal">
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
                                    
                                    
                                    <div class="col-lg-6">
                                            
                                                <div >{% for image in item.imageLeft_list %}<div class="image">
                                                    {% assign height = image.height_txt | append: "px"%}
                                        <img src="{{image.img_txt}}" width="393"><div class="overlay" style="height:height">
                                                <div class="text">{{image.description_txt}}</div>
                                              </div></div>{%endfor%}</div>
                                              
                                              
                                    </div>
                                    <div class="col-lg-6">
                                            <div >{% for image in item.imageRight_list %}<div class="image">

                                                    {% assign height = image.height_txt | append: "px"%}

                                                    <img src="{{image.img_txt}}" width="393"><div class="overlay" style="height:height">
                                                            <div class="text">{{image.description_txt}}</div>
                                                          </div></div>{%endfor%}</div>
                                                          
                                        
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
    </div>


   

    
</div>
</main>
<script src="../assets/js/common.js"></script>
        
<!-- <script> 
$(function(){

    /*
    Add this code to every page.

    We start by hiding the body, and then fading it in.
    */


    /*
    Now we deal with all 'a' tags...
    */
    $('a').click(function(){
        /*
        Get the url from this anchors href
        */
        var link = $(this).attr('href');
        /*
        Fade out the whole page
        */
        $('body').fadeOut(100, function(){
            /*
            When that's done (on the 'callback') send the browser to the link.
            */
            window.location.href = link;
        });
        return false;
    });

});
</script> -->

    
<!-- 
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script src="bootstrap-4.1.1-dist/js/bootstrap.min.js"></script> -->
    
