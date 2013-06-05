(add-to-list 'load-path "~/.emacs.d/elpa/anything-1.287")
(add-to-list 'load-path "~/.emacs.d/elpa/anything-complete-1.86")
(add-to-list 'load-path "~/.emacs.d/elpa/anything-config-0.4.1")
(add-to-list 'load-path "~/.emacs.d/elpa/anything-match-plugin-1.27")
(add-to-list 'load-path "~/.emacs.d/elpa/anything-obsolete-0.1")

(eval-after-load 'anything
  '(progn
     (setq anything-enable-digit-shortcuts t)))

(eval-after-load 'anything-config
  '(add-to-list 'anything-sources anything-c-source-file-cache))

(require 'anything)
(require 'anything-config)
(require 'anything-complete)
