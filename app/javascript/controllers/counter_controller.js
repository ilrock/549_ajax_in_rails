import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['counter']

  refresh() {
    fetch('/restaurants', {
      headers: { accept: "application/json" }
    })
      .then(response => response.json())
      .then(data => {
        this.counterTarget.innerText = data.restaurant_count
      })
  }
}