import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  // static targets = ["navElements", "hamButton"];

  // hamburgerBtn() {
  //   console.log(75);
  //   this.navElementsTarget.classList.toggle("nav-show");
  //   this.hamButtonTarget.classList.toggle("toggle");
  //   console.log(this.navElementsTarget);
  // }

  connect() {
    const hamburgerBtn = document.querySelector(".hamburger-menu");
    const navElements = document.querySelector(".nav-elements");
    hamburgerBtn.addEventListener("click", () => {
      navElements.classList.toggle("nav-show");
      hamburgerBtn.classList.toggle("toggle");
    });
  }
}
