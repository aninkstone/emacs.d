;; Googel appengine mode
(add-to-list 'load-path "~/.emacs.d/addons.me/appengine-emacs-toolkit")

(setq appengine-java-sdk-path "/Volumes/E/development/web/")
(setq appengine-emasc-toolkit-path "~/.emacs.d/addons.me/appengine-emacs-toolkit")
(setq appengine-java-root-path (concat appengine-java-sdk-path "appengine-java-sdk-1.7.5"))

(require 'appengine-java-mode)
(add-hook 'appengine-java-mode-hook
          (lambda ()
            (local-set-key "\C-cc" 'appengin-java-start-appserver)
            (local-set-key "\C-cb" 'appengine-browse-appserver)
            (local-set-key "\C-cu" 'appengine-java-update-appserver)))
