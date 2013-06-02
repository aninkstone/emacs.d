;;remap M-x

;;;; this is the emacs config file
(add-to-list 'load-path "~/.emacs.d/addons.el/")
(load-file "~/.emacs.d/addons.el/e-evil.el")
(load-file "~/.emacs.d/addons.el/e-appengine.el")
(load-file "~/.emacs.d/addons.el/e-auto-complete.el")
(load-file "~/.emacs.d/addons.el/e-bs.el")
(load-file "~/.emacs.d/addons.el/e-cedet.el")
(load-file "~/.emacs.d/addons.el/e-color-theme.el")
(load-file "~/.emacs.d/addons.el/e-cscope.el")
(load-file "~/.emacs.d/addons.el/e-diminish.el")
(load-file "~/.emacs.d/addons.el/e-evil.el")
(load-file "~/.emacs.d/addons.el/e-fff.el")
(load-file "~/.emacs.d/addons.el/e-goto-last-change.el")
(load-file "~/.emacs.d/addons.el/e-highlight-symbol.el")
(load-file "~/.emacs.d/addons.el/e-ido.el")
(load-file "~/.emacs.d/addons.el/e-iswitchb.el")
(load-file "~/.emacs.d/addons.el/e-jabber.el")
(load-file "~/.emacs.d/addons.el/e-magit.el")
(load-file "~/.emacs.d/addons.el/e-mcomplete.el")
(load-file "~/.emacs.d/addons.el/e-multi-term.el")
(load-file "~/.emacs.d/addons.el/e-shell.el")
(load-file "~/.emacs.d/addons.el/e-sr-speedbar.el")
(load-file "~/.emacs.d/addons.el/e-undo-tree.el")
(load-file "~/.emacs.d/addons.el/e-dired+.el")
(load-file "~/.emacs.d/addons.el/e-package.el")
;;(load-file "~/.emacs.d/addons.el/e-smooth-scroll.el")
;;(load-file "~/.emacs.d/addons.el/e-nxhtml.el")

;;remap M-x
(define-key global-map (kbd "\C-\\ \C-\\") 'execute-extended-command)
(global-set-key (kbd "C-;") ctl-x-map)

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

(setq auto-mode-alist
  (append
    '(("\\.C$"    . c++-mode)
      ("\\.H$"    . c++-mode)
      ("\\.cc$"   . c++-mode)
      ("\\.hh$"   . c++-mode)
      ("\\.c$"    . c-mode)
      ("\\.h$"    . c-mode)
      ("\\.h$"    . c++-mode)
      ("\\.m$"    . objc-mode)
      ("\\.java$" . java-mode)
      ("\\.aidl$" . java-mode)
     ) auto-mode-alist))
