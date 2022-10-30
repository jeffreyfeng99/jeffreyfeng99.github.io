---
layout: default
---

<main class="fade-out">
    <div class="container">

        <!-- HEADER AND PDF LINK -->
        <!-- remove text-center and content-temp and change to h2 -->
        <div class="col-sm-12 resume-header text-center content-temp">
            {{page.header_txt | markdownify}}
        </div>
        <!-- <div class="col-lg-12" style="padding-top: 20px;padding-bottom: 1%; margin-bottom:10px">
                <a href="{{page.headerFile_txt}}" target="_blank" >{{page.headerLink_txt}}</a>
        </div> -->

        <!-- SKILLS -->
        {% for item in page.skills_list %}
        <div class="col-lg-12" style="padding-top: 20px">
            <div class="row section-header">
                <div class="col-lg-2 col-sm-4 col-xs-12 bar-item">
                    <span class="helper"></span> <img src="../assets/images/blue-bar.svg" />
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 section-title">
                    <p>{{item.title_txt}}</p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-4 col-xs-12"></div>
                <div class="col-lg-10 col-sm-8 col-xs-12">
                    {{item.content_txt | markdownify}}
                </div>
            </div>
        </div>
        {% endfor %}


        <!-- EXP -->
        <div class="col-lg-12">
            {%assign count = 0 %}
            {% for item in page.experienceContent_list%}
            {% if count ==0 %}
            <div class="row section-header">
                <div class="col-lg-2 col-sm-4 col-xs-12 bar-item">
                      <span class="helper"></span> <img src="../assets/images/blue-bar.svg" />
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 section-title">
                    <p>{{item.title_txt}}</p>
                </div>
            </div>
            {% assign count = count| plus:1%}
            {% else %}
            <div class="row">
                <div class="col-lg-2 col-sm-4 col-xs-12">
                    {{item.date_txt}}
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 experience-title">
                    <h4>{{item.experienceTitle_txt}}</h4>
                    <p>{{item.experiencesubTitle_txt | markdownify}}</p>
                    {{item.content_txt | markdownify}}
                </div>
            </div>
            {%endif%}
            {%endfor%}
        </div>

        <!-- Projects -->
        <div class="col-lg-12">
            {% for item in page.projectContent_list%}
            <div class="row section-header">
                <div class="col-lg-2 col-sm-4 col-xs-12 bar-item">
                        <span class="helper"></span> <img src="../assets/images/blue-bar.svg" />
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 section-title">
                    <p>{{item.title_txt}}</p></div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-4 col-xs-12">
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 experience-title">
                    {{item.content_txt | markdownify}}
                </div>
            </div>
            {%endfor%}
        </div>
        
        <!-- Education -->
        <div class="col-lg-12">
            {%assign count = 0 %}
            {% for item in page.education_list%}
            {% if count ==0 %}
            <div class="row section-header">
                <div class="col-lg-2 col-sm-4 col-xs-12 bar-item">
                        <span class="helper"></span> <img src="../assets/images/blue-bar.svg" />
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 section-title">
                    <p>{{item.title_txt}}</p></div>
            </div>
            {% assign count = count| plus:1%}
            {% else %}
            <div class="row">
                <div class="col-lg-2 col-sm-4 col-xs-12">
                    {{item.date_txt}}
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 experience-title">
                    <h4>{{item.experienceTitle_txt}}</h4>
                    {{item.content_txt | markdownify}}
                </div>
            </div>
            {%endif%}
            {%endfor%}
        </div>

        <!-- Interests -->
        <div class="col-lg-12">
            {%assign count = 0 %}
            {% for item in page.interests_list%}
            {% if count ==0 %}
            <div class="row section-header">
                <div class="col-lg-2 col-sm-4 col-xs-12 bar-item">
                        <span class="helper"></span> <img src="../assets/images/blue-bar.svg" />
                </div>
                <div class="col-lg-10 col-sm-8 col-xs-12 section-title">
                    <p><strong>{{item.title_txt}}</strong></p></div>
            </div>
            {% assign count = count| plus:1%}
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
  
        
        
    
    







