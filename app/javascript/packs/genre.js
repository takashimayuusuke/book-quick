window.addEventListener('load', function(){
  const pullDownButton = document.getElementById("genre-list")
  const pullDownParents = document.getElementById("pull-down")
  pullDownButton.addEventListener('mouseover', function(){
    console.log("OK")
  });

  pullDownButton.addEventListener('mouseout', function(){
    console.log("mouseout")
  });

  pullDownButton.addEventListener('click', function(){
    pullDownParents.setAttribute("style", "display:block;")
  })
});