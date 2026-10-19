(local render {})

(fn render.draw [state]
  (each [_ card (ipairs state.entities.cards)]
    (card:draw)))

render
