(add-to-list 'load-path "~/.emacs.d/addons.gt/org-mode/lisp")
(require 'ox)
(require 'ob)
(require 'ob-table)
(require 'org)

(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(setq org-log-done 'time)
(setq org-log-done 'note)

;;(org-indent-mode 1)

(setq org-use-fast-todo-selection t)
;;(setq org-agenda-include-diary t)
;;(setq org-treat-S-cursor-todo-selection-as-state-change nil)

(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" ))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold))))

;;Fast Todo Selection
(setq org-use-fast-todo-selection t)
(setq org-treat-S-cursor-todo-selection-as-state-change nil)

(setq org-todo-state-tags-triggers
      (quote (("CANCELLED" ("CANCELLED" . t))
              ("WAITING" ("WAITING" . t))
              ("HOLD" ("WAITING" . t) ("HOLD" . t))
              (done ("WAITING") ("HOLD"))
              ("TODO" ("WAITING") ("CANCELLED") ("HOLD"))
              ("NEXT" ("WAITING") ("CANCELLED") ("HOLD"))
              ("DONE" ("WAITING") ("CANCELLED") ("HOLD")))))

;;Capture Templates

;;=======================================================================================
;;org-mode setup refile
;;=======================================================================================

;;(if (boundp 'org-directory)
;;    (message "Set org-directory to ~/Documents/orgs")
;;  (setq org-directory "~/Documents/orgs"))

(setq org-default-notes-file (concat org-directory "/note.org"))
(setq org-agenda-files (list (concat org-directory "/jobs.org")
                             (concat org-directory "/note.org")))

;; I use C-c r to start capture mode when using SSH from my Android phone
(global-set-key (kbd "C-c r") 'org-capture)

;; Capture templates for: TODO tasks, Notes, appointments, phone calls, and org-protocol
(setq org-capture-templates
      (quote (("t" "todo" entry (file (concat org-directory "/jobs.org"))
               "* TODO %?\n%U\n%a\n" :clock-in t :clock-resume t)
              ("n" "note" entry (file (concat org-directory "/note.org"))
               "* %? :NOTE:\n%U\n%a\n" :clock-in t :clock-resume t))))

; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9) (org-agenda-files :maxlevel . 9))))

; Use full outline paths for refile targets - we file directly with IDO
(setq org-refile-use-outline-path t)

; Targets complete directly with IDO
(setq org-outline-path-complete-in-steps nil)

; Allow refile to create parent tasks with confirmation
(setq org-refile-allow-creating-parent-nodes (quote confirm))

; Use IDO for both buffer and file completion and ido-everywhere to t
;;(setq org-completion-use-ido t)
;;(setq ido-everywhere t)
;;(setq ido-max-directory-size 100000)
;;(ido-mode (quote both))
; Use the current window when visiting files and buffers with ido
;;(setq ido-default-file-method 'selected-window)
;;(setq ido-default-buffer-method 'selected-window)

;;;; Refile settings
; Exclude DONE state tasks from refile targets
(defun bh/verify-refile-target ()
  "Exclude todo keywords with a done state from refile targets"
  (not (member (nth 2 (org-heading-components)) org-done-keywords)))

(setq org-refile-target-verify-function 'bh/verify-refile-target)
