(local drag {})

(fn drag.update [state]
  (local [mx my] [state.mouse.x state.mouse.y])
  (when (and state.mouse.down (not state.drag.active))
    (for [i (length state.entities.cards) 1 -1]
      (local card (. state.entities.cards i))
      (when (card:contains mx my)
        (set state.drag.active card)
        (set state.drag.offsetX (- mx card.x))
        (set state.drag.offsetY (- my card.y)))))
  (when state.drag.active
    (set state.drag.active.x (- mx state.drag.offsetX))
    (set state.drag.active.y (- my state.drag.offsetY)))
  (when (not state.mouse.down)
    (set state.drag.active nil)))

drag
