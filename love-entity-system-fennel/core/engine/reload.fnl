(local M {})

(fn M.all []
  (each [k (pairs package.loaded)]
    (when (k:match "^core")
      (tset package.loaded k nil))))

M
