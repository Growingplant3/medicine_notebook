//= require jquery
//= require rails-ujs
//= require popper
//= require bootstrap
//= require jquery-ujs
//= require jquery
//= require bootstrap-sprockets

//= require jquery.jpostal
$(function(){
  $('input[name="user[postcode]"]').jpostal({
      postcode : [
          '[name="user[postcode]"]',
      ],
      address : {
          '[name="user[prefecture_code]"]': "%3",
          '[name="user[address_city]"]': "%4%5",
          '[name="user[address_street]"]': "%6%7"
      }
  });
});