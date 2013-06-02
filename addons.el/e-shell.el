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

;;disable evil for eshell
;;(add-hook 'shell-mode-hook '(lambda () (evil-mode -1)))
;;(add-hook 'gdb-mode-hook '(lambda () (evil-mode -1)))
;;(add-hook 'term-exec-hook '(lambda () (evil-mode -1)))

(defun mode-hook-func  ()
  (set-process-sentinel (get-buffer-process (current-buffer)) #'kill-buffer-on-exit))

(defun kill-buffer-on-exit (process state)
  (message "%s" state)
  (if (or
      (string-match "exited abnormally with code.*" state)
      (string-match "finished" state))
      (kill-buffer (current-buffer))))

;;shell mode
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
