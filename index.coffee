http = require 'http'

faces = [

  '( ͡° ͜ʖ ͡°)'

  '( ͠° ͟ʖ ͡°)'

  'ᕦ( ͡° ͜ʖ ͡°)ᕤ'

  '( ͡~ ͜ʖ ͡°)'

  '( ͡o ͜ʖ ͡o)'

  '° ͜ʖ ͡ -'

  '( ͡͡ ° ͜ ʖ ͡ °)'

  '( ͡ ͡° ͡° ʖ ͡° ͡°)'

  '(ง ͠° ͟ل͜ ͡°)ง'

  '( ͡° ͜ʖ ͡ °)'

  '(ʖ ͜° ͜ʖ)'

  '[ ͡° ͜ʖ ͡°]'

  'ヽ༼ຈل͜ຈ༽ﾉ'

  '{ ͡• ͜ʖ ͡•}'

  '( ͡° ͜V ͡°)'

  '( ͡^ ͜ʖ ͡^)'

  '( ‾ʖ̫‾)'

  '( ͡°╭͜ʖ╮͡° )'

  'ᕦ( ͡°╭͜ʖ╮͡° )ᕤ'

  '[̲̅$̲̅(̲̅ ͡° ͜ʖ ͡°̲̅)̲̅$̲̅]'

  '( ͡° ͜ ͡°)'

  ' (⌐■_■)'

  ' (╯°□°)╯︵ ┻━┻'

  ' ( ⁰͡ Ĺ̯ ⁰͡ ) ㄏ'

  ' (◕ ◡ ◕)'

  ' ᕦ( ͡͡~͜ʖ ͡° )ᕤ'

]

console.log 'Hi Sam!'

console.log face for face in faces

console.log 'Bye Sam!'

server = http.createServer (req, res) =>
  res.writeHead 200, {'Content-Type': 'text/plain'}
  for face in faces
    res.write face
    res.write '\n'
  res.end 'Bye Sam'

server.listen process.env.PORT
