jQuery ->
  alert 'hello!'

  updateCharacterCountdown = () ->
    charsTyped = $("textarea.lettrify").val().length;
    charsLeft = 4000 - charsTyped
    $('span#lettrics-characters-available').text(charsLeft)
    if charsLeft < 0
      $('span#lettrics-characters-available').addClass('text-error')
    else
      $('span#lettrics-characters-available').removeClass('text-error')

  updateCharacterCountdown() if $('textarea.lettrify').length > 0

  $('textarea.lettrify').change(updateCharacterCountdown)
  $('textarea.lettrify').keyup(updateCharacterCountdown)
