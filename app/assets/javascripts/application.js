// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require materialize

function add_dist() {
  document.getElementById('distributor-form').style.display = "block"
}

function add_product() {
  document.getElementById('products-form').style.display = "block"
}

function order_form() {
  document.getElementById('order-form').style.display = "block"
}

function payment(id) {
  document.getElementById('float-form').style.display = "block"
}

function paymentOption(id) {
  console.log(id);
  if (document.getElementById('payment_channel_id').value == 4) {
    var option = "Instractions to pay via RTGS"
    document.getElementById('options').innerHTML = option
  } else if (document.getElementById('payment_channel_id').value == 5) {
    var option = "Instractions to pay via EFT"
    document.getElementById('options').innerHTML = option
  } else if (document.getElementById('payment_channel_id').value == 6) {
    var option = "Instractions to pay by Check"
    document.getElementById('options').innerHTML = option
  } else {
    var option = "Instractions to pay via Mpesa"
    document.getElementById('options').innerHTML = option
  }

}
