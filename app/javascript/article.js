window.addEventListener('turbo:load', function(){
  const articles = document.querySelectorAll(".row");
  articles.forEach(function(article) {
    article.addEventListener('mouseover', function() {
      this.setAttribute("style", "box-shadow: -50px -10px 20px -10px rgba(0, 0, 0, 0.5);");
    });
    article.addEventListener('mouseout', function() {
      this.removeAttribute("style");
    });
  });
});