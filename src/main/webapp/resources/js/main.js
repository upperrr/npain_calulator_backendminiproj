//main꺼 ~13
window.console = window.console || function(t) {};

if (document.location.search.match(/type=embed/gi)) {
  window.parent.postMessage("resize", "*");
}

$('button').on('click', function () {
$('.block-signup').
toggleClass('is-active');
});
//# sourceURL=pen.js
// /main꺼