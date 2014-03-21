jQuery ->
  updateCharacterCountdown = () ->
    charsTyped = $("textarea").val().length;
    charsLeft = 4000 - charsTyped
    $('span#lettrics-characters-available').text(charsLeft)
    if charsLeft < 0
      $('span#lettrics-characters-available').addClass('text-error')
    else
      $('span#lettrics-characters-available').removeClass('text-error')

  updateCharacterCountdown() if $('textarea').length > 0

  $('textarea').change(updateCharacterCountdown)
  $('textarea').keyup(updateCharacterCountdown)
