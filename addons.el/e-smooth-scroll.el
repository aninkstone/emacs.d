;;smooth scroll
(add-to-list 'load-path "~/.emacs.d/elpa/smooth-scroll-1.2")
(require 'smooth-scroll)
(add-to-list 'load-path "~/.emacs.d/elpa/smooth-scrolling-1.0.1")
;;(smooth-scroll-mode t)
(require 'smooth-scrolling)
(setq smooth-scroll-margin 2)
;;(setq scroll-conservatively 10000)    ;;text to scroll one line at a time when you move the cursor past the top or bottom of the window

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(3 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time
