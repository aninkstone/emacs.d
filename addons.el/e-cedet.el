;;cedet mode
(require 'cedet)

(setq semantic-default-submodes
      '(global-semantic-highlight-edits-mode
        global-semantic-highlight-func-mode
        global-semantic-idle-breadcrumbs-mode
        global-semantic-idle-completions-mode
        global-semantic-idle-local-symbol-highlight-mode
        global-semantic-idle-scheduler-mode
        global-semantic-idle-summary-mode
        global-semantic-mru-bookmark-mode
        global-semantic-show-parser-state-mode
        global-semantic-show-unmatched-syntax-mode
        global-semantic-stickyfunc-mode
        global-semanticdb-minor-mode))
        ;;global-semantic-decoration-mode))

(require 'semantic/ia)
(require 'semantic/bovine/gcc)

;;(semantic-add-system-include "/usr/lib/include/boost_1_37" 'c++-mode)

(setq-mode-local c-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))

;; if you want to enable support for gnu global
;;(when (cedet-gnu-global-version-check t)
;;  (semanticdb-enable-gnu-global-databases 'c-mode)
;;  (semanticdb-enable-gnu-global-databases 'c++-mode))

;; enable ctags for some languages:
;;  Unix Shell, Perl, Pascal, Tcl, Fortran, Asm
;;(when (cedet-ectag-version-check)
;;  (semantic-load-enable-primary-exuberent-ctags-support))

;; CC-mode
(add-hook 'c-mode-common-hook '(lambda ()
			  (setq ac-sources (append '(ac-source-semantic) ac-sources))
			  (local-set-key (kbd "RET") 'newline-and-indent)
			  (linum-mode t)
			  (semantic-mode t)))

;;(semantic-mode 1)
