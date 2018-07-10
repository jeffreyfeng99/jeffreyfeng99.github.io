---
layout: default
---

<header class="fade-out">
    <div id="particles-js">
        <div class="home-center">
            <div class="home-centered">
                <h1>{{page.name_txt}}</h1>
                <ul>
                    {% for item in page.media_list %}
                    <li><a href="{{item.link_txt}}"><img src="{{item.img_txt}}"></a></li>
                    {% endfor %}
                </ul> 
            </div>
        </div>
    </div> 
</header>


<script src="/assets/js/particles.js"></script>
<script src="/assets/js/app.js"></script>   
<script src="/assets/js/common.js"></script>



<!-- <div id="particles-js">
   
        <div class="home-center">
            <div class="home-centered">
        <h1>Jeffrey Feng</h1>
        <ul>
            <li><a href="mailto:j64feng@edu.uwaterloo.ca"><img src="{{ site.baseurl }}/assets/images/email.png"></a></li>
            <li><a href="https://github.com/j64feng/"><img src="{{ site.baseurl }}/assets/images/github.png"></a></li>
            <li><a href="https://www.linkedin.com/in/j64feng/"><img src="{{ site.baseurl }}/assets/images/linkedin.png"></a></li>
        </ul> 

        </div>
        </div>


</div> 

<script src="particles.js"></script>
<script src="app.js"></script>    -->
