import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"
import { patch } from "@rails/request.js"
 
export default class extends Controller {
  static values = {
    handleSelector: String,
  }
 
  connect() {
    const options = {
      onEnd: this.onEnd.bind(this),
      ghostClass: "bg-red-300"
    }
    if (this.hasHandleSelectorValue) {
      options.handle = this.handleSelectorValue
    }
    Sortable.create(this.element, options)
  }
 
  onEnd(evt) {
    const body = { row_order_position: evt.newIndex }
    patch(evt.item.dataset.sortableUrl, {
      body: JSON.stringify(body),
      responseKind: "turbo-stream",
    })
  }
}