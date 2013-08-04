(add-to-list 'load-path "~/.emacs.d/addons.gt/google-translate.git")
(require 'google-translate)

(global-set-key "\C-ct" 'google-translate-at-point)
(global-set-key "\C-cT" 'google-translate-query-translate)
