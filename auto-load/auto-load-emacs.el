;;autocomplete
(add-to-list 'load-path "~/.emacs.d/auto-complete-1.3.1")
(require 'auto-complete)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")
(require 'auto-complete-config)
(ac-config-default)

;;color theme setting
(add-to-list 'load-path "~/.emacs.d/color-theme")
(add-to-list 'load-path "~/.emacs.d/color-theme-tangotango")
(require 'color-theme-tangotango)
(color-theme-tangotango)
;;(add-to-list 'load-path "~/.emacs.d/color-theme-desert")
;;(require 'color-theme-desert)

(add-to-list 'load-path "~/.emacs.d/themes")
;;(require 'zenburn-theme)
;;(load-theme 'zenburn)

;;smooth scroll
(add-to-list 'load-path "~/.emacs.d/smooth-scroll")
(require 'smooth-scroll)
;;(smooth-scroll-mode t)
(require 'smooth-scrolling)
(setq smooth-scroll-margin 2)
;;(setq scroll-conservatively 10000)    ;;text to scroll one line at a time when you move the cursor past the top or bottom of the window

;;load diminish mode
(add-to-list 'load-path "~/.emacs.d/diminish/")

;;magit
(add-to-list 'load-path "~/.emacs.d/magit")
(require 'magit)


(add-to-list 'load-path "~/.emacs.d/auto-load")
(require 'goto-last-change)

;;sr-speedbar 
(setq sr-speedbar-right-side nil)
(require 'sr-speedbar)

;;undo
(require 'undo-tree)

(require 'ido)
(ido-mode t)

;;multi-term
(require 'multi-term)

;;fff
(require 'fff)
(fff-install-map)

(require 'mcomplete)

(require 'xcscope)

(require 'recentf)
(recentf-mode 1)

(load-file "~/.emacs.d/auto-load/package-emacs.el")
