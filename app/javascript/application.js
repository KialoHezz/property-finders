// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


const details= document.getElementById("details");

details.addEventListener("click", () =>{
    const propDetails = document.getElementById("prop-details");
    
    console.log(propDetails.classList.toggle("open"));
});