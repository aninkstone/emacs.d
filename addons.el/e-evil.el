;;evil setting
(add-to-list 'load-path "~/.emacs.d/addons.gt/evil") ;
(require 'evil)

;; enable hightlight-symbol
(add-to-list 'load-path "~/.emacs.d/addons.st/highlight-symbol")
(require 'highlight-symbol)

;;disable evil default leader map
(define-key evil-motion-state-map "\\" nil)
;;(define-key evil-motion-state-map "\\be" 'evil-show-files)
(define-key evil-motion-state-map "\\be" 'buffer-menu)
(define-key evil-motion-state-map "\\gs" 'magit-status)
(define-key evil-motion-state-map "\\gl" 'magit-log)
(define-key evil-motion-state-map "\\m" 'highlight-symbol-at-point)
(define-key evil-motion-state-map "\\n" 'highlight-symbol-remove-all)
(define-key evil-motion-state-map (kbd "C-6") 'evil-buffer)

;;(defun evil-switch-recently-buffer 
;;  (setq evil-mo))

(setq evil-find-skip-newlines t)
(setq evil-move-cursor-back nil evil-cross-lines t)
(setq evil-mode-line-format nil)

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
                              (rdictcc-buffer-mode          . emacs)
                              (jabber-roster-mode           . emacs)
                              (cscope-list-entry-mode       . emacs) ;;FIMXE: doesn't work
                              (erc-mode                     . emacs))
      do (evil-set-initial-state mode state))

                              ;;(magit-branch-manager-mode    . emacs)
                              ;;(semantic-symref-results-mode . emacs)
                              ;;(bs-mode                      . emacs)
                              ;;(erc-mode                     . normal)


(evil-add-hjkl-bindings cscope-list-entry-keymap 'emacs
  "j" 'cscope-next-file
  "k" 'cscope-prev-file
  )

(evil-add-hjkl-bindings magit-branch-manager-mode-map 'emacs
  "K" 'magit-discard-item
  "L" 'magit-key-mode-popup-logging
  (kbd "C-f") 'evil-scroll-page-down
  (kbd "C-b") 'evil-scroll-page-up)

(evil-add-hjkl-bindings magit-status-mode-map 'emacs
  "K" 'magit-discard-item
  "l" 'magit-key-mode-popup-logging
  "h" 'magit-toggle-diff-refine-hunk
  (kbd "C-d") 'evil-scroll-page-down
  (kbd "C-u") 'evil-scroll-page-up)

(evil-add-hjkl-bindings magit-log-mode-map 'emacs
  "K" 'magit-discard-item
  "l" 'magit-key-mode-popup-logging
  "h" 'magit-toggle-diff-refine-hunk)

(evil-add-hjkl-bindings semantic-symref-results-mode)
(define-key evil-normal-state-map "\C-]" 'semantic-symref)
(define-key evil-normal-state-map "\C-[" 'semantic-ia-fast-jump)

(define-key evil-normal-state-map  (kbd "C-u") 'evil-scroll-page-up)
(define-key evil-visual-state-map  (kbd "C-u") 'evil-scroll-page-up)
(define-key evil-insert-state-map  (kbd "C-u") 'evil-scroll-page-up)
(define-key evil-replace-state-map (kbd "C-u") 'evil-scroll-page-up)

;;; esc quits
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)

(define-key minibuffer-local-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-ns-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-completion-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-must-match-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-isearch-map [escape] 'abort-recursive-edit)

(evil-mode 1)
