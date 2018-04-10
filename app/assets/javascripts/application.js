//= require rails-ujs
//= require_tree .

var flashMessage = document.querySelector('.close');
if (flashMessage) {
  flashMessage.addEventListener("click", function() {
    this.parentElement.classList.add("hidden");
  });
}

var buttonEditor = document.querySelectorAll('.no-disable.no-mobile');
var navBarClassList = document.querySelector('.navbar-blog').classList;
if (buttonEditor) {
  buttonEditor[0].addEventListener("click", function() {
    if (navBarClassList.contains('hidden')) {
    }else{
      navBarClassList.add("hidden");
    }
  });
  buttonEditor[1].addEventListener("click", function() {
    navBarClassList.toggle("hidden");
  });
}
