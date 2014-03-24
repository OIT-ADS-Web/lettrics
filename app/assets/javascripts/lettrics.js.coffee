jQuery ->
  updateCharacterCountdown = (textarea) ->
    counter = $(textarea.data('counter'))
    characterLimit = textarea.data('limit')
    charsTyped = textarea.val().length
    charsLeft = characterLimit - charsTyped
    counter.text(charsLeft)
    if charsLeft < 0
      counter.addClass('text-error')
    else
      counter.removeClass('text-error')

  $('.lettrify').each (index) ->
    counter = $($(this).data('counter'))
    limit = counter.text()
    $(this).data('limit', limit)
    updateCharacterCountdown($(this))

  $('.lettrify').change ->
    updateCharacterCountdown($(this))
  $('.lettrify').keyup ->
    updateCharacterCountdown($(this))
