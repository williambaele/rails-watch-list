
import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Welcome to your watch list", "Welcome to your chill list"],
      typeSpeed: 200,
      loop: true

    })
  }
}
