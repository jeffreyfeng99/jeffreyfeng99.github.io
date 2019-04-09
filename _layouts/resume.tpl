---
layout: default
---

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
                    <p>{{item.title_txt}}</p>
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
                    <p>{{item.title_txt}}</p>
                </div>
            </div>
            {% assign count = count| plus:1%}
            {% elsif count == 1 %}
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
                    <p>{{item.title_txt}}</p></div>
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
                    <p>{{item.title_txt}}</p></div>
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
  
        
        
    
    







