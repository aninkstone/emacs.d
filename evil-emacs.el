;;evil setting
(add-to-list 'load-path "~/.emacs.d/evil") ;
(require 'evil)

(add-to-list 'load-path "~/.emacs.d/evil-numbers") ;
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
                              (eshell-mode                  . emacs)
                              (term-mode                    . emacs)
                              (bc-menu-mode                 . emacs)
                              (circe-server-mode            . emacs)
                              (magit-branch-manager-mode    . emacs)
                              (semantic-symref-results-mode . emacs)
                              (rdictcc-buffer-mode          . emacs)
                              (erc-mode                     . emacs))
                              ;;(bs-mode                      . emacs)
                              ;;(erc-mode                     . normal)
      do (evil-set-initial-state mode state))

;;(evil-add-hjkl-bindings *bc-menu-mode-map* 'emacs)

(evil-add-hjkl-bindings magit-branch-manager-mode-map 'emacs
  "K" 'magit-discard-item
  "L" 'magit-key-mode-popup-logging)

(evil-add-hjkl-bindings magit-status-mode-map 'emacs
  "K" 'magit-discard-item
  "l" 'magit-key-mode-popup-logging
  "h" 'magit-toggle-diff-refine-hunk)

(evil-add-hjkl-bindings magit-log-mode-map 'emacs
  "K" 'magit-discard-item
  "l" 'magit-key-mode-popup-logging
  "h" 'magit-toggle-diff-refine-hunk)

(add-to-list 'load-path "~/.emacs.d/evil-leader")
(require 'evil-leader)
(evil-leader/set-key "be" 'evil-show-files)
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
  '(progn
     ;; use the standard bs bindings as a base
     (evil-make-overriding-map bs-mode-map 'normal t)
     (evil-define-key 'motion bs-mode-map
       "h" 'evil-backward-char
       "j" 'bs-down
       "k" 'bs-up
       "l" 'evil-forward-char)
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

(evil-mode 1)
