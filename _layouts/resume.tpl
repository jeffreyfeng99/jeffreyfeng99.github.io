---
layout: default
---
<!-- 
        <nav class="navbar navbar-expand-md">
                <div class="container">
                <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                    
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/portfolio.html">Portfolio</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="/photos.html">Photos</a>
                        </li>
                    </ul>
                    
                </div>
                <div class="mx-auto order-0">
                    <a class="navbar-brand mx-auto" href="/home.html" style="font-size:30px;color:black">Jeffrey Feng</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
                <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/resume.html">Resume</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/contact.html">About</a>
                        </li>
                    </ul>
                </div>
            </div>
            </nav>
         -->

<!-- <div class="data-tab">
    <div class = "container">
        <ul class="nav nav-tabs">
            <li class="col-sm-6 col-xs-12 tab-item text-center resume-button">
                <button  class="btn-filter resume-button" href="#text" data-toggle="tab" >Standard</button>
            </li>
            <li class="col-sm-6 col-xs-12 tab-item text-center resume-button">
                <button class="btn-filter" href="#graph" data-toggle="tab">Graphical</button>
            </li>
        </ul>
    </div>
</div> -->
        

<!-- <div class="tab-content"> -->
<!-- 
    <div class="tab-pane active fade show" id="text"> -->
<main class="fade-out">
    <div class="container">
        
        <div class="col-lg-12 resume-header">
            <h2>{{page.header_txt}}</h2>
            
        </div>
        <div class="col-lg-12" style="margin-bottom:10px">
                <a href="{{page.headerFile_txt}}" target="_blank" >{{page.headerLink_txt}}</a>
        </div>
        
        {% for item in page.skills_list %}
        <div class="col-lg-12">
            <div class="row">
                <div class="col-lg-2 col-sm-4 col-xs-12 bar-item">
                    <span class="helper"></span> <img src="../assets/images/blue-bar.svg" />
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 section-title">
                    <p><strong>{{item.title_txt}}</strong></p>
                </div>
            </div>
            
            <div class="row notes">
                {% if item.date_txt %}
                <div class="col-lg-2 col-sm-4 col-xs-12">
                    {{ item.date_txt }}
                </div>
                {% else %}
                <div class="col-lg-2 col-sm-4 col-xs-12">   
                </div>
                {%endif%}

                <div class="col-lg-10 col-sm-8 col-xs-12">
                    {{item.content_txt | markdownify}}
                </div>
            </div>
        </div>
        {% endfor %}
            
            
        <div class="col-lg-12">
            {%assign count = 0 %}
            {% for item in page.projectContent_list%}
            {% if count ==0 %}
            <div class="row">
                <div class="col-lg-2 col-sm-4 col-xs-12 bar-item">
                      <span class="helper"></span> <img src="../assets/images/blue-bar.svg" />
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 section-title">
                    <p><strong>{{item.title_txt}}</strong></p></div>
            </div>
            {% assign count = count| plus:1%}
            {% elsif count == 1%}
            <div class="row notes">
                <div class="col-lg-2 col-sm-4 col-xs-12">
                    {{item.date_txt}}
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 experience-title">
                    <p>{{item.experienceTitle_txt}}</p>
                    {{item.content_txt | markdownify}}
                </div>
            </div>
            {% assign count = count| plus: 1%}
            {% else %}
            <div class="row">
                <div class="col-lg-2 col-sm-4 col-xs-12">
                    {{item.date_txt}}
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 experience-title">
                    <p>{{item.experienceTitle_txt}}</p>
                    {{item.content_txt | markdownify}}
                </div>
            </div>
            {%endif%}
            {%endfor%}
        </div>


        <div class="col-lg-12">
            {%assign count = 0 %}
            {% for item in page.experienceContent_list%}
            {% if count ==0 %}
            <div class="row">
                <div class="col-lg-2 col-sm-4 col-xs-12 bar-item">
                        <span class="helper"></span> <img src="../assets/images/blue-bar.svg" />
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 section-title">
                    <p><strong>{{item.title_txt}}</strong></p></div>
            </div>
            {% assign count = count| plus:1%}
            {% elsif count == 1%}
            <div class="row notes">
                <div class="col-lg-2 col-sm-4 col-xs-12">
                    {{item.date_txt}}
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 experience-title">
                    <p>{{item.experienceTitle_txt}}</p>
                    {{item.content_txt | markdownify}}
                </div>
            </div>
            {% assign count = count| plus: 1%}
            {% else %}
            <div class="row">
                <div class="col-lg-2 col-sm-4 col-xs-12">
                    {{item.date_txt}}
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 experience-title">
                    <p>{{item.experienceTitle_txt}}</p>
                    {{item.content_txt | markdownify}}
                </div>
            </div>
            {%endif%}
            {%endfor%}
        </div>
              
        <div class="col-lg-12">
            {%assign count = 0 %}
            {% for item in page.education_list%}
            {% if count ==0 %}
            <div class="row">
                <div class="col-lg-2 col-sm-4 col-xs-12 bar-item">
                        <span class="helper"></span> <img src="../assets/images/blue-bar.svg" />
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 section-title">
                    <p><strong>{{item.title_txt}}</strong></p></div>
            </div>
            {% assign count = count| plus:1%}
            {% elsif count == 1%}
            <div class="row notes">
                <div class="col-lg-2 col-sm-4 col-xs-12">
                    {{item.date_txt}}
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12">
                    {{item.content_txt | markdownify}}
                </div>
            </div>
            {% assign count = count| plus: 1%}
            {% else %}
            <div class="row">
                <div class="col-lg-2 col-sm-4 col-xs-12">
                    {{item.date_txt}}
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12">
                    {{item.content_txt | markdownify}}
                </div>
            </div>
            {%endif%}
            {%endfor%}
        </div>

        <div class="col-lg-12">
            {%assign count = 0 %}
            {% for item in page.interests_list%}
            {% if count ==0 %}
            <div class="row">
                <div class="col-lg-2 col-sm-4 col-xs-12 bar-item">
                        <span class="helper"></span> <img src="../assets/images/blue-bar.svg" />
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 section-title">
                    <p><strong>{{item.title_txt}}</strong></p></div>
            </div>
            {% assign count = count| plus:1%}
            {% elsif count == 1%}
            <div class="row notes">
                <div class="col-lg-2 col-sm-4 col-xs-12">
                    
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12">
                    {{item.content_txt | markdownify}}
                </div>
            </div>
            {% assign count = count| plus: 1%}
            {% else %}
            <div class="row">
                <div class="col-lg-2 col-sm-4 col-xs-12">
                    
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12">
                    {{item.content_txt | markdownify}}
                </div>
            </div>
            {%endif%}
            {%endfor%}
        </div>

    </div>
</main>
<script src="/assets/js/common.js"></script>
  
    <!-- </div> -->
        
        
    
    



    <!-- <div  class="tab-pane fade" id="graph">
        <div class="container">
            <h2>H</h2>
            <div class="row">
                <div class="col-lg-12">
                    <p>Stuff</p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ol>
                        
                        <li>
                            <h3>hj</h3>
                            <p>uiop</p>
                        </li>
                        
                    </ol>
                </div>
            </div>
        </div>
    </div>   -->

        

        <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
        <script src="bootstrap-4.1.1-dist/js/bootstrap.min.js"></script>
     -->

