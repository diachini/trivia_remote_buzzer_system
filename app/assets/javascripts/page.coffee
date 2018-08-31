# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.room = App.cable.subscriptions.create "WebNotificationsChannel",
  received: (data) ->
    $('#messages').prepend data['message']


$ ->
  console.log("My name = " + window.localStorage.getItem('myName'));
  $('#message_sender').val(window.localStorage.getItem('myName'));