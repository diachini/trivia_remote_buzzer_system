# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.room = App.cable.subscriptions.create "WebNotificationsChannel",
  received: (data) ->
    time = new Date(data['time'])
    hours = ('0' + time.getHours()).slice(-2);
    minutes = ('0' + time.getMinutes()).slice(-2);
    seconds = ('0' + time.getSeconds()).slice(-2);
    millis = ('00' + time.getMilliseconds()).slice(-3);
    timeStr = hours + ":" + minutes + ":" + seconds + "." + millis

    if data['message_type'] == 'Allow Responses'
      $('.ring-in').addClass('ring-in--active');
    $('#messages').prepend "<div>" + data['message'] + timeStr + "</div>"

$ ->
  console.log("My name = " + window.localStorage.getItem('myName'));
  $('#message_sender').val(window.localStorage.getItem('myName'));