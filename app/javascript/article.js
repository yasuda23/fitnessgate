window.addEventListener('turbo:load', function(){
  const articles = document.querySelectorAll(".shadow");
  articles.forEach(function(article) {
    article.addEventListener('mouseover', function() {
      this.setAttribute("style", "box-shadow: 10px 10px 10px 10px rgba(0, 0, 0, 0.3);");
    });
    article.addEventListener('mouseout', function() {
      this.removeAttribute("style");
    });
  });
});