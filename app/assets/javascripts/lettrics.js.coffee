$.fn.lettrify = () ->
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

  this.each (index) =>
    counter = $($(this).data('counter'))
    limit = counter.text()
    $(this).data('limit', limit)
    updateCharacterCountdown(this)

  this.change ->
    updateCharacterCountdown($(this))
  this.keyup ->
    updateCharacterCountdown($(this))

jQuery ->
  $('.lettrify').lettrify()
