;;color theme setting
(add-to-list 'load-path "~/.emacs.d/addons.st/color-theme-6.6.0")
(add-to-list 'load-path "~/.emacs.d/addons.gt/color-theme-tangotango")

(require 'color-theme-tangotango)
;;(color-theme-tangotango)

(defun mb/pick-color-theme (frame)
  (select-frame frame)
  (if (window-system frame)
      (progn  
        (color-theme-tangotango))))

(add-hook 'after-make-frame-functions 'mb/pick-color-theme)

;; For when started with emacs or emacs -nw rather than emacs --daemon
(if window-system  (color-theme-tangotango))
