;;;; this is the emacs config file
(load-file "~/.emacs.d/addons.el/e-evil.el")
(load-file "~/.emacs.d/addons.el/e-color-theme.el")
(load-file "~/.emacs.d/addons.el/e-cl-lib.el")
(load-file "~/.emacs.d/addons.el/e-auto-complete.el")
(load-file "~/.emacs.d/addons.el/e-c++-mode.el")
(load-file "~/.emacs.d/addons.el/e-bs.el")
(load-file "~/.emacs.d/addons.el/e-diminish.el")
(load-file "~/.emacs.d/addons.el/e-cscope.el")
(load-file "~/.emacs.d/addons.el/e-fff.el")
(load-file "~/.emacs.d/addons.el/e-goto-last-change.el")
(load-file "~/.emacs.d/addons.el/e-highlight-symbol.el")
(load-file "~/.emacs.d/addons.el/e-iswitchb.el")
(load-file "~/.emacs.d/addons.el/e-jabber.el")
(load-file "~/.emacs.d/addons.el/e-magit.el")
(load-file "~/.emacs.d/addons.el/e-mcomplete.el")
(load-file "~/.emacs.d/addons.el/e-shell.el")
(load-file "~/.emacs.d/addons.el/e-sr-speedbar.el")
(load-file "~/.emacs.d/addons.el/e-undo-tree.el")
(load-file "~/.emacs.d/addons.el/e-package.el")
(load-file "~/.emacs.d/addons.el/e-ahs.el")
(load-file "~/.emacs.d/addons.el/e-filecache.el")
(load-file "~/.emacs.d/addons.el/e-anything.el")
(load-file "~/.emacs.d/addons.el/e-org.el")
(load-file "~/.emacs.d/addons.el/e-ido.el")
(load-file "~/.emacs.d/addons.el/e-multi-web-mode.el")
(load-file "~/.emacs.d/addons.el/e-emms.el")
(load-file "~/.emacs.d/addons.el/e-smooth-scroll.el")
(load-file "~/.emacs.d/addons.el/e-yasnippet.el")
(load-file "~/.emacs.d/addons.el/e-wubi.el")
(load-file "~/.emacs.d/addons.el/e-etags.el")
(load-file "~/.emacs.d/addons.el/e-dired.el")
(load-file "~/.emacs.d/addons.el/e-el-get.el")
(load-file "~/.emacs.d/addons.el/e-google-translate.el")
(load-file "~/.emacs.d/addons.el/e-gnus.el")
(load-file "~/.emacs.d/addons.el/e-markdown.el")

(if (eq system-type 'gnu/linux) (load-file "~/.emacs.d/addons.el/e-cedet.el"))
(if (eq system-type "darwin")   (load-file "~/.emacs.d/addons.el/e-cedet.el"))

;;(load-file "~/.emacs.d/addons.el/e-appengine.el")

;;(if (display-graphic-p) (load-file "~/.emacs.d/addons.el/e-nxhtml.el"))
(if (display-graphic-p) (load-file "~/.emacs.d/addons.el/e-dired+.el"))

;;set fullscreen
;;(set-frame-parameter nil 'fullscreen 'fullboth)

;;remap M-x
(define-key global-map (kbd "\C-\\ \C-\\") 'execute-extended-command)
(global-set-key (kbd "C-;") ctl-x-map)

;;(put 'dired-find-alternate-file 'disabled nil)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq-default c-basic-offset 4
              tab-width 4)
(setq indent-line-function 'insert-tab)

(setq tab-stop-list 
      '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80
	  84 88 92 96 100 104 108 112 116 120 124))

(funcall (lambda ()
  ;;default variable setup
  ;;this function will call at end of this file
  (setq make-backup-files nil)
  ;;(setq-default tab-width nil)
  (global-auto-revert-mode nil)))

(if (eq system-type "darwin")
    ;;append brew path
    (setq PATH (format "%s:%s" "/usr/local/bin" (getenv "PATH")))
    (setq exec-path (append exec-path '("/usr/local/bin"))))

;;; Set up the auto-mode associations: -------------------------------
;;--------------------------------------------------------------------
(setq auto-mode-alist
   (append
    '(("\\.cc$"   	           . c++-mode)
	 ("\\.cpp$"  	           . c++-mode)
	 ("\\.ipp$"  	           . c++-mode)
	 ("\\.hpp$"  	           . c++-mode)
	 ("\\.h[r]?[0-9]*[a-z]?$"  . c++-mode))
    auto-mode-alist))

;; Put this one at the front of the list to override the default
;; c-mode association.
(setq auto-mode-alist (cons (cons "\\.h$" 'c++-mode) auto-mode-alist))

(setq nxml-child-indent 4)  ;; work convention is 4 spaces for HTML, etc
(setq nxml-outline-child-indent 4)
(setq mumamo-submode-indent-offset 4)
(setq sgml-basic-offset 4)

;;show current time
(display-time-mode 1)

;; set font on linux (ubuntu) 等宽字体设置
(if (eq system-type 'gnu/linux)
    (if (display-graphic-p)
        (progn (set-default-font "Ubuntu Mono:pixelsize=16") 
               (dolist (charset '(kana han symbol cjk-misc bopomofo)) 
                 (set-fontset-font (frame-parameter nil 'font) 
                                   charset 
                                   (font-spec :family "WenQuanYi Micro Hei" :size 16))))))

;;(defun set-monospaced-font (frame)
;;  (select-frame frame)
;;  (if (window-system frame)
;;      (if (eq system-type 'gnu/linux)
;;          (progn (set-default-font "Ubuntu Mono:pixelsize=16") 
;;                 (dolist (charset '(kana han symbol cjk-misc bopomofo)) 
;;                   (set-fontset-font (frame-parameter nil 'font) 
;;                                     charset 
;;                                     (font-spec :family "WenQuanYi Micro Hei" :size 16)))))))
;;
;;(add-hook 'after-make-frame-functions 'set-monospaced-font)


(defalias 'make 'compile)
(defalias 'fd   'find-name-dired)
(defalias 'nu   'linum-mode)
(defalias 'sr   'sr-speedbar-toggle)

;; Compilation output
;;(setq compilation-scroll-output t)

;;function to close all buffers
(defun close-all-buffers () (interactive) (mapc 'kill-buffer (buffer-list)))

;;auto reload if file modified by other editor
;;(global-auto-revert-mode t)

(setq user-full-name "D")

;;right-only
;;(set-fringe-mode '(0 . 1))
;;no-fringe
;;(set-fringe-mode '(0 . 0))

;;(setq tramp-default-method "ssh")

(if window-system (tool-bar-mode nil))
