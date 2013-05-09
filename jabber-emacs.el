;;jabber
(add-to-list 'load-path "~/.emacs.d/emacs-jabber")
(require 'jabber)

;;(setq jabber-account-list
;;  '(("thatways.c@gmail.com" 
;;    (:network-server . "talk.google.com")
;;    (:connection-type . ssl)))
;;  )
(setq jabber-account-list
  '(("thatway.c@gmail.com" 
    (:network-server . "talk.google.com")
    (:connection-type . ssl))
    ("thatways.c@gmail.com" 
    (:network-server . "talk.google.com")
    (:connection-type . ssl))))

