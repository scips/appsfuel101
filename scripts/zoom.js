// Generated by CoffeeScript 1.3.3
var ZoomView;

ZoomView = (function() {

  function ZoomView() {}

  ZoomView.prototype.zoom = function(event) {
    var imgDiv, imgSource;
    imgSource = event.srcElement.src;
    imgDiv = document.querySelector("#zoom div.img");
    console.log(imgDiv);
    imgDiv.setAttribute("style", "background-image: url('" + imgSource + "');background-position: center;background-repeat: no-repeat;height:100%;width:100%;position: absolute;top: 0px;");
    document.querySelector("#zoom").style.display = "block";
    return document.querySelector("#main").style.display = "none";
  };

  ZoomView.prototype.dezoom = function() {
    document.querySelector("#zoom").style.display = "none";
    return document.querySelector("#main").style.display = "block";
  };

  return ZoomView;

})();