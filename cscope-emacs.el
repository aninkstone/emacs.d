;;cscope setup
(add-to-list 'load-path "~/.emacs.d")
(require 'xcscope)

(define-key global-map "\C-\\" nil)
(define-key global-map "\C-\\s" 'cscope-find-this-symbol)
(define-key global-map "\C-\\g" 'cscope-find-global-definition)
(define-key global-map "\C-\\c" 'cscope-find-functions-calling-this-function)
(define-key global-map "\C-\\t" 'cscope-find-this-text-string)
(define-key global-map "\C-\\e" 'cscope-find-egrep-pattern)
(define-key global-map "\C-\\f" 'cscope-find-this-file)
(define-key global-map "\C-\\i" 'cscope-find-files-including-file)
(define-key global-map "\C-\\d" 'cscope-find-called-functions)

