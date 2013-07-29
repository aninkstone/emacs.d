;;(require 'semantic-ia)
(autoload 'senator-try-expand-semantic "senator")

;;(add-hook 'c-mode-common-hook
;;          '(lambda ()
;;             (local-set-key "." 'semantic-complete-self-insert)
;;             (local-set-key ">" 'semantic-complete-self-insert)))

(add-hook 'c++-mode-hook
          '(lambda ()
             (local-set-key (kbd "TAB") 'semantic-ia-complete-symbol)))
             ;;(local-set-key (kbd "TAB") 'semantic-ia-complete-tip)))
             ;;(local-set-key (kbd "TAB") 'semantic-ia-complete-symbol-menu)))

(add-hook 'c-mode-common-hook '(lambda ()
                                 ;; ac-omni-completion-sources is made buffer local so
                                 ;; you need to add it to a mode hook to activate on 
                                 ;; whatever buffer you want to use it with.  This
                                 ;; example uses C mode (as you probably surmised).
                                 ;; auto-complete.el expects ac-omni-completion-sources to be
                                 ;; a list of cons cells where each cell's car is a regex
                                 ;; that describes the syntactical bits you want AutoComplete
                                 ;; to be aware of. The cdr of each cell is the source that will
                                 ;; supply the completion data.  The following tells autocomplete
                                 ;; to begin completion when you type in a . or a ->
                                 (add-to-list 'ac-omni-completion-sources
                                              (cons "\\." '(ac-source-semantic)))
                                 (add-to-list 'ac-omni-completion-sources
                                              (cons "->" '(ac-source-semantic)))
                                 ;; ac-sources was also made buffer local in new versions of
                                 ;; autocomplete.  In my case, I want AutoComplete to use 
                                 ;; semantic and yasnippet (order matters, if reversed snippets
                                 ;; will appear before semantic tag completions).
                                 (setq ac-sources '(ac-source-semantic ac-source-yasnippet))
                                 ))


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
