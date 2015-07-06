# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->  
  alert 'Hey!'
  dispatcher = new WebSocketRails('localhost:3000/websocket')

  dispatcher.on_open = (data) ->
    console.log 'Connection has been established: ', data
    return

  setInterval ( ->
    location = 
      latitude: 50.19
      longitude: 18.64

    dispatcher.trigger 'locations.create', location
  ), 3000

#  // success = (response) ->
#  //   console.log 'Wow it worked: ' + response.message
#  //   return
#
#  // failure = (response) ->
#  //   console.log 'That just totally failed: ' + response.message
#  //   return
#
#  // object_to_send = data: 'test'
#  // dispatcher.trigger 'some_event', object_to_send, success, failure

