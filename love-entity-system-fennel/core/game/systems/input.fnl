(local input {})

(fn input.update [state]
  (local (mx my) (love.mouse.getPosition))
  (set state.mouse.x mx)
  (set state.mouse.y my))

(fn input.keypressed [state key]
  ;; Empty
  )

(fn input.mousepressed [state x y button]
  (when (= button 1)
    (set state.mouse.down true)))

(fn input.mousereleased [state x y button]
  (when (= button 1)
    (set state.mouse.down false)))

input
