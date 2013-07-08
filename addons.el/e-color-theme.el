;;color theme setting
(add-to-list 'load-path "~/.emacs.d/addons.st/color-theme-6.6.0")
(add-to-list 'load-path "~/.emacs.d/addons.gt/color-theme-tangotango")
(add-to-list 'custom-theme-load-path "~/.emacs.d/addons.gt/color-theme-tangotango")

(require 'color-theme-tangotango)
(if window-system (color-theme-tangotango))

(set-variable 'color-theme-is-global nil)

(defun mb/pick-color-theme (frame)
  (select-frame frame)
  (if (window-system frame) (color-theme-tangotango) (tool-bar-mode -1)))
(add-hook 'after-make-frame-functions 'mb/pick-color-theme)
