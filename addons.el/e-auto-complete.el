;;autocomplete
(add-to-list 'load-path "~/.emacs.d/elpa/popup-0.5")
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-1.4")
(require 'auto-complete)
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.4/dict")

(ac-config-default)

(add-to-list 'load-path "~/.emacs.d/elpa/fuzzy-0.1")
(add-to-list 'load-path "~/.emacs.d/elpa/fuzzy-format-0.1.1")
(add-to-list 'load-path "~/.emacs.d/elpa/fuzzy-match-1.4")
(require 'fuzzy)

(add-hook 'c-mode-common-hook '(lambda () (local-set-key (kbd "TAB") 'ac-fuzzy-complete)))
