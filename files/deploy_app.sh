#!/bin/bash
# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Meow World!</h2></center>
  Welcome to ${PREFIX}'s app. Replace this text with your own.
  <div id="ball" style="display:inline-block; min-width: 6em; min-height: 6em; border-radius: 3em; background-color: red; border: 1px solid black; position: absolute; left: 0; top: 0"></div>
  <!-- END -->
  <script>
    const ball = document.getElementById("ball");
    let xd = 15;
    let yd = 5;
    let x = 0;
    let y = 0;
    window.setInterval(function() {
      if (x < 0) {
        xd = 5;
      }
      if (x >= window.innerWidth) {
        xd = -5;
      }
      x += xd;
      ball.style.left = x + "px";

      yd = yd += 6;
      if (y > window.innerHeight) {
        yd = -yd+7;
      }
      y += yd;
      ball.style.top = y + "px";
    }, 100);
  </script>
  
  </div>
  </body>
</html>
EOM

echo "Script complete."