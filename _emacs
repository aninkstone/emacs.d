;;;; this is the emacs config file

;; enable autocomplete
(add-to-list 'load-path "~/.emacs.d/auto-complete-1.3.1")
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete-1.3.1/dict")
(require 'auto-complete-config)
(ac-config-default)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 1024)
;;(global-set-key "F4" 'recentf-open-files)

;;config for eshell.
(defun eshell-clear ()
  "04Dec2001 - sailor, to clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))
(defalias 'openo 'find-file-other-window)

;;shell,gdb退出后，自动关闭该buffer
(add-hook 'shell-mode-hook 'mode-hook-func)
(add-hook 'gdb-mode-hook 'mode-hook-func)
(defun mode-hook-func  () (set-process-sentinel (get-buffer-process (current-buffer)) #'kill-buffer-on-exit))
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
(define-key global-map "\C-]" 'semantic-symref)

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;color theme setting
(add-to-list 'load-path "~/.emacs.d/color-theme")
(add-to-list 'load-path "~/.emacs.d/color-theme-desert")
(require 'color-theme-desert)

;;cedet
(require 'cedet)

;; Use the "electric-buffer-list" instead of "buffer-list"
;; so that the cursor automatically switches to the other window
(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:y-%02m-%02d %3a %02H:%02M:%02S chunyu")	;; 设置时间戳，标识出最后一次保存文件的时间。

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-font-lock-mode t nil (font-lock))
 '(global-auto-revert-mode t)	            ;; Automatically reload files after they've been modified (typically in Visual C++)
 '(case-fold-search t)
 '(color-theme-desert nil)
 '(message "custome-set-variables done")
 '(mouse-avoidance-mode (quote animate) nil (avoid))
 '(quote (display-time-mode 1))
 '(scroll-bar-mode nil)
 '(set-buffer-file-coding-system (quote gb2312))
 '(set-keyboard-coding-system (quote gb2312))
 '(set-language-environment (quote Chinese-GB))
 '(set-terminal-coding-system (quote utf-8))
 '(setq make-backup-files nil)
 '(show-paren-mode t nil (paren))
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d/evil") ;
(require 'evil)
(evil-mode 1)

(add-to-list 'load-path "~/.emacs.d/evil-leader-master/")
(require 'evil-leader)
(evil-leader/set-key "be" 'recentf-open-files)

;; enable hightlight-symbol
(add-to-list 'load-path "~/.emacs.d/highlight-symbol")
(require 'highlight-symbol)
(evil-leader/set-key "m" 'highlight-symbol-at-point)
(evil-leader/set-key "n" 'highlight-symbol-remove-all)

(define-key evil-normal-state-map  (kbd "C-u") 'evil-scroll-page-up)
(define-key evil-visual-state-map  (kbd "C-u") 'evil-scroll-page-up)
(define-key evil-insert-state-map  (kbd "C-u") 'evil-scroll-page-up)
(define-key evil-replace-state-map (kbd "C-u") 'evil-scroll-page-up)
