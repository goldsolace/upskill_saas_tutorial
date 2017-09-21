/* global $,Stripe */

// Document ready
$(document).on('turbolinks:load', () => {
  var theForm = $('#pro_form');
  var submitBtn = $('#form-submit-btn');
  
  // Set Stripe public key
  Stripe.setPublishableKey( $('meta[name="stripe-key"]').attr('content') );
  
  // When user clicks form submit btn
  submitBtn.click((e) => {
    // Prevent default submission behaviour.
    event.preventDefault();
  });
});
    

// Collect the credit card fields
// Send info to Stripe
// Inject card token as hidden field into form
// Submit form to our rails app
