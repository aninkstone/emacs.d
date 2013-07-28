;;cedet mode
(require 'cedet) 
(require 'ede)

(setq semantic-default-submodes
      '(global-semantic-decoration-mode
	global-semantic-highlight-edits-mode
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

;; CC-mode
(add-hook 'c-mode-hook '(lambda ()
			  (setq ac-sources (append '(ac-source-semantic) ac-sources))
			  (local-set-key (kbd "RET") 'newline-and-indent)
			  (linum-mode t)
			  (semantic-mode t)))
