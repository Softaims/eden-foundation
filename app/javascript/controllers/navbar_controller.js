import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    const hamburgerBtn = document.querySelector(".hamburger-menu");
    const navElements = document.querySelector(".nav-elements");
    hamburgerBtn.addEventListener("click", () => {
      navElements.classList.toggle("nav-show");
      hamburgerBtn.classList.toggle("toggle");
    });

    if (window.location.pathname === "/contact" || window.location.pathname === "/our-centers") {
      const prayerLink = document.querySelector(".about-us-link");
      const aboutLink = document.querySelector(".prayer-timetable-link");

      prayerLink.parentNode.style.display = "none";
      aboutLink.parentNode.style.display = "none";
    }
  }
}
