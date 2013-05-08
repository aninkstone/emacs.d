;;evil setting
(add-to-list 'load-path "~/.emacs.d/evil") ;
(require 'evil)
(evil-mode t)

(add-to-list 'load-path "~/.emacs.d/evil-leader-master/")
(require 'evil-leader)
(evil-leader/set-key "be" 'bs-show)
(evil-leader/set-key "gs" 'magit-status)
(evil-leader/set-key "gl" 'magit-log)

(define-key evil-normal-state-map  (kbd "C-u") 'evil-scroll-page-up)
(define-key evil-visual-state-map  (kbd "C-u") 'evil-scroll-page-up)
(define-key evil-insert-state-map  (kbd "C-u") 'evil-scroll-page-up)
(define-key evil-replace-state-map (kbd "C-u") 'evil-scroll-page-up)

;; enable hightlight-symbol
(add-to-list 'load-path "~/.emacs.d/highlight-symbol")
(require 'highlight-symbol)
(evil-leader/set-key "m" 'highlight-symbol-at-point)
(evil-leader/set-key "n" 'highlight-symbol-remove-all)

;;; BS-menu
(eval-after-load 'bs
  ;;'(progn
     ;;disable default bs key bindings
     ;;(define-key bs-mode-map "k" nil)
     ;;)
  '(progn
     ;; use the standard bs bindings as a base
     (evil-make-overriding-map bs-mode-map 'normal t)
     (evil-define-key 'motion bs-mode-map "h" 'evil-backward-char)
     (evil-define-key 'motion bs-mode-map "j" 'bs-down)
     (evil-define-key 'motion bs-mode-map "k" 'bs-up)
     (evil-define-key 'motion bs-mode-map "l" 'evil-forward-char)
     )
  )
