jQuery ->
  display = $("#display")
  form = $(".simple_form.pin")
  key = ''
  pinInput = $("input[id='pin_number']")
  buttonZero = $("#zero")
  buttonOne = $("#one")
  buttonTwo = $("#two")
  buttonThree = $("#three")
  buttonFour = $("#four")
  buttonFive = $("#five")
  buttonSix = $("#six")
  buttonSeven = $("#seven")
  buttonEight = $("#eight")
  buttonNine = $("#nine")
  buttonStar = $("#star")
  buttonPound = $("#pound")

  buttonHandler = ->
    pinInput.val(key)
    if key == ''
      display.html '<em>ready</em>'
    else
      display.html pinInput.val()


  buttonZero.click (e) ->
    e.preventDefault()
    unless key.length > 9
      key = key.concat(0)
    buttonHandler()

  buttonOne.click (e) ->
    e.preventDefault()
    unless key.length > 9
      key = key.concat(1)
    buttonHandler()

  buttonTwo.click (e) ->
    e.preventDefault()
    unless key.length > 9
      key = key.concat(2)
    buttonHandler()

  buttonThree.click (e) ->
    e.preventDefault()
    unless key.length > 9
      key = key.concat(3)
    buttonHandler()

  buttonFour.click (e) ->
    e.preventDefault()
    unless key.length > 9
      key = key.concat(4)
    buttonHandler()

  buttonFive.click (e) ->
    e.preventDefault()
    unless key.length > 9
      key = key.concat(5)
    buttonHandler()

  buttonSix.click (e) ->
    e.preventDefault()
    unless key.length > 9
      key = key.concat(6)
    buttonHandler()

  buttonSeven.click (e) ->
    e.preventDefault()
    unless key.length > 9
      key = key.concat(7)
    buttonHandler()

  buttonEight.click (e) ->
    e.preventDefault()
    unless key.length > 9
      key = key.concat(8)
    buttonHandler()

  buttonNine.click (e) ->
    e.preventDefault()
    unless key.length > 9
      key = key.concat(9)
    buttonHandler()

  buttonStar.click (e) ->
    e.preventDefault()
    key = key.slice(0,-1)
    buttonHandler()

  buttonPound.one "click", (e) ->
    e.preventDefault()
    form.submit()
