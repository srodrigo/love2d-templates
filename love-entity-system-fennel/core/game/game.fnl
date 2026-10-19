(local Card (require "core.game.entities.card"))

(local input (require "core.game.systems.input"))
(local drag (require "core.game.systems.drag"))
(local update (require "core.game.systems.update"))
(local render (require "core.game.systems.render"))

(local game {})

(fn game.init [state]
  (table.insert state.entities.cards (Card.new 100 100 "A"))
  (table.insert state.entities.cards (Card.new 200 120 "K")))

(fn game.update [state dt]
  (input.update state)
  (drag.update state)
  (update.run state dt))

(fn game.draw [state]
  (render.draw state))

game
