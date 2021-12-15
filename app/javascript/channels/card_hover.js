const cardHover = () => {
  const cardHeading = document.querySelector(".card-heading")

    const cards = document.querySelectorAll(".card-top").forEach(card => {
      const innerCardHeading = card.querySelector(".card-heading")
      card.addEventListener("mouseover", () => {
        innerCardHeading.classList.add("card-heading-active")
        console.log(innerCardHeading);
      })
      card.addEventListener("mouseout", () => {

        innerCardHeading.classList.remove("card-heading-active")
        console.log("mouseout");
      })
    });
    }
export { cardHover };
