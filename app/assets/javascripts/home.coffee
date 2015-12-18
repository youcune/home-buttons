$ ->
  $('a.btn').click (e) ->
    e.preventDefault()

    endpoint = $(this).attr('href')
    $.ajax
      url: endpoint
      method: 'POST'
    .done (data) ->
      if data.status == 'OK'
        $('#alert').html('<div class="alert alert-success">' + data.message + '</div>')
      else
        alert('エラーのようです')
    .fail ->
      alert('エラーのようです')
