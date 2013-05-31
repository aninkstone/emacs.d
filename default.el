;;remap M-x

;;;; this is the emacs config file
(load-file "~/.emacs.d/evil-emacs.el")
(load-file "~/.emacs.d/shell-hook-emacs.el")
(load-file "~/.emacs.d/auto-load-emacs.el")
(load-file "~/.emacs.d/cscope-emacs.el")
(load-file "~/.emacs.d/jabber-emacs.el")
(load-file "~/.emacs.d/cedet-emacs.el")
(load-file "~/.emacs.d/appengine-emacs.el")
(load-file "~/.emacs.d/nxhtml-emacs.el")
(load-file "~/.emacs.d/iswitchb-emacs.el")
;;(load-file "~/.emacs.d/w3m-emacs.el")

;;remap M-x
(define-key global-map (kbd "\C-\\ \C-\\") 'execute-extended-command)
;;(keyboard-translate ?\C-\\ ?\C-x)

;;(put 'dired-find-alternate-file 'disabled nil)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(funcall (lambda ()
  ;;default variable setup
  ;;this function will call at end of this file
  (setq make-backup-files nil)
  ;;(setq-default tab-width nil)
  (global-auto-revert-mode nil)))

(if (eq system-type "darwin")
    (setq PATH (format "%s:%s" "/usr/local/bin" (getenv "PATH")))
    (setq exec-path (append exec-path '("/usr/local/bin"))))

(load-file "~/.emacs.d/package-emacs.el")

(setq auto-mode-alist
  (append
    '(("\\.C$"    . c++-mode)
      ("\\.H$"    . c++-mode)
      ("\\.cc$"   . c++-mode)
      ("\\.hh$"   . c++-mode)
      ("\\.c$"    . c-mode)
      ("\\.h$"    . c-mode)
      ("\\.m$"    . objc-mode)
      ("\\.java$" . java-mode)
      ("\\.aidl$" . java-mode)
     ) auto-mode-alist))
