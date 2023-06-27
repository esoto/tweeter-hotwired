import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {
  static targets = ["select"]
  static values = {
    url: String,
    param: String,
  }

  connect() {
    if (this.selectTarget.id === '') {
      this.selectTarget.id = `select-${Math.random().toString(36).substr(2, 9)}`
    }
  }

  change(event) {
    let params = new URLSearchParams()
    params.append(this.paramValue, event.target.value)
    params.append("target", this.selectTarget.id)
    get(`${this.urlValue}?${params}`, {
      responseKind: "turbo-stream"
    })
  }
}
