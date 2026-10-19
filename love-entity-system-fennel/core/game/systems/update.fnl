(local update {})

(fn update.run [state dt]
  (each [_ card (ipairs state.entities.cards)]
    (card:update dt)))

update
