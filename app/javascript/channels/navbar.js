const navSlide = () => {
  const navBar = document.querySelector("nav");
  const burger = document.querySelector(".burger");
  const nav = document.querySelector(".nav-links");
  const navLinks = document.querySelectorAll(".nav-links li");
  // Toggle navbar
  burger.addEventListener("click", () => {
    console.log("clicked");
    nav.classList.toggle("nav-active");
    navBar.classList.toggle("nav-transperency")
    console.log(nav)
    //Animating the links
    navLinks.forEach((link, index) => {
      if (link.style.animation) {
        link.style.animation = ""
      } else {
        link.style.animation = `navLinkFade 0.5s ease forwards ${index / 7 + 0.5}s`;
      }
    })
  });
}
export { navSlide };
