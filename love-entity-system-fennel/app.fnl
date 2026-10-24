(local reload (require :core.engine.reload))
(var game (require "core.game.game"))
(var state (require "core.game.state"))

(local input (require "core.game.systems.input"))

(fn love.load []
  (game.init state))

(fn love.update [dt]
  (game.update state dt))

(fn love.draw []
  (game.draw state))

(fn love.keypressed [key]
  ;; TODO: remove from production build
  (if (and (= key "r") (love.keyboard.isDown "lctrl"))
      (do
        (reload.all)
        (set game (require "core.game.game"))
        (if (and (love.keyboard.isDown "lctrl") (love.keyboard.isDown "lshift"))
            (do
              (print "hard reloading...")
              (set state (require "core.game.state"))
              (game.init state))
            (print "reloading..."))))
  (input.keypressed state key))

(fn love.mousepressed [x y button]
  (input.mousepressed state x y button))

(fn love.mousereleased [x y button]
  (input.mousereleased state x y button))
