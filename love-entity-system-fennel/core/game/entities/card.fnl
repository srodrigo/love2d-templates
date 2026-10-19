(local Card {})

(set Card.__index Card)

(fn Card.new [x y label]
  (setmetatable {: x : y :w 80 :h 120 :label label :hovered false} Card))

(fn Card.update [self dt])

(fn Card.draw [self]
  (if self.hovered
      (love.graphics.setColor 1 1 0)
      (love.graphics.setColor 1 1 1))
  (love.graphics.rectangle :fill self.x self.y self.w self.h)
  (love.graphics.setColor 0 0 0)
  (love.graphics.print self.label (+ self.x 10) (+ self.y 10)))

(fn Card.contains [self x y]
  (and (> x self.x) (< x (+ self.x self.w)) (> y self.y)
       (< y (+ self.y self.h))))

Card
