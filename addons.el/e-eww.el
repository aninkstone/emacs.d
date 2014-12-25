(defvar gcs-shr-width 110)
;; eww stupidly overrides shr-width before calling shr-insert-document to render a page. So,
;; un-override it.
(defadvice shr-insert-document (around force-shr-width activate)
  (let ((shr-width (min (1- (window-width)) gcs-shr-width))) ad-do-it))
(defun eww-increase-width ()
  (interactive)
  (make-local-variable 'gcs-shr-width)
  (setq gcs-shr-width (+ 10 gcs-shr-width))
  (eww-reload))

(defun eww-decrease-width ()
  (interactive)
  (make-local-variable 'gcs-shr-width)
  (setq gcs-shr-width (- gcs-shr-width 10))
  (eww-reload))

(setq eww-search-words "http://www.google.com.hk/search?q=")
