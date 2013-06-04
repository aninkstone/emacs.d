;;; appengine-common.el --- mode for google's appengine (SDK: java)

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

(message (concat "Loading " load-file-name))

;; public var

(defvar appengine-server-port "8888"
  "*Port for app server")

;; private var

(defvar appengine-server-port-cache appengine-server-port
  "*Cache port for app server")

(defvar appengine-server-hash (make-hash-table :test 'equal))

(defun appengine-check-server-hash (tmpname)
  "Check app server name in hash"
  (setq tmpport (gethash tmpname appengine-server-hash))
  (if (equal nil tmpport)
      (progn
        (setq appengine-server-port-cache (number-to-string (+ (string-to-int appengine-server-port-cache) 1)))
        (setq appengine-server-port appengine-server-port-cache)
        (puthash tmpname appengine-server-port appengine-server-hash))
    (setq appengine-server-port tmpport)))

(defun* appengine-browse-appserver (&optional (port nil))
  "Open browser to browse appserver"
  (interactive)
  (if (eq nil port)
      (progn
        (appengine-check-server-hash buffer-file-name)
        (setq port appengine-server-port)))
  (let ((url (read-string "[appengine] url: "
                          (concat "http://localhost:"port"/") nil
                          (concat "http://localhost:"port) nil)))
    (browse-url url)))