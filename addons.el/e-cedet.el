;;cedet mode
(load-file "~/.emacs.d/cedet-bzr/cedet-devel-load.el")

(require 'semantic/ia)
;;(require 'semantic/bovine/gcc)
(require 'semantic/db)

(require 'semantic/tag)
(require 'semantic/senator)

(semanticdb-enable-gnu-global-databases 'c-mode)
(semanticdb-enable-gnu-global-databases 'c++-mode)

(setq-mode-local c-mode semanticdb-find-default-throttle '(project unloaded system recursive))

;;(global-ede-mode 1)

;;(defun my-cedet-hook ()
;;  (local-set-key [(control return)] 'semantic-ia-complete-symbol)
;;  (local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu)
;;  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
;;  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle))
;;(add-hook 'c-mode-common-hook 'my-cedet-hook)

;;cedet mode
;;(require 'cedet)
;;
;;(require 'semantic/ia)
;;(require 'semantic/bovine/gcc)
;;(require 'semantic/db)
;;
;;(require 'semantic/tag)
;;(require 'semantic/senator)
;;
;;;;(semantic-add-system-include "/usr/lib/include/boost_1_37" 'c++-mode)
;;
;;(setq-mode-local c-mode semanticdb-find-default-throttle '(project unloaded system recursive))
;;
;;;; if you want to enable support for gnu global
;;;;(when (cedet-gnu-global-version-check t)
;;;;  (semanticdb-enable-gnu-global-databases 'c-mode)
;;;;  (semanticdb-enable-gnu-global-databases 'c++-mode))
;;
;;;; enable ctags for some languages:
;;;;  Unix Shell, Perl, Pascal, Tcl, Fortran, Asm
;;;;(when (cedet-ectag-version-check)
;;;;  (semantic-load-enable-primary-exuberent-ctags-support))
;;
;;;;(semantic-mode 1)
;;
(setq semantic-default-submodes '(global-semantic-highlight-edits-mode
                                  ;;global-semantic-idle-scheduler-mode
                                  ;;global-semantic-idle-breadcrumbs-mode
                                  ;;global-semantic-idle-completions-mode
                                  ;;global-semantic-highlight-func-mode
                                  ;;global-semantic-idle-local-symbol-highlight-mode
                                  ;;global-semantic-idle-summary-mode
                                  ;;global-semantic-mru-bookmark-mode
                                  ;;global-semantic-show-parser-state-mode
                                  ;;global-semantic-show-unmatched-syntax-mode
                                  ;;global-semantic-stickyfunc-mode
                                  ;;global-semanticdb-minor-mode
                                  global-semantic-decoration-mode))


(autoload 'senator-try-expand-semantic "senator")

(add-hook 'c-mode-common-hook '(lambda ()
                                 ;;(local-set-key (kbd "TAB") 'semantic-ia-complete-symbol)
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
                                 (add-to-list 'ac-omni-completion-sources (cons "\\." '(semantic-complete-self-insert)))
                                 (add-to-list 'ac-omni-completion-sources (cons "->" '(semantic-complete-self-insert)))
                                 ;; ac-sources was also made buffer local in new versions of
                                 ;; autocomplete.  In my case, I want AutoComplete to use 
                                 ;; semantic and yasnippet (order matters, if reversed snippets
                                 ;; will appear before semantic tag completions).
                                 ;;(setq ac-sources (append '(ac-source-semantic) ac-sources))
                                 (local-set-key (kbd "RET") 'newline-and-indent)
                                 ;;(setq ac-sources '(ac-source-semantic ac-source-yasnippet))
                                 (semantic-mode t)))


(setq hippie-expand-try-functions-list '(senator-try-expand-semantic
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
                                         try-expand-whole-kill))

