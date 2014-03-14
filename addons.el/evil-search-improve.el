
(require 'evil-search)

(evil-define-motion evil-search-forward ()
  (format "Search forward for user-entered text.
Searches for regular expression if `evil-regexp-search' is t.%s"
          (if (and (fboundp 'isearch-forward)
                   (documentation 'isearch-forward))
              (format "\n\nBelow is the documentation string \
for `isearch-forward',\nwhich lists available keys:\n\n%s"
                      (documentation 'isearch-forward)) ""))
  :type exclusive
  (evil-search-incrementally t evil-regexp-search))

(evil-define-motion evil-search-backward ()
  (format "Search backward for user-entered text.
Searches for regular expression if `evil-regexp-search' is t.%s"
          (if (and (fboundp 'isearch-forward)
                   (documentation 'isearch-forward))
              (format "\n\nBelow is the documentation string \
for `isearch-forward',\nwhich lists available keys:\n\n%s"
                      (documentation 'isearch-forward)) ""))
  :jump t
  :type exclusive
  (evil-search-incrementally nil evil-regexp-search))

(evil-define-motion evil-search-symbol-backward (count)
  "Search backward for symbol under point."
  :jump t
  :type exclusive
  (dotimes (var (or count 1))
    (evil-search-symbol nil)))

(evil-define-motion evil-search-symbol-forward (count)
  "Search forward for symbol under point."
  :jump t
  :type exclusive
  (dotimes (var (or count 1))
    (evil-search-symbol t)))


(defun evil-search-symbol (forward)
  "Search for symbol near point.
If FORWARD is nil, search backward, otherwise forward."
  (let ((string (car-safe regexp-search-ring))
        (move (if forward 'forward-char 'backward-char))
        (end (if forward 'eobp 'bobp)))
    (setq isearch-forward forward)
    (cond
     ((and (memq last-command
                 '(evil-search-symbol-forward
                   evil-search-symbol-backward))
           (stringp string)
           (not (string= string "")))
      (evil-search string forward t))
     (t
      (setq string (evil-find-symbol forward))
      (if (null string)
          (error "No symbol under point")
        (setq string (format "\\_<%s\\_>" (regexp-quote string))))
      (evil-search string forward t)))))

(provide 'evil-search-improve)
