---
layout: default
---


            
<main class="fade-out">
<div class="data-tab">
    <div class = "container">
        <ul class="nav nav-tabs">
            {% for item in page.content_list %}
            <li class="col-sm-3 tab-item text-center resume-button">
                <button  class="btn-filter" href="#{{item.id_txt}}" data-toggle="tab" >{{item.tabTitle_txt}}</button>
            </li>
            {% endfor %}
        </ul>
    </div>
</div>


<div class="tab-content portfolio">
{% assign counter = 0%}
    <!-- {% assign tags = site._modules | where: 'slug', 'tags' | first %} -->
    {% assign collectionItems = site._portfolio  %}
    
    {% for item in page.content_list %}

    {% assign id = item.id_txt %}
   



    <!-- {% assign collection = 'site.' | append: id %} -->
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
                                <div class="card-box partners-card-box mobile-full-card">
                                    <div class="card-box-content text-center">
                                        <!-- lineheight,weight, size -->
                                        <div class="title-height">{{file.date_txt}}</div> 
                                        <div class="description-height">
                                            {{file.subtitle_txt}}
                                        </div>
                                        <div class="button-height">
                                        <button type="button" data-target="#{{item.modalId_txt}}" data-toggle="modal" data-slide-to=count class="btn btn-primary arrow-right-white partners-read-more">Photos</button>
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


                                            {{file.content}}
                                            
                                        </div>

                                        
                                              
                                    </div>
                                </div>
                                {% assign count = count | plus:1%}
                                {%endif%}
                                {%endfor%}
                                
                                    
                            </div>
                        </div>
        
                        <div class="modal-footer text-center">
                            <div class="page-navigation-controls flex-center-container w-100">
                                <button type="button" class="btn btn-plain left arrow-left-grey" href="#{{item.modalId_txt}}" data-slide="prev">Previous</button>
                                <button type="button" class="btn btn-plain back-to-list" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-plain right arrow-right-grey" href="#{{item.modalId_txt}}" data-slide="next">Next</button>
                            </div>
                        </div>
        
                    </div>
                </div>
            </div>  
        </div>    
    </div>
{%assign counter = counter| plus: 1%}
    {% endfor %}
    
    


<!-- 
    <div  class="tab-pane fade" id="design">
        <div class="photos-page">

            <div class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 photo-header">
                            <h3>Design Projects</h3>
                            <p>Mixture of various design deliverables</p>
                        </div>
                    </div>
                    <div class="row card-grid">
                        
                            <div class="col-lg-4 col-sm-6 col-xs-12 card-container mobile-full-card-container">
                                <div class="card-box partners-card-box mobile-full-card">
                                    <div class="card-box-content text-center">
                                        
                                        <div class="title-height">July 2017</div> 
                                        <div class="description-height">
                                            Summer
                                        </div>
                                        <div class="button-height">
                                        <button type="button" data-target="#partnersModal" data-toggle="modal" data-slide-to="0" class="btn btn-primary arrow-right-white partners-read-more">Photos</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    
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
                                
                                <div class="carousel-item active">
                                    <div class="item-inner">
                                        
                                        <div class="col-xs-12 partner-modal-body-content text-center">
                                            
                                            <img src="DSC_0970_00001.jpg" width="380" style="padding:5px; "/>
                                            <img src="IMG_2599.jpg" width="380" style="padding:5px;" />
                                            <img src="DSC_0970_00001.jpg" width="380"style="padding:5px;" />
                                            
                                        </div>
                                    </div>
                                </div>
        
                                
                                    
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
    </div>  

    <div  class="tab-pane fade" id="labs">
        <div class="photos-page">

                <div class="section">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 photo-header">
                                <h3>Lab Related Topics</h3>
                                <p>Anything related to R&D goes here</p>
                            </div>
                        </div>
                        <div class="row card-grid">
                            
                                <div class="col-lg-4 col-sm-6 col-xs-12 card-container mobile-full-card-container">
                                    <div class="card-box partners-card-box mobile-full-card">
                                        <div class="card-box-content text-center">
                                            
                                            <div class="title-height">July 2017</div> 
                                            <div class="description-height">
                                                Summer
                                            </div>
                                            <div class="button-height">
                                            <button type="button" data-target="#partnersModal" data-toggle="modal" data-slide-to="0" class="btn btn-primary arrow-right-white partners-read-more">Photos</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        
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
                                    
                                    <div class="carousel-item active">
                                        <div class="item-inner">
                                            
                                            <div class="col-xs-12 partner-modal-body-content text-center">
                                                
                                                <img src="DSC_0970_00001.jpg" width="380" style="padding:5px; "/>
                                                <img src="IMG_2599.jpg" width="380" style="padding:5px;" />
                                                <img src="DSC_0970_00001.jpg" width="380"style="padding:5px;" />
                                                
                                            </div>
                                        </div>
                                    </div>
            
                                    
                                        
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
        </div> 
        
        
        

    <div  class="tab-pane fade" id="other">
        <div class="photos-page">

            <div class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 photo-header">
                            <h3>Other</h3>
                            <p>Miscellaneous Items</p>
                        </div>
                    </div>
                    <div class="row card-grid">
                        
                            <div class="col-lg-4 col-sm-6 col-xs-12 card-container mobile-full-card-container">
                                <div class="card-box partners-card-box mobile-full-card">
                                    <div class="card-box-content text-center">
                                        
                                        <div class="title-height">July 2017</div> 
                                        <div class="description-height">
                                            Summer
                                        </div>
                                        <div class="button-height">
                                        <button type="button" data-target="#partnersModal" data-toggle="modal" data-slide-to="0" class="btn btn-primary arrow-right-white partners-read-more">Photos</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    
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
                                
                                <div class="carousel-item active">
                                    <div class="item-inner">
                                        
                                        <div class="col-xs-12 partner-modal-body-content text-center">
                                            
                                            <img src="DSC_0970_00001.jpg" width="380" style="padding:5px; "/>
                                            <img src="IMG_2599.jpg" width="380" style="padding:5px;" />
                                            <img src="DSC_0970_00001.jpg" width="380"style="padding:5px;" />
                                            
                                        </div>
                                    </div>
                                </div>
        
                                
                                    
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
    </div>  -->

       
</div>
</main>
<script src="../assets/js/common.js"></script>

        <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
        <script src="bootstrap-4.1.1-dist/js/bootstrap.min.js"></script>
     -->
       
