;;cedet mode
(require 'cedet) (require 'ede)
;;semantic-mode
(setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
                                  global-semanticdb-minor-mode
                                  global-semantic-idle-summary-mode
                                  global-semantic-mru-bookmark-mode))

(semantic-mode t)
(define-key evil-normal-state-map "\C-]" 'semantic-symref)
(define-key evil-normal-state-map "\C-[" 'semantic-ia-fast-jump)
