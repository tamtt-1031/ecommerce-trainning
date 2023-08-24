import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap/dist/js/bootstrap"
import "bootstrap/dist/css/bootstrap"
import "stylesheets/application"

require("@rails/actiontext")
require("trix")

Rails.start()
Turbolinks.start()
ActiveStorage.start()
