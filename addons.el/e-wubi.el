(add-to-list 'load-path "~/.emacs.d/addons.st/wubi")

(require 'wubi)
(wubi-load-local-phrases) ; add user's Wubi phrases

(register-input-method
 "chinese-wubi" "Chinese-GB" 'quail-use-package
 "WuBi" "WuBi"
 "wubi")

;;(if (< emacs-major-version 21) (setup-chinese-gb-environment) (set-language-environment 'Chinese-GB))

(setq default-input-method "chinese-wubi")

(define-key global-map (kbd "C-`") 'toggle-input-method)
