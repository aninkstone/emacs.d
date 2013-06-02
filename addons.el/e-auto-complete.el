;;autocomplete
(add-to-list 'load-path "~/.emacs.d/addons.st/auto-complete-1.3.1")
(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/addons.st/auto-complete-1.3.1/dict")
(ac-config-default)

