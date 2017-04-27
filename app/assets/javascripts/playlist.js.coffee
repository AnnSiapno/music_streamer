$(document).on 'turbolinks:load', ->
  jQuery ->
    $('#playlist').sortable
      axis: 'y'
      update: ->
        $.post($(this).data('update-url'), $(this).sortable('serialize'))
