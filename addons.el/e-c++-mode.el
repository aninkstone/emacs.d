;;(require 'semantic-ia)
(autoload 'senator-try-expand-semantic "senator")

;;(add-hook 'c-mode-common-hook
;;          '(lambda ()
;;             (local-set-key "." 'semantic-complete-self-insert)
;;             (local-set-key ">" 'semantic-complete-self-insert)))

(add-hook 'c-mode-common-hook
          '(lambda ()
             ;;(local-set-key (kbd "TAB") 'semantic-ia-complete-symbol)
             ;;(local-set-key (kbd "TAB") 'semantic-ia-complete-tip)
             (local-set-key (kbd "TAB") 'semantic-ia-complete-symbol-menu)))

(setq hippie-expand-try-functions-list
      '(
        senator-try-expand-semantic
        try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-expand-list
        try-expand-list-all-buffers
        try-expand-line
        try-expand-line-all-buffers
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-whole-kill
        )
)
