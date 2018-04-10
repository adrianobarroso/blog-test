//= require rails-ujs
//= require_tree .

var flashMessages = document.querySelectorAll('.close');
if (flashMessages) {
  for (var i=0; i < flashMessages.length; i++) {
    flashMessages[i].addEventListener("click", function() {
      this.parentElement.classList.add("hidden");
    });
  }
}

var buttonEditor = document.querySelectorAll('.no-disable.no-mobile');
var navBarClassList = document.querySelector('.navbar-blog').classList;
if (buttonEditor.length > 0) {
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
