;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "golden-ratio/golden-ratio" "golden-ratio/golden-ratio.el"
;;;;;;  (21675 30662 0 0))
;;; Generated autoloads from golden-ratio/golden-ratio.el

(autoload 'golden-ratio "golden-ratio/golden-ratio" "\
Resizes current window to the golden-ratio's size specs.

\(fn)" t nil)

(defvar golden-ratio-mode nil "\
Non-nil if Golden-Ratio mode is enabled.
See the command `golden-ratio-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `golden-ratio-mode'.")

(custom-autoload 'golden-ratio-mode "golden-ratio/golden-ratio" nil)

(autoload 'golden-ratio-mode "golden-ratio/golden-ratio" "\
Enable automatic window resizing with golden ratio.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "helm/helm" "helm/helm.el" (21426 30375 0 0))
;;; Generated autoloads from helm/helm.el

(autoload 'helm-define-multi-key "helm/helm" "\
In KEYMAP, define key sequence KEY for function list FUNCTIONS.
Each function run sequentialy each time the key KEY is pressed.
If DELAY is specified switch back to initial function of FUNCTIONS list
after DELAY seconds.
The functions in FUNCTIONS list are functions with no args.
e.g
  (defun foo ()
    (message \"Run foo\"))
  (defun bar ()
    (message \"Run bar\"))
  (defun baz ()
    (message \"Run baz\"))

\(helm-define-multi-key global-map \"<f5> q\" '(foo bar baz) 2)

Each time \"<f5> q\" is pressed the next function is executed, if you wait
More than 2 seconds, next hit will run again the first function and so on.

\(fn KEYMAP KEY FUNCTIONS &optional DELAY)" nil nil)

(autoload 'helm-debug-open-last-log "helm/helm" "\
Open helm log file of last helm session.
If `helm-last-log-file' is nil, switch to `helm-debug-buffer' .

\(fn)" t nil)

(autoload 'helm-resume "helm/helm" "\
Resurrect previously invoked `helm'.
Called with a prefix arg, allow choosing among all existing
helm buffers.  i.e choose among various helm sessions.
Called from lisp, you can specify a buffer-name as a string with ARG.

\(fn ARG)" t nil)

(autoload 'helm-resume-previous-session-after-quit "helm/helm" "\
Resume previous helm session within running helm.

\(fn ARG)" t nil)

(autoload 'helm-resume-list-buffers-after-quit "helm/helm" "\
List resumable helm buffers within running helm.

\(fn)" t nil)

(autoload 'helm-other-buffer "helm/helm" "\
Simplified interface of `helm' with other `helm-buffer'.
Call `helm' with only ANY-SOURCES and ANY-BUFFER as args.

\(fn ANY-SOURCES ANY-BUFFER)" nil nil)

(autoload 'helm-toggle-suspend-update "helm/helm" "\
Enable or disable update of display in helm.
This can be useful for e.g writing quietly a complex regexp.

\(fn)" t nil)

(autoload 'helm-force-update "helm/helm" "\
Force recalculation and update of candidates.
The difference with `helm-update' is this function is reevaling
the `init' and `update' attributes functions when present
before updating candidates according to pattern i.e calling `helm-update'.
Selection is preserved to current candidate or moved to PRESELECT
if specified.

\(fn &optional PRESELECT)" t nil)

(autoload 'helm-select-action "helm/helm" "\
Select an action for the currently selected candidate.
If action buffer is selected, back to the helm buffer.

\(fn)" t nil)

(autoload 'helm-previous-line "helm/helm" "\
Move selection to the previous line.

\(fn &optional ARG)" t nil)

(autoload 'helm-next-line "helm/helm" "\
Move selection to the next line.

\(fn &optional ARG)" t nil)

(autoload 'helm-previous-page "helm/helm" "\
Move selection back with a pageful.

\(fn)" t nil)

(autoload 'helm-next-page "helm/helm" "\
Move selection forward with a pageful.

\(fn)" t nil)

(autoload 'helm-beginning-of-buffer "helm/helm" "\
Move selection at the top.

\(fn)" t nil)

(autoload 'helm-end-of-buffer "helm/helm" "\
Move selection at the bottom.

\(fn)" t nil)

(autoload 'helm-previous-source "helm/helm" "\
Move selection to the previous source.

\(fn)" t nil)

(autoload 'helm-next-source "helm/helm" "\
Move selection to the next source.

\(fn)" t nil)

(autoload 'helm-confirm-and-exit-minibuffer "helm/helm" "\
Maybe ask for confirmation when exiting helm.
It is similar to `minibuffer-complete-and-exit' adapted to helm.
If `minibuffer-completion-confirm' value is 'confirm,
send in minibuffer confirm message and exit on next hit.
If `minibuffer-completion-confirm' value is t,
don't exit and send message 'no match'.

\(fn)" t nil)

(autoload 'helm-exit-minibuffer "helm/helm" "\
Select the current candidate by exiting the minibuffer.

\(fn)" t nil)

(autoload 'helm-keyboard-quit "helm/helm" "\
Quit minibuffer in helm.
If action buffer is displayed, kill it.

\(fn)" t nil)

(autoload 'helm-debug-output "helm/helm" "\
Show all helm-related variables at this time.

\(fn)" t nil)

(autoload 'helm-delete-current-selection "helm/helm" "\
Delete the currently selected item.

\(fn)" t nil)

(autoload 'helm-delete-minibuffer-contents "helm/helm" "\
Delete minibuffer contents.
When called with a prefix arg or when
`helm-delete-minibuffer-contents-from-point' is non--nil,
delete minibuffer contents from point instead of deleting all.

\(fn &optional ARG)" t nil)

(autoload 'helm-toggle-resplit-window "helm/helm" "\
Toggle resplit helm window, vertically or horizontally.

\(fn)" t nil)

(autoload 'helm-narrow-window "helm/helm" "\
Narrow helm window.

\(fn)" t nil)

(autoload 'helm-enlarge-window "helm/helm" "\
Enlarge helm window.

\(fn)" t nil)

(autoload 'helm-swap-windows "helm/helm" "\
Swap window holding `helm-buffer' with other window.

\(fn)" t nil)

(autoload 'helm-select-2nd-action "helm/helm" "\
Select the 2nd action for the currently selected candidate.

\(fn)" t nil)

(autoload 'helm-select-3rd-action "helm/helm" "\
Select the 3rd action for the currently selected candidate.

\(fn)" t nil)

(autoload 'helm-select-4th-action "helm/helm" "\
Select the 4th action for the currently selected candidate.

\(fn)" t nil)

(autoload 'helm-select-2nd-action-or-end-of-line "helm/helm" "\
Select the 2nd action for the currently selected candidate.
This happen when point is at the end of minibuffer.
Otherwise goto the end of minibuffer.

\(fn)" t nil)

(autoload 'helm-execute-persistent-action "helm/helm" "\
Perform the associated action ATTR without quitting helm.
ATTR default is 'persistent-action', but it can be anything else.
In this case you have to add this new attribute to your source.

When `helm-full-frame' or SPLIT-ONEWINDOW are non--nil,
and `helm-buffer' is displayed in only one window,
the helm window is splitted to display
`helm-select-persistent-action-window' in other window 
and keep its visibility.

\(fn &optional (ATTR 'persistent-action) SPLIT-ONEWINDOW)" t nil)

(autoload 'helm-scroll-other-window "helm/helm" "\
Scroll other window (not *Helm* window) upward.

\(fn)" t nil)

(autoload 'helm-scroll-other-window-down "helm/helm" "\
Scroll other window (not *Helm* window) downward.

\(fn)" t nil)

(autoload 'helm-recenter-top-bottom-other-window "helm/helm" "\
`recenter-top-bottom' in other window (not *Helm* window).

\(fn)" t nil)

(autoload 'helm-reposition-window-other-window "helm/helm" "\
`helm-reposition-window' in other window (not *Helm* window).

\(fn)" t nil)

(autoload 'helm-toggle-visible-mark "helm/helm" "\
Toggle helm visible mark at point.

\(fn)" t nil)

(autoload 'helm-mark-all "helm/helm" "\
Mark all visible unmarked candidates in current source.

\(fn)" t nil)

(autoload 'helm-unmark-all "helm/helm" "\
Unmark all candidates in all sources of current helm session.

\(fn)" t nil)

(autoload 'helm-toggle-all-marks "helm/helm" "\
Toggle all marks.
Mark all visible candidates of current source or unmark all candidates
visible or invisible in all sources of current helm session

\(fn)" t nil)

(autoload 'helm-display-all-visible-marks "helm/helm" "\
Show all `helm' visible marks strings.
Only useful for debugging.

\(fn)" t nil)

(autoload 'helm-next-visible-mark "helm/helm" "\
Move next helm visible mark.
If PREV is non-nil move to precedent.

\(fn &optional PREV)" t nil)

(autoload 'helm-prev-visible-mark "helm/helm" "\
Move previous helm visible mark.

\(fn)" t nil)

(autoload 'helm-yank-selection "helm/helm" "\
Set minibuffer contents to current display selection.
With a prefix arg set to real value of current selection.

\(fn ARG)" t nil)

(autoload 'helm-kill-selection-and-quit "helm/helm" "\
Store current selection to kill ring.
With a prefix arg set to real value of current selection.

\(fn ARG)" t nil)

(autoload 'helm-follow-mode "helm/helm" "\
Execute persistent action everytime the cursor is moved when enabled.
The mode is enabled for the current source only, you will have to turn it
on again when you go to next source if you want it there also.
This mode can be enabled or disabled interactively at anytime during
helm session or enabled specifically by source by adding the `follow'
attribute to this source.
Even when the attribute `follow' exists in source, it is still possible
to disable/enable this mode interactively.
Note that when you disable it interactively and `follow' attribute exists,
`helm-follow-mode' will be disabled on next helm session even if `follow'
attribute is specified in source. To avoid this set your `follow' attribute
in source in `helm-before-initialize-hook'.

e.g:

\(add-hook 'helm-before-initialize-hook
          #'(lambda () (helm-attrset 'follow 1 helm-source-buffers-list)))

This will enable `helm-follow-mode' automatically in `helm-source-buffers-list'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-adaptative" "helm/helm-adaptative.el"
;;;;;;  (21426 30375 0 0))
;;; Generated autoloads from helm/helm-adaptative.el

(autoload 'helm-reset-adaptative-history "helm/helm-adaptative" "\
Delete all `helm-adaptive-history' and his file.
Useful when you have a old or corrupted `helm-adaptive-history-file'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-apt" "helm/helm-apt.el" (21426 30375
;;;;;;  0 0))
;;; Generated autoloads from helm/helm-apt.el

(autoload 'helm-apt "helm/helm-apt" "\
Preconfigured `helm' : frontend of APT package manager.
With a prefix arg reload cache.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-bbdb" "helm/helm-bbdb.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-bbdb.el

(autoload 'helm-bbdb "helm/helm-bbdb" "\
Preconfigured `helm' for BBDB.

Needs BBDB.

http://bbdb.sourceforge.net/

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-bookmark" "helm/helm-bookmark.el"
;;;;;;  (21426 30375 0 0))
;;; Generated autoloads from helm/helm-bookmark.el

(autoload 'helm-bookmarks "helm/helm-bookmark" "\
Preconfigured `helm' for bookmarks.

\(fn)" t nil)

(autoload 'helm-pp-bookmarks "helm/helm-bookmark" "\
Preconfigured `helm' for bookmarks (pretty-printed).

\(fn)" t nil)

(autoload 'helm-filtered-bookmarks "helm/helm-bookmark" "\
Preconfigured helm for bookmarks (filtered by category).
Optional source `helm-source-bookmark-addressbook' is loaded
only if external library addressbook-bookmark.el is available.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-buffers" "helm/helm-buffers.el"
;;;;;;  (21426 30375 0 0))
;;; Generated autoloads from helm/helm-buffers.el

(autoload 'helm-buffers-list "helm/helm-buffers" "\
Preconfigured `helm' to list buffers.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-call-tree" "helm/helm-call-tree.el"
;;;;;;  (21426 30375 0 0))
;;; Generated autoloads from helm/helm-call-tree.el

(autoload 'helm-simple-call-tree "helm/helm-call-tree" "\
Preconfigured `helm' for simple-call-tree. List function relationships.

Needs simple-call-tree.el.
http://www.emacswiki.org/cgi-bin/wiki/download/simple-call-tree.el

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-color" "helm/helm-color.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-color.el

(autoload 'helm-colors "helm/helm-color" "\
Preconfigured `helm' for color.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-command" "helm/helm-command.el"
;;;;;;  (21426 30375 0 0))
;;; Generated autoloads from helm/helm-command.el

(autoload 'helm-M-x "helm/helm-command" "\
Preconfigured `helm' for Emacs commands.
It is `helm' replacement of regular `M-x' `execute-extended-command'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-config" "helm/helm-config.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-config.el

(autoload 'helm-configuration "helm/helm-config" "\
Customize `helm'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-dabbrev" "helm/helm-dabbrev.el"
;;;;;;  (21426 30375 0 0))
;;; Generated autoloads from helm/helm-dabbrev.el

(autoload 'helm-dabbrev "helm/helm-dabbrev" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-elisp" "helm/helm-elisp.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-elisp.el

(autoload 'helm-lisp-completion-at-point "helm/helm-elisp" "\
Helm lisp symbol completion at point.

\(fn)" t nil)

(autoload 'helm-complete-file-name-at-point "helm/helm-elisp" "\
Complete file name at point.

\(fn &optional FORCE)" t nil)

(autoload 'helm-lisp-indent "helm/helm-elisp" "\


\(fn)" t nil)

(autoload 'helm-lisp-completion-or-file-name-at-point "helm/helm-elisp" "\
Complete lisp symbol or filename at point.
Filename completion happen if string start after or between a double quote.

\(fn)" t nil)

(autoload 'helm-apropos "helm/helm-elisp" "\
Preconfigured helm to describe commands, functions, variables and faces.

\(fn)" t nil)

(autoload 'helm-manage-advice "helm/helm-elisp" "\
Preconfigured `helm' to disable/enable function advices.

\(fn)" t nil)

(autoload 'helm-locate-library "helm/helm-elisp" "\


\(fn)" t nil)

(autoload 'helm-timers "helm/helm-elisp" "\
Preconfigured `helm' for timers.

\(fn)" t nil)

(autoload 'helm-complex-command-history "helm/helm-elisp" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-elisp-package" "helm/helm-elisp-package.el"
;;;;;;  (21426 30375 0 0))
;;; Generated autoloads from helm/helm-elisp-package.el

(autoload 'helm-list-elisp-packages "helm/helm-elisp-package" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-elscreen" "helm/helm-elscreen.el"
;;;;;;  (21426 30375 0 0))
;;; Generated autoloads from helm/helm-elscreen.el

(autoload 'helm-elscreen "helm/helm-elscreen" "\
Preconfigured helm to list elscreen.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-emms" "helm/helm-emms.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-emms.el

(autoload 'helm-emms "helm/helm-emms" "\
Preconfigured `helm' for emms sources.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-eshell" "helm/helm-eshell.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-eshell.el

(autoload 'helm-esh-pcomplete "helm/helm-eshell" "\
Preconfigured helm to provide helm completion in eshell.

\(fn)" t nil)

(autoload 'helm-eshell-history "helm/helm-eshell" "\
Preconfigured helm for eshell history.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-eval" "helm/helm-eval.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-eval.el

(autoload 'helm-eval-expression "helm/helm-eval" "\
Preconfigured helm for `helm-source-evaluation-result'.

\(fn ARG)" t nil)

(autoload 'helm-eval-expression-with-eldoc "helm/helm-eval" "\
Preconfigured helm for `helm-source-evaluation-result' with `eldoc' support. 

\(fn)" t nil)

(autoload 'helm-calcul-expression "helm/helm-eval" "\
Preconfigured helm for `helm-source-calculation-result'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-external" "helm/helm-external.el"
;;;;;;  (21426 30375 0 0))
;;; Generated autoloads from helm/helm-external.el

(autoload 'helm-run-external-command "helm/helm-external" "\
Preconfigured `helm' to run External PROGRAM asyncronously from Emacs.
If program is already running exit with error.
You can set your own list of commands with
`helm-external-commands-list'.

\(fn PROGRAM)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-files" "helm/helm-files.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-files.el

(autoload 'helm-browse-project "helm/helm-files" "\
Browse files and see status of project with its vcs.
Only hg and git are supported for now.
Fall back to `helm-find-files' if directory is not under
control of one of those vcs.
Need dependencies:
<https://github.com/emacs-helm/helm-ls-git.git>
and
<https://github.com/emacs-helm/helm-mercurial-queue/blob/master/helm-ls-hg.el>.

\(fn)" t nil)

(autoload 'helm-find "helm/helm-files" "\
Preconfigured `helm' for the find shell command.

\(fn ARG)" t nil)

(autoload 'helm-find-files "helm/helm-files" "\
Preconfigured `helm' for helm implementation of `find-file'.
Called with a prefix arg show history if some.
Don't call it from programs, use `helm-find-files-1' instead.
This is the starting point for nearly all actions you can do on files.

\(fn ARG)" t nil)

(autoload 'helm-for-files "helm/helm-files" "\
Preconfigured `helm' for opening files.
Run all sources defined in `helm-for-files-preferred-list'.

\(fn)" t nil)

(autoload 'helm-recentf "helm/helm-files" "\
Preconfigured `helm' for `recentf'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-firefox" "helm/helm-firefox.el"
;;;;;;  (21426 30375 0 0))
;;; Generated autoloads from helm/helm-firefox.el

(autoload 'helm-firefox-bookmarks "helm/helm-firefox" "\
Preconfigured `helm' for firefox bookmark.
You will have to enable html bookmarks in firefox:
open about:config in firefox and double click on this line to enable value to true:

user_pref(\"browser.bookmarks.autoExportHTML\", false);

You should have now:

user_pref(\"browser.bookmarks.autoExportHTML\", true);

After closing firefox, you will be able to browse you bookmarks.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-font" "helm/helm-font.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-font.el

(autoload 'helm-select-xfont "helm/helm-font" "\
Preconfigured `helm' to select Xfont.

\(fn)" t nil)

(autoload 'helm-ucs "helm/helm-font" "\
Preconfigured helm for `ucs-names' math symbols.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-gentoo" "helm/helm-gentoo.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-gentoo.el

(autoload 'helm-gentoo "helm/helm-gentoo" "\
Preconfigured `helm' for gentoo linux.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-grep" "helm/helm-grep.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-grep.el

(autoload 'helm-goto-precedent-file "helm/helm-grep" "\
Go to precedent file in helm grep/etags buffers.

\(fn)" t nil)

(autoload 'helm-goto-next-file "helm/helm-grep" "\
Go to precedent file in helm grep/etags buffers.

\(fn)" t nil)

(autoload 'helm-grep-run-save-buffer "helm/helm-grep" "\
Run grep save results action from `helm-do-grep-1'.

\(fn)" t nil)

(autoload 'helm-grep-mode "helm/helm-grep" "\
Major mode to provide actions in helm grep saved buffer.

Special commands:
\\{helm-grep-mode-map}

\(fn)" t nil)

(autoload 'helm-gm-next-file "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-gm-precedent-file "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-grep-mode-quit "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-grep-mode-jump "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-grep-mode-jump-other-window-forward "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-grep-mode-jump-other-window-backward "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-grep-mode-jump-other-window "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-do-grep "helm/helm-grep" "\
Preconfigured helm for grep.
Contrarily to Emacs `grep', no default directory is given, but
the full path of candidates in ONLY.
That allow to grep different files not only in `default-directory' but anywhere
by marking them (C-<SPACE>). If one or more directory is selected
grep will search in all files of these directories.
You can also use wildcard in the base name of candidate.
If a prefix arg is given use the -r option of grep (recurse).
The prefix arg can be passed before or after start file selection.
See also `helm-do-grep-1'.

\(fn)" t nil)

(autoload 'helm-do-zgrep "helm/helm-grep" "\
Preconfigured helm for zgrep.

\(fn)" t nil)

(autoload 'helm-do-pdfgrep "helm/helm-grep" "\
Preconfigured helm for pdfgrep.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-help" "helm/helm-help.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-help.el

(defvar helm-mode-line-string "\\<helm-map>\\[helm-help]:Help \\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct" "\
Help string displayed in mode-line in `helm'.
It can be a string or a list of two args, in this case,
first arg is a string that will be used as name for candidates number,
second arg any string to display in mode line.
If nil, use default `mode-line-format'.")

(autoload 'helm-help "helm/helm-help" "\
Help of `helm'.

\(fn)" t nil)

(autoload 'helm-buffer-help "helm/helm-help" "\
Help command for helm buffers.

\(fn)" t nil)

(autoload 'helm-ff-help "helm/helm-help" "\
Help command for `helm-find-files'.

\(fn)" t nil)

(autoload 'helm-read-file-name-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-generic-file-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-grep-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-pdfgrep-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-etags-help "helm/helm-help" "\
The help function for etags.

\(fn)" t nil)

(autoload 'helm-ucs-help "helm/helm-help" "\
Help command for `helm-ucs'.

\(fn)" t nil)

(autoload 'helm-bookmark-help "helm/helm-help" "\
Help command for bookmarks.

\(fn)" t nil)

(autoload 'helm-esh-help "helm/helm-help" "\
Help command for `helm-find-files-eshell-command-on-file'.

\(fn)" t nil)

(autoload 'helm-buffers-ido-virtual-help "helm/helm-help" "\
Help command for ido virtual buffers.

\(fn)" t nil)

(autoload 'helm-moccur-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-top-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-apt-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-el-package-help "helm/helm-help" "\


\(fn)" t nil)

(defvar helm-buffer-mode-line-string '("Buffer(s)" "\\<helm-buffer-map>\\[helm-buffer-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct" "String displayed in mode-line in `helm-source-buffers-list'"))

(defvar helm-buffers-ido-virtual-mode-line-string '("Killed Buffer(s)" "\\<helm-buffers-ido-virtual-map>\\[helm-buffers-ido-virtual-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct" "String displayed in mode-line in `helm-source-buffers-list'"))

(defvar helm-ff-mode-line-string "\\<helm-find-files-map>\\[helm-ff-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct" "\
String displayed in mode-line in `helm-source-find-files'")

(defvar helm-read-file-name-mode-line-string "\\<helm-read-file-map>\\[helm-read-file-name-help]:Help \\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct" "\
String displayed in mode-line in `helm-source-find-files'.")

(defvar helm-generic-file-mode-line-string "\\<helm-generic-files-map>\\[helm-generic-file-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend" "\
String displayed in mode-line in Locate.")

(defvar helm-grep-mode-line-string "\\<helm-grep-map>\\[helm-grep-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend" "\
String displayed in mode-line in `helm-do-grep'.")

(defvar helm-pdfgrep-mode-line-string "\\<helm-pdfgrep-map>\\[helm-pdfgrep-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend" "\
String displayed in mode-line in `helm-do-pdfgrep'.")

(defvar helm-etags-mode-line-string "\\<helm-etags-map>\\[helm-etags-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct" "\
String displayed in mode-line in `helm-etags-select'.")

(defvar helm-ucs-mode-line-string "\\<helm-ucs-map>\\[helm-ucs-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct" "\
String displayed in mode-line in `helm-ucs'.")

(defvar helm-bookmark-mode-line-string '("Bookmark(s)" "\\<helm-bookmark-map>\\[helm-bookmark-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct") "\
String displayed in mode-line in `helm-source-buffers-list'")

(defvar helm-occur-mode-line "\\<helm-map>\\[helm-help]:Help \\<helm-occur-map>\\[helm-occur-run-query-replace-regexp]:Query replace regexp \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-moccur-mode-line "\\<helm-moccur-map>\\[helm-moccur-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-comp-read-mode-line "\\<helm-comp-read-map>\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-help]:Help \\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct")

(defvar helm-top-mode-line "\\<helm-top-map>\\[helm-top-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-apt-mode-line "\\<helm-apt-map>\\[helm-apt-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-el-package-mode-line "\\<helm-el-package-map>\\[helm-el-package-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-exit-minibuffer]/\\[helm-select-2nd-action-or-end-of-line]/\\[helm-select-3rd-action]:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(autoload 'helm-describe-helm-attribute "helm/helm-help" "\
Display the full documentation of HELM-ATTRIBUTE.
HELM-ATTRIBUTE should be a symbol.

\(fn HELM-ATTRIBUTE)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-imenu" "helm/helm-imenu.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-imenu.el

(autoload 'helm-imenu "helm/helm-imenu" "\
Preconfigured `helm' for `imenu'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-info" "helm/helm-info.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-info.el

(autoload 'helm-info-at-point "helm/helm-info" "\
Preconfigured `helm' for searching info at point.
With a prefix-arg insert symbol at point.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-locate" "helm/helm-locate.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-locate.el

(autoload 'helm-locate-read-file-name "helm/helm-locate" "\


\(fn PROMPT)" nil nil)

(autoload 'helm-locate "helm/helm-locate" "\
Preconfigured `helm' for Locate.
Note: you can add locate options after entering pattern.
See 'man locate' for valid options and also `helm-locate-command'.

You can specify a local database with prefix argument ARG.
With two prefix arg, refresh the current local db or create it
if it doesn't exists.
Many databases can be used: navigate and mark them.
See also `helm-locate-with-db'.

To create a user specific db, use
\"updatedb -l 0 -o db_path -U directory\".
Where db_path is a filename matched by
`helm-locate-db-file-regexp'.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-man" "helm/helm-man.el" (21426 30375
;;;;;;  0 0))
;;; Generated autoloads from helm/helm-man.el

(autoload 'helm-man-woman "helm/helm-man" "\
Preconfigured `helm' for Man and Woman pages.
With a prefix arg reinitialize the cache.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-match-plugin" "helm/helm-match-plugin.el"
;;;;;;  (21426 30375 0 0))
;;; Generated autoloads from helm/helm-match-plugin.el

(defvar helm-match-plugin-mode nil "\
Non-nil if Helm-Match-Plugin mode is enabled.
See the command `helm-match-plugin-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-match-plugin-mode'.")

(custom-autoload 'helm-match-plugin-mode "helm/helm-match-plugin" nil)

(autoload 'helm-match-plugin-mode "helm/helm-match-plugin" "\
Add more flexible regexp matching for helm.
See `helm-mp-matching-method' for the behavior of each method.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-misc" "helm/helm-misc.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-misc.el

(autoload 'helm-browse-menubar "helm/helm-misc" "\
Helm interface to the menubar using lacarte.el.

\(fn)" t nil)

(autoload 'helm-world-time "helm/helm-misc" "\
Preconfigured `helm' to show world time.

\(fn)" t nil)

(autoload 'helm-insert-latex-math "helm/helm-misc" "\
Preconfigured helm for latex math symbols completion.

\(fn)" t nil)

(autoload 'helm-eev-anchors "helm/helm-misc" "\
Preconfigured `helm' for eev anchors.

\(fn)" t nil)

(autoload 'helm-ratpoison-commands "helm/helm-misc" "\
Preconfigured `helm' to execute ratpoison commands.

\(fn)" t nil)

(autoload 'helm-stumpwm-commands "helm/helm-misc" "\


\(fn)" t nil)

(autoload 'helm-mini "helm/helm-misc" "\
Preconfigured `helm' lightweight version (buffer -> recentf).

\(fn)" t nil)

(autoload 'helm-minibuffer-history "helm/helm-misc" "\
Preconfigured `helm' for `minibuffer-history'.

\(fn)" t nil)

(autoload 'helm-comint-input-ring "helm/helm-misc" "\
Predefined `helm' that provide completion of `comint' history.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-mode" "helm/helm-mode.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-mode.el

(autoload 'helm-comp-read "helm/helm-mode" "\
Read a string in the minibuffer, with helm completion.

It is helm `completing-read' equivalent.

- PROMPT is the prompt name to use.

- COLLECTION can be a list, vector, obarray or hash-table.
  It can be also a function that receives three arguments:
  the values string, predicate and t. See `all-completions' for more details.

Keys description:

- TEST: A predicate called with one arg i.e candidate.

- INITIAL-INPUT: Same as input arg in `helm'.

- PRESELECT: See preselect arg of `helm'.

- DEFAULT: This option is used only for compatibility with regular
  Emacs `completing-read' (Same as DEFAULT arg of `completing-read').

- BUFFER: Name of helm-buffer.

- MUST-MATCH: Candidate selected must be one of COLLECTION.

- REVERSE-HISTORY: When non--nil display history source after current
  source completion.

- REQUIRES-PATTERN: Same as helm attribute, default is 0.

- HISTORY: A list containing specific history, default is nil.
  When it is non--nil, all elements of HISTORY are displayed in
  a special source before COLLECTION.

- INPUT-HISTORY: A symbol. the minibuffer input history will be
  stored there, if nil or not provided, `minibuffer-history'
  will be used instead.

- CASE-FOLD: Same as `helm-case-fold-search'.

- DEL-INPUT: Boolean, when non--nil (default) remove the partial
  minibuffer input from HISTORY is present.

- PERSISTENT-ACTION: A function called with one arg i.e candidate.

- PERSISTENT-HELP: A string to document PERSISTENT-ACTION.

- MODE-LINE: A string or list to display in mode line.
  (See `helm-mode-line-string')

- KEYMAP: A keymap to use in this `helm-comp-read'.
  (the keymap will be shared with history source)

- NAME: The name related to this local source.

- EXEC-WHEN-ONLY-ONE: Bound `helm-execute-action-at-once-if-one'
  to non--nil. (possibles values are t or nil).

- VOLATILE: Use volatile attribute (enabled by default).

- SORT: A predicate to give to `sort' e.g `string-lessp'.

- FC-TRANSFORMER: A `filtered-candidate-transformer' function.

- MARKED-CANDIDATES: If non--nil return candidate or marked candidates as a list.

- ALISTP: (default is non--nil) See `helm-comp-read-get-candidates'.

- CANDIDATES-IN-BUFFER: when non--nil use a source build with
  `helm-candidates-in-buffer' which is much faster.
  Argument VOLATILE have no effect when CANDIDATES-IN-BUFFER is non--nil.

Any prefix args passed during `helm-comp-read' invocation will be recorded
in `helm-current-prefix-arg', otherwise if prefix args were given before
`helm-comp-read' invocation, the value of `current-prefix-arg' will be used.
That's mean you can pass prefix args before or after calling a command
that use `helm-comp-read' See `helm-M-x' for example.

\(fn PROMPT COLLECTION &key TEST INITIAL-INPUT DEFAULT PRESELECT (BUFFER \"*Helm Completions*\") MUST-MATCH REVERSE-HISTORY (REQUIRES-PATTERN 0) HISTORY INPUT-HISTORY (CASE-FOLD helm-comp-read-case-fold-search) (DEL-INPUT t) (PERSISTENT-ACTION nil) (PERSISTENT-HELP \"DoNothing\") (MODE-LINE helm-comp-read-mode-line) (KEYMAP helm-comp-read-map) (NAME \"Helm Completions\") CANDIDATES-IN-BUFFER EXEC-WHEN-ONLY-ONE QUIT-WHEN-NO-CAND (VOLATILE t) SORT (FC-TRANSFORMER 'helm-cr-default-transformer) MARKED-CANDIDATES (ALISTP t))" nil nil)

(defvar helm-mode nil "\
Non-nil if Helm mode is enabled.
See the command `helm-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-mode'.")

(custom-autoload 'helm-mode "helm/helm-mode" nil)

(autoload 'helm-mode "helm/helm-mode" "\
Toggle generic helm completion.

All functions in Emacs that use `completing-read'
or `read-file-name' and friends will use helm interface
when this mode is turned on.
However you can modify this behavior for functions of your choice
with `helm-completing-read-handlers-alist'.

Called with a positive arg, turn on unconditionally, with a
negative arg turn off.
You can turn it on with `helm-mode'.

Some crap emacs functions may not be supported,
e.g `ffap-alternate-file' and maybe others
You can add such functions to `helm-completing-read-handlers-alist'
with a nil value.

Note: This mode is incompatible with Emacs23.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-net" "helm/helm-net.el" (21426 30375
;;;;;;  0 0))
;;; Generated autoloads from helm/helm-net.el

(autoload 'helm-surfraw "helm/helm-net" "\
Preconfigured `helm' to search PATTERN with search ENGINE.

\(fn PATTERN ENGINE)" t nil)

(autoload 'helm-google-suggest "helm/helm-net" "\
Preconfigured `helm' for google search with google suggest.

\(fn)" t nil)

(autoload 'helm-yahoo-suggest "helm/helm-net" "\
Preconfigured `helm' for Yahoo searching with Yahoo suggest.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-org" "helm/helm-org.el" (21426 30375
;;;;;;  0 0))
;;; Generated autoloads from helm/helm-org.el

(autoload 'helm-org-keywords "helm/helm-org" "\
Preconfigured `helm' for org keywords.

\(fn)" t nil)

(autoload 'helm-org-headlines "helm/helm-org" "\
Preconfigured helm to show org headlines.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-regexp" "helm/helm-regexp.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-regexp.el

(defvar helm-occur-match-plugin-mode t "\
Non-nil if Helm-Occur-Match-Plugin mode is enabled.
See the command `helm-occur-match-plugin-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-occur-match-plugin-mode'.")

(custom-autoload 'helm-occur-match-plugin-mode "helm/helm-regexp" nil)

(autoload 'helm-occur-match-plugin-mode "helm/helm-regexp" "\
Turn On/Off `helm-match-plugin-mode' only for `helm-m/occur'.

\(fn &optional ARG)" t nil)

(autoload 'helm-regexp "helm/helm-regexp" "\
Preconfigured helm to build regexps.
`query-replace-regexp' can be run from there against found regexp.

\(fn)" t nil)

(autoload 'helm-occur "helm/helm-regexp" "\
Preconfigured helm for Occur.

\(fn)" t nil)

(autoload 'helm-occur-from-isearch "helm/helm-regexp" "\
Invoke `helm-occur' from isearch.

\(fn)" t nil)

(autoload 'helm-multi-occur "helm/helm-regexp" "\
Preconfigured helm for multi occur.

  BUFFERS is a list of buffers to search through.
With a prefix arg, reverse the behavior of
`helm-moccur-always-search-in-current'.
The prefix arg can be set before calling `helm-multi-occur'
or during the buffer selection.

\(fn BUFFERS)" t nil)

(autoload 'helm-multi-occur-from-isearch "helm/helm-regexp" "\
Invoke `helm-multi-occur' from isearch.

With a prefix arg, reverse the behavior of
`helm-moccur-always-search-in-current'.
The prefix arg can be set before calling
`helm-multi-occur-from-isearch' or during the buffer selection.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-ring" "helm/helm-ring.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-ring.el

(autoload 'helm-mark-ring "helm/helm-ring" "\
Preconfigured `helm' for `helm-source-mark-ring'.

\(fn)" t nil)

(autoload 'helm-global-mark-ring "helm/helm-ring" "\
Preconfigured `helm' for `helm-source-global-mark-ring'.

\(fn)" t nil)

(autoload 'helm-all-mark-rings "helm/helm-ring" "\
Preconfigured `helm' for `helm-source-global-mark-ring' and `helm-source-mark-ring'.

\(fn)" t nil)

(autoload 'helm-register "helm/helm-ring" "\
Preconfigured `helm' for Emacs registers.

\(fn)" t nil)

(autoload 'helm-show-kill-ring "helm/helm-ring" "\
Preconfigured `helm' for `kill-ring'.
It is drop-in replacement of `yank-pop'.

First call open the kill-ring browser, next calls move to next line.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-semantic" "helm/helm-semantic.el"
;;;;;;  (21426 30375 0 0))
;;; Generated autoloads from helm/helm-semantic.el

(autoload 'helm-semantic "helm/helm-semantic" "\
Preconfigured `helm' for `semantic'.

\(fn)" t nil)

(autoload 'helm-semantic-or-imenu "helm/helm-semantic" "\
Run `helm' with `semantic' or `imenu'.

If `semantic-mode' is active in the current buffer, then use
semantic for generating tags, otherwise fall back to `imenu'.
Fill in the symbol at point by default.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-sys" "helm/helm-sys.el" (21426 30375
;;;;;;  0 0))
;;; Generated autoloads from helm/helm-sys.el

(autoload 'helm-top-run-sort-by-com "helm/helm-sys" "\


\(fn)" t nil)

(autoload 'helm-top-run-sort-by-cpu "helm/helm-sys" "\


\(fn)" t nil)

(autoload 'helm-top-run-sort-by-mem "helm/helm-sys" "\


\(fn)" t nil)

(autoload 'helm-top-run-sort-by-user "helm/helm-sys" "\


\(fn)" t nil)

(autoload 'helm-top "helm/helm-sys" "\
Preconfigured `helm' for top command.

\(fn)" t nil)

(autoload 'helm-list-emacs-process "helm/helm-sys" "\
Preconfigured `helm' for emacs process.

\(fn)" t nil)

(autoload 'helm-xrandr-set "helm/helm-sys" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-tags" "helm/helm-tags.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-tags.el

(autoload 'helm-etags-select "helm/helm-tags" "\
Preconfigured helm for etags.
If called with a prefix argument or if any of the tag files have
been modified, reinitialize cache.

This function aggregates three sources of tag files:

  1) An automatically located file in the parent directories, by `helm-etags-get-tag-file'.
  2) `tags-file-name', which is commonly set by `find-tag' command.
  3) `tags-table-list' which is commonly set by `visit-tags-table' command.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-utils" "helm/helm-utils.el" (21426
;;;;;;  30375 0 0))
;;; Generated autoloads from helm/helm-utils.el

(autoload 'helm-show-all-in-this-source-only "helm/helm-utils" "\
Show only current source of this helm session with all its candidates.
With a numeric prefix arg show only the ARG number of candidates.

\(fn ARG)" t nil)

(autoload 'helm-display-all-sources "helm/helm-utils" "\
Display all sources previously hidden by `helm-set-source-filter'.

\(fn)" t nil)

(autoload 'helm-quit-and-find-file "helm/helm-utils" "\
Drop into `helm-find-files' from `helm'.
If current selection is a buffer or a file, `helm-find-files'
from its directory.

\(fn)" t nil)

(autoload 'helm-w32-shell-execute-open-file "helm/helm-utils" "\


\(fn FILE)" t nil)

(autoload 'helm-yank-text-at-point "helm/helm-utils" "\
Yank text at point in invocation buffer into minibuffer.

`helm-yank-symbol-first' controls whether the first yank grabs
the entire symbol.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-w3m" "helm/helm-w3m.el" (21426 30375
;;;;;;  0 0))
;;; Generated autoloads from helm/helm-w3m.el

(autoload 'helm-w3m-bookmarks "helm/helm-w3m" "\
Preconfigured `helm' for w3m bookmark.

Needs w3m and emacs-w3m.

http://w3m.sourceforge.net/
http://emacs-w3m.namazu.org/

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm/helm-yaoddmuse" "helm/helm-yaoddmuse.el"
;;;;;;  (21426 30375 0 0))
;;; Generated autoloads from helm/helm-yaoddmuse.el

(autoload 'helm-yaoddmuse-cache-pages "helm/helm-yaoddmuse" "\
Fetch the list of files on emacswiki and create cache file.
If load is non--nil load the file and feed `yaoddmuse-pages-hash'.

\(fn &optional LOAD)" t nil)

(autoload 'helm-yaoddmuse-emacswiki-edit-or-view "helm/helm-yaoddmuse" "\
Preconfigured `helm' to edit or view EmacsWiki page.

Needs yaoddmuse.el.

http://www.emacswiki.org/emacs/download/yaoddmuse.el

\(fn)" t nil)

(autoload 'helm-yaoddmuse-emacswiki-post-library "helm/helm-yaoddmuse" "\
Preconfigured `helm' to post library to EmacsWiki.

Needs yaoddmuse.el.

http://www.emacswiki.org/emacs/download/yaoddmuse.el

\(fn)" t nil)

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
