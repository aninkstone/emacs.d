(require 'dired-x)
(setq-default dired-omit-files-p t) ; this is buffer-local variable

(setq dired-omit-files
    (concat dired-omit-files "\\|^\\..+$\\|\\.pdf$\\|\\.tex$\\|cscope\\..*$"))
