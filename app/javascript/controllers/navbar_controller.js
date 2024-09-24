import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="navbar"
export default class extends Controller {
  toggle() {
    const element = document.getElementById("mobile-links");
    const barsEl = document.getElementById("bars");
    const closeEl = document.getElementById("close");

    element.classList.toggle("hidden");
    barsEl.classList.toggle("hidden");
    closeEl.classList.toggle("hidden");
  }
}
