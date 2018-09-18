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

