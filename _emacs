;;;; this is the emacs config file

;;evil setting
(add-to-list 'load-path "~/.emacs.d/evil") ;
(require 'evil)
(evil-mode 1)

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

;;cedet mode
(require 'cedet) (require 'ede)
;;semantic-mode
(setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
                                  global-semanticdb-minor-mode
                                  global-semantic-idle-summary-mode
                                  global-semantic-mru-bookmark-mode))

(semantic-mode t)
(define-key evil-normal-state-map "\C-]" 'semantic-symref)
(define-key evil-normal-state-map "\C-[" 'semantic-ia-fast-jump)

(define-key evil-normal-state-map [(f11)]
    (lambda ()
        (interactive)
        (if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
                (error "Semantic Bookmark ring is currently empty"))
        (let* ((ring (oref semantic-mru-bookmark-ring ring))
               (alist (semantic-mrub-ring-to-assoc-list ring))
               (first (cdr (car alist))))
            (if (semantic-equivalent-tag-p (oref first tag)
                                           (semantic-current-tag))
                    (setq first (cdr (car (cdr alist)))))
            (semantic-mrub-switch-tags first))))

;; enable autocomplete
(add-to-list 'load-path "~/.emacs.d/auto-complete-1.3.1")
(require 'auto-complete)

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")
(require 'auto-complete-config)
(ac-config-default)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 1024)

;;config for eshell.
(defun eshell-clear ()
  "04Dec2001 - sailor, to clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))
(defalias 'openo 'find-file-other-window)

;;auto close buffer when shell/gdb/term exited
(add-hook 'shell-mode-hook 'mode-hook-func)
(add-hook 'gdb-mode-hook 'mode-hook-func)
(add-hook 'term-exec-hook 'mode-hook-func)

(defun mode-hook-func  ()
  (set-process-sentinel (get-buffer-process (current-buffer)) #'kill-buffer-on-exit))

(defun kill-buffer-on-exit (process state)
  (message "%s" state)
  (if (or
      (string-match "exited abnormally with code.*" state)
      (string-match "finished" state))
      (kill-buffer (current-buffer))))

;;cscope setup
(add-to-list 'load-path "~/.emacs.d")
(require 'xcscope)

(define-key global-map "\C-\\" nil)
(define-key global-map "\C-\\s" 'cscope-find-this-symbol)
(define-key global-map "\C-\\g" 'cscope-find-global-definition)
(define-key global-map "\C-\\c" 'cscope-find-functions-calling-this-function)
(define-key global-map "\C-\\t" 'cscope-find-this-text-string)
(define-key global-map "\C-\\e" 'cscope-find-egrep-pattern)
(define-key global-map "\C-\\f" 'cscope-find-this-file)
(define-key global-map "\C-\\i" 'cscope-find-files-including-file)
(define-key global-map "\C-\\d" 'cscope-find-called-functions)
;;

;;shell mode
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;color theme setting
(add-to-list 'load-path "~/.emacs.d/color-theme")
(add-to-list 'load-path "~/.emacs.d/color-theme-desert")
(require 'color-theme-desert)

(add-to-list 'load-path "~/.emacs.d")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(case-fold-search t)
 '(mouse-avoidance-mode (quote animate) nil (avoid))
 '(quote (display-time-mode 1))
 '(show-paren-mode t nil (paren))
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;(setq evil-emacs-state-cursor '("red" box))

(defun emacs-default-setting ()
  ;;this function is for personal emacs default setup
  ;;this function will be called at end of this file
 (set-buffer-file-coding-system (quote gb2312))
 (set-keyboard-coding-system (quote gb2312))
 (set-language-environment (quote Chinese-GB))
 (set-terminal-coding-system (quote utf-8))
 (setq make-backup-files nil)
 (setq-default tab-width nil)                ;;to stop Emacs from entering the tab character into your files
 (setq-default indent-tabs-mode nil) 
 (setq standard-intent 4)                    ;;to set the standard indent size to some value other than default
 (scroll-bar-mode nil)
 (global-auto-revert-mode t)
 (global-font-lock-mode t nil (font-lock))
 (tool-bar-mode nil)
 (set-default-font "Courier New-18")
 (global-hl-line-mode t)
 (setq scroll-step 1)                        ;;to make Emacs highlight the line the curosr is currently on
 (mouse-wheel-mode t)                        ;;enable mouse wheel
 (line-number-mode t)                        ;;enable line number
 (column-number-mode t)                      ;;show column-number in the mode line
 ;;(setq default-major-mode 'text-mode)        ;;specify that new buffers should be treated as text files 
 (color-theme-desert))

(add-to-list 'load-path "~/.emacs.d")
(require 'undo-tree)

;;smooth scroll
(add-to-list 'load-path "~/.emacs.d/smooth-scroll")
(require 'smooth-scroll)
(require 'smooth-scrolling)
;;(setq scroll-conservatively 10000)    ;;text to scroll one line at a time when you move the cursor past the top or bottom of the window

;;jabber
(add-to-list 'load-path "~/.emacs.d/emacs-jabber-0.8.0")
(require 'jabber)

;;(setq jabber-account-list
;;  '(("thatways.c@gmail.com" 
;;    (:network-server . "talk.google.com")
;;    (:connection-type . ssl)))
;;  )

(setq jabber-account-list
  '(("thatway.c@gmail.com" 
    (:network-server . "talk.google.com")
    (:connection-type . ssl)
    (:port . 443))
    ("thatways.c@gmail.com" 
    (:network-server . "talk.google.com")
    (:connection-type . ssl)
    (:port . 443))
    )
  )

;;magit
(add-to-list 'load-path "~/.emacs.d/magit")
(require 'magit)

;; Googel appengine mode
;;(add-to-list 'load-path "~/.emacs.d/appengine-emacs-toolkit")

;;(setq appengine-java-sdk-path "/Volumes/E/development/web/")
;;(setq appengine-emasc-toolkit-path "~/.emacs.d/appengine-emacs-toolkit")
;;(setq appengine-java-root-path (concat appengine-java-sdk-path "appengine-java-sdk-1.7.5"))
;;
;;(require 'appengine-java-mode)
;;(add-hook 'appengine-java-mode-hook
;;          (lambda ()
;;	    (local-set-key "\C-cc" 'appengin-java-start-appserver)
;;	    (local-set-key "\C-cb" 'appengine-browse-appserver)
;;	    (local-set-key "\C-cu" 'appengine-java-update-appserver)))
;;(put 'dired-find-alternate-file 'disabled nil)

;;(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                         ("marmalade" . "http://marmalade-repo.org/packages/")
;;                         ("melpa" . "http://melpa.milkbox.net/packages/")))
;;
;;(add-to-list 'load-path "~/.emacs.d/package")
;;(require 'package)
