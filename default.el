;;;; this is the emacs config file

(load-file "~/.emacs.d/evil-emacs.el")
(load-file "~/.emacs.d/shell-hook-emacs.el")
(load-file "~/.emacs.d/auto-load-emacs.el")
(load-file "~/.emacs.d/cscope-emacs.el")
(load-file "~/.emacs.d/jabber-emacs.el")
(load-file "~/.emacs.d/appengine-emacs.el")

;;remap M-x
(define-key global-map (kbd "\C-\\ \C-\\") 'execute-extended-command)
;;remap C-x
;;(keyboard-translate ?\C-\\ ?\C-x)

;;(put 'dired-find-alternate-file 'disabled nil)

(defun default-emacs-setting ()
  ;;default variable setup
  ;;this function will call at end of this file
  (setq make-backup-files nil)
  ;;(setq-default tab-width nil)
  (global-auto-revert-mode nil)
  (color-theme-desert)
  )

(default-emacs-setting)
