(local reload {})

(fn reload.all []
  (each [k (pairs package.loaded)]
    (when (k:match "^core")
      (tset package.loaded k nil))))

reload
