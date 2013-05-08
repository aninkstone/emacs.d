;;evil setting
(add-to-list 'load-path "~/.emacs.d/evil") ;
(require 'evil)
(evil-mode t)

(add-to-list 'load-path "~/.emacs.d/evil-numbers-master") ;
(require 'evil-numbers)

(setq evil-find-skip-newlines t)
(setq evil-move-cursor-back nil evil-cross-lines t)
(setq evil-mode-line-format nil)
(setq evil-leader/in-all-states t)

(setq evil-normal-state-tag   (propertize "N" 'face '((:background "green" :foreground "black")))
      evil-emacs-state-tag    (propertize "E" 'face '((:background "orange" :foreground "black")))
      evil-insert-state-tag   (propertize "I" 'face '((:background "red")))
      evil-motion-state-tag   (propertize "M" 'face '((:background "blue")))
      evil-visual-state-tag   (propertize "V" 'face '((:background "grey80" :foreground "black")))
      evil-operator-state-tag (propertize "O" 'face '((:background "purple"))))

;;disable in blew mode
(loop for (mode . state) in '((inferior-emacs-lisp-mode     . emacs)
                              (pylookup-mode                . emacs)
                              (comint-mode                  . emacs)
                              (ebib-entry-mode              . emacs)
                              (ebib-index-mode              . emacs)
                              (ebib-log-mode                . emacs)
                              (gtags-select-mode            . emacs)
                              (shell-mode                   . emacs)
                              (term-mode                    . emacs)
                              (bc-menu-mode                 . emacs)
                              (magit-branch-manager-mode    . emacs)
                              (semantic-symref-results-mode . emacs)
                              (rdictcc-buffer-mode          . emacs)
                              (erc-mode                     . emacs))
                              ;;(erc-mode                     . normal))
      do (evil-set-initial-state mode state))

;;(evil-add-hjkl-bindings *bc-menu-mode-map* 'emacs)

(evil-add-hjkl-bindings magit-branch-manager-mode-map 'emacs
  "K" 'magit-discard-item
  "L" 'magit-key-mode-popup-logging)

(evil-add-hjkl-bindings magit-status-mode-map 'emacs
  "K" 'magit-discard-item
  "l" 'magit-key-mode-popup-logging
  "h" 'magit-toggle-diff-refine-hunk)

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

;;; esc quits
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-ns-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-completion-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-must-match-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-isearch-map [escape] 'abort-recursive-edit)