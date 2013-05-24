;;autocomplete
(add-to-list 'load-path "~/.emacs.d/auto-complete-1.3.1")
(require 'auto-complete)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")
(require 'auto-complete-config)
(ac-config-default)

;;undo
(add-to-list 'load-path "~/.emacs.d")
(require 'undo-tree)

;;color theme setting
(add-to-list 'load-path "~/.emacs.d/color-theme")
(add-to-list 'load-path "~/.emacs.d/color-theme-desert")
(require 'color-theme-desert)

(add-to-list 'load-path "~/.emacs.d/themes")
(require 'zenburn-theme)
;;(load-theme 'zenburn)

;;smooth scroll
(add-to-list 'load-path "~/.emacs.d/smooth-scroll")
(require 'smooth-scroll)
;;(smooth-scroll-mode t)
(require 'smooth-scrolling)
(setq smooth-scroll-margin 2)
;;(setq scroll-conservatively 10000)    ;;text to scroll one line at a time when you move the cursor past the top or bottom of the window

(add-to-list 'load-path "~/.emacs.d")
(require 'goto-last-change)

;;magit
(add-to-list 'load-path "~/.emacs.d/magit")
(require 'magit)

;;sr-speedbar 
(add-to-list 'load-path "~/.emacs.d")
(setq sr-speedbar-right-side nil)
(require 'sr-speedbar)

;;multi-term
(require 'multi-term)

;;fff
(require 'fff)
(fff-install-map)

(require 'mcomplete)

(require 'xcscope)
