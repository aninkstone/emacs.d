;;; appengine-java-mode.el --- mode for google's appengine (SDK: java)

;; Copyright (C) 2013 Daniel C
;; Author: Daniel C <thatways.c@gmail.com>
;; Maintainer: Daniel C <thatways.c@gmail.com>
;; Created: 
;; Version: 0.0.1

;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;; Installation instructions
;; --------------------------------
;; (setq appengine-java-root-path (concat appengine-java-sdk-path"appengine-java-sdk-1.6.2.1/"))
;; (add-to-list 'load-path (concat appengine-emasc-toolkit-path "appengine-emacs-toolkit"))
;; (require 'appengine-java-mode)
;; (add-hook 'appengine-java-mode-hook
;;           (lambda ()
;;             (progn (local-set-key "\C-cc" 'appengine-java-start-appserver)
;;                    (local-set-key "\C-cb" 'appengine-browse-appserver)
;;                    (local-set-key "\C-cu" 'appengine-java-update-appserver))))

(load-file (replace-regexp-in-string "appengine-java-mode.el" "appengine-common.el" load-file-name))
(message (concat "Loading " load-file-name))

;; public var
(defvar appengine-java-root-path nil "*Path of appengine SDK")

(defvar appengine-java-project-path nil "*Path of appengine project")
(defvar appengine-java-project-name nil "*Path of appengine project")

(defvar appengine-java-template-directory
  (concat appengine-emasc-toolkit-path"/new_project_template_gae_java1.7.4") "*Project template for java")

;; public defun
(defun* appengine-java-start-appserver (&optional (port nil))
  "Open shell to start gae appserver"
  (interactive)
  (save-buffer buffer-file-name)
  (unless (and (not (equal nil appengine-java-root-path))
               (file-exists-p appengine-java-root-path))
    (error "[appengine-java] Cannot find appengine-java-root-path."))
  (if (eq nil port)
      (progn
        (appengine-check-server-hash buffer-file-name)
        (setq port appengine-server-port)))

  ;; get ready buffer
  (setq appengine-shell-buffer-name (concat "*gae-java-appserver-"port"*"))
  (if (not (eq nil (get-buffer appengine-shell-buffer-name)))
      (kill-buffer appengine-shell-buffer-name))

  ;;(setq appengine-project-name (replace-regexp-in-string "build.xml" "" buffer-file-name))
  (setq appengine-project-name (concat appengine-java-project-path "/"))
  (setq appengine-project-name (concat appengine-project-name "war"))
  (shell appengine-shell-buffer-name)
  (message (concat appengine-java-root-path"/bin/dev_appserver.sh --port="port" "appengine-project-name"\n"))
  ;; start server
  (comint-send-string (current-buffer) (concat "echo '[appengine-java] AppServer Starting "appengine-project-name" ...' \n"))
  (if (eq system-type 'windows-nt)
      (comint-send-string (current-buffer)(concat appengine-java-root-path"/bin/dev_appserver.cmd --port="port" "appengine-project-name"\n")))
    (comint-send-string (current-buffer)(concat appengine-java-root-path"/bin/dev_appserver.sh --port="port" "appengine-project-name"\n")))

  (end-of-buffer)
  (other-window -1))

(defun appengine-java-update-appserver ()
  "Update appserver"
  (interactive)
  (unless (and (not (equal nil appengine-java-root-path))
               (file-exists-p appengine-java-root-path))
    (error "[appengine-java] Cannot find appengine-java-root-path."))
  (save-some-buffers)
  (setq appengine-project-name (replace-regexp-in-string "build.xml" "" buffer-file-name))

  (shell "*appengine-temp*")
  (comint-send-string (current-buffer) (concat "echo '[appengine-java] AppServer Updateing "appengine-project-name"...' \n"))
  (if (eq system-type 'windows-nt)
      (comint-send-string (current-buffer) (concat "\""appengine-java-root-path"/bin/appcfg.cmd\" update \""appengine-project-name"www\" \n"))
    (comint-send-string (current-buffer) (concat "\""appengine-java-root-path"/bin/appcfg.sh\" update \""appengine-project-name"www\" \n")))
  (end-of-buffer)
  (other-window -1))

;; For project
(defun appengine-java-create-project (this-project-path this-project-name)
  "Create new project"
  (unless (and (not (equal nil appengine-java-template-directory))
               (file-exists-p appengine-java-template-directory))
    (error "[appengine-java] Cannot find google appengine template directory!"))

  (copy-directory appengine-java-template-directory this-project-path)
  (find-file (concat this-project-path"/build.xml"))
  (beginning-of-buffer)
  (replace-string "sample-project" this-project-name)
  (replace-string "../.." appengine-java-root-path)
  (beginning-of-buffer)
  (save-buffer buffer-file-name)
  (appengine-java-mode))

(defun appengine-java-new-project ()
  "Create new project"
  (interactive)
  (unless (and (not (equal nil appengine-java-root-path))
               (file-exists-p appengine-java-root-path))
    (error "[appengine-java] Cannot find appengine-java-root-path."))

  (if (equal nil buffer-file-name)
      (setq default-appengine-java-project-path "~/")
    (setq default-appengine-java-project-path (file-name-directory buffer-file-name)))
  ;; read information from mini buffer
  (let ((this-project-path (read-string "[appengine-java] Project path: "
                                  default-appengine-java-project-path nil default-appengine-java-project-path nil))
        (this-project-name (read-string "[appengine-java] Project name (default gae-java-project): "
                                  nil nil "gae-java-project" nil)))
    (message "Hey")
    (message this-project-path)
    (message "Hey1")
    (setq this-project-path (concat this-project-path"/"this-project-name))
    (message "[appengine-java] Building java project at %s." this-project-path)
    (when (and (file-exists-p this-project-path) (file-exists-p (concat this-project-path"/build.xml")))
      (find-file (concat this-project-path"/build.xml"))
      (appengine-java-mode)
      (error "[appengine-java] Project exist!"))
    (if (or (not (file-exists-p this-project-path))
            (and (file-exists-p this-project-path)
                 (y-or-n-p (format "[appengine-java] Folder %s exist! Overwrit?" this-project-path))))
        (appengine-java-create-project this-project-path this-project-name))
    (setq appengine-java-project-path this-project-path)
    (setq appengine-java-project-name this-project-name)
    )
  ;;save the project path and project name
  ;;FIXME: this means only one project can be hode in global context
  )

;; define the major mode.

(define-derived-mode appengine-java-mode xml-mode "appengine-java-mode")

(provide 'appengine-java-mode)

;;; appengine-java-mode.el ends here