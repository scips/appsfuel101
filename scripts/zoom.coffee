class ZoomView

  constructor: () ->

  zoom: (event) ->
    imgSource = event.srcElement.src
    imgDiv = document.querySelector("#zoom div.img")
    console.log imgDiv
    imgDiv.setAttribute("style","background-image: url('#{imgSource}');background-position: center;background-repeat: no-repeat;height:100%;width:100%;position: absolute;top: 0px;")
    document.querySelector("#zoom").style.display = "block"
    document.querySelector("#main").style.display = "none"

  dezoom: () ->
    document.querySelector("#zoom").style.display = "none"
    document.querySelector("#main").style.display = "block"