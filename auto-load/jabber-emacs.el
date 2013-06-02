;;================================================
;; JABBER
;;================================================
(add-to-list 'load-path "~/.emacs.d/emacs-jabber-0.8.92")
(require 'jabber)
;;(require 'jabber-autoloads)
;;(require 'jabber-wmii)

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

(setq jabber-alert-info-message-hooks (quote (jabber-info-display jabber-info-echo jabber-info-wmii)))
(setq jabber-alert-message-hooks (quote (jabber-message-scroll jabber-message-echo jabber-message-wmii)))
(setq jabber-alert-muc-hooks (quote (jabber-muc-scroll jabber-muc-echo jabber-muc-wmii)))
(setq jabber-alert-presence-hooks nil)
(setq jabber-auto-reconnect t)
(setq jabber-autoaway-method (quote jabber-xprintidle-get-idle-time))
(setq jabber-autoaway-status "Away")
(setq jabber-autoaway-timeout 5)
(setq jabber-backlog-days nil)
(setq jabber-backlog-number 1000)
(setq jabber-chat-buffer-show-avatar nil)
(setq jabber-history-enable-rotation t)
(setq jabber-history-enabled t)
(setq jabber-use-global-history nil)
(setq jabber-history-size-limit 102400)
(setq jabber-keepalive-interval 300)
(setq jabber-mode-line-mode t)
(setq jabber-post-connect-hooks (quote (jabber-send-current-presence jabber-muc-autojoin jabber-whitespace-ping-start jabber-vcard-avatars-find-current jabber-autoaway-start)))
(setq jabber-roster-line-format " %c %-25n %u %-8s  %S")

