;;autocomplete
(add-to-list 'load-path "~/.emacs.d/elpa/popup-0.5")
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-1.4")
(require 'auto-complete)
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.4/dict")

(ac-config-default)

;;(add-hook 'c-mode-common-hook '(lambda ()
;;                                 ;; ac-omni-completion-sources is made buffer local so
;;                                 ;; you need to add it to a mode hook to activate on 
;;                                 ;; whatever buffer you want to use it with.  This
;;                                 ;; example uses C mode (as you probably surmised).
;;                                 ;; auto-complete.el expects ac-omni-completion-sources to be
;;                                 ;; a list of cons cells where each cell's car is a regex
;;                                 ;; that describes the syntactical bits you want AutoComplete
;;                                 ;; to be aware of. The cdr of each cell is the source that will
;;                                 ;; supply the completion data.  The following tells autocomplete
;;                                 ;; to begin completion when you type in a . or a ->
;;                                 (add-to-list 'ac-omni-completion-sources
;;                                              (cons "\\." '(ac-source-semantic)))
;;                                 (add-to-list 'ac-omni-completion-sources
;;                                              (cons "->" '(ac-source-semantic)))
;;                                 ;; ac-sources was also made buffer local in new versions of
;;                                 ;; autocomplete.  In my case, I want AutoComplete to use 
;;                                 ;; semantic and yasnippet (order matters, if reversed snippets
;;                                 ;; will appear before semantic tag completions).
;;                                 (setq ac-sources '(ac-source-semantic ac-source-yasnippet))
;;                                 ))

(add-to-list 'load-path "~/.emacs.d/elpa/fuzzy-0.1")
(add-to-list 'load-path "~/.emacs.d/elpa/fuzzy-format-0.1.1")
(add-to-list 'load-path "~/.emacs.d/elpa/fuzzy-match-1.4")
(require 'fuzzy)
