;;color theme setting
(add-to-list 'load-path "~/.emacs.d/addons.st/color-theme-6.6.0")
(add-to-list 'load-path "~/.emacs.d/addons.gt/color-theme-tangotango")
(add-to-list 'custom-theme-load-path "~/.emacs.d/addons.gt/color-theme-tangotango")

(set-variable 'color-theme-is-global nil)

(if (eq system-type 'gnu/linux)
  (progn
    (load-theme 'tangotango)
    (enable-theme 'tangotango)
    (defun mb/pick-color-theme (frame)
      (select-frame frame)
      (if (window-system frame) (enable-theme 'tangotango) (disable-theme 'tangotango)))
    (add-hook 'after-make-frame-functions 'mb/pick-color-theme)

    (if window-system (enable-theme 'tangotango)(disable-theme 'tangotango)))
  (progn
    (require 'color-theme-tangotango)
    (defun mb/pick-color-theme (frame)
      (select-frame frame)
      (if (window-system frame) (color-theme-tangotango))))
    (add-hook 'after-make-frame-functions 'mb/pick-color-theme)

    (if window-system (color-theme-tangotango))
)
