;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "command-log-mode/command-log-mode" "command-log-mode/command-log-mode.el"
;;;;;;  (21318 48971 0 0))
;;; Generated autoloads from command-log-mode/command-log-mode.el

(autoload 'command-log-mode "command-log-mode/command-log-mode" "\
Toggle keyboard command logging.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get" "el-get/el-get.el" (21319 24618
;;;;;;  0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (21351 747 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (gh-api-v3 gh-api) "gh/gh-api" "gh/gh-api.el" (21300
;;;;;;  63980 0 0))
;;; Generated autoloads from gh/gh-api.el

(require 'eieio)

(eieio-defclass-autoload 'gh-api 'nil "gh/gh-api" "Github API")

(eieio-defclass-autoload 'gh-api-v3 '(gh-api) "gh/gh-api" "Github API v3")

;;;***

;;;### (autoloads (gh-oauth-authenticator gh-password-authenticator
;;;;;;  gh-authenticator) "gh/gh-auth" "gh/gh-auth.el" (21300 63980
;;;;;;  0 0))
;;; Generated autoloads from gh/gh-auth.el

(require 'eieio)

(eieio-defclass-autoload 'gh-authenticator 'nil "gh/gh-auth" "Abstract authenticator")

(eieio-defclass-autoload 'gh-password-authenticator '(gh-authenticator) "gh/gh-auth" "Password-based authenticator")

(eieio-defclass-autoload 'gh-oauth-authenticator '(gh-authenticator) "gh/gh-auth" "Oauth-based authenticator")

;;;***

;;;### (autoloads nil "gh/gh-cache" "gh/gh-cache.el" (21300 63980
;;;;;;  0 0))
;;; Generated autoloads from gh/gh-cache.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh/gh-common" "gh/gh-common.el" (21300 63980
;;;;;;  0 0))
;;; Generated autoloads from gh/gh-common.el

(require 'eieio)

;;;***

;;;### (autoloads (gh-gist-gist gh-gist-gist-stub gh-gist-api) "gh/gh-gist"
;;;;;;  "gh/gh-gist.el" (21300 63980 0 0))
;;; Generated autoloads from gh/gh-gist.el

(require 'eieio)

(eieio-defclass-autoload 'gh-gist-api '(gh-api-v3) "gh/gh-gist" "Gist API")

(eieio-defclass-autoload 'gh-gist-gist-stub '(gh-object) "gh/gh-gist" "Class for user-created gist objects")

(eieio-defclass-autoload 'gh-gist-gist '(gh-gist-gist-stub) "gh/gh-gist" "Gist object")

;;;***

;;;### (autoloads nil "gh/gh-issue-comments" "gh/gh-issue-comments.el"
;;;;;;  (21300 63980 0 0))
;;; Generated autoloads from gh/gh-issue-comments.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh/gh-issues" "gh/gh-issues.el" (21300 63980
;;;;;;  0 0))
;;; Generated autoloads from gh/gh-issues.el

(require 'eieio)

;;;***

;;;### (autoloads (gh-oauth-api) "gh/gh-oauth" "gh/gh-oauth.el" (21300
;;;;;;  63980 0 0))
;;; Generated autoloads from gh/gh-oauth.el

(require 'eieio)

(eieio-defclass-autoload 'gh-oauth-api '(gh-api-v3) "gh/gh-oauth" "OAuth API")

;;;***

;;;### (autoloads (gh-orgs-org-stub gh-orgs-api) "gh/gh-orgs" "gh/gh-orgs.el"
;;;;;;  (21300 63980 0 0))
;;; Generated autoloads from gh/gh-orgs.el

(require 'eieio)

(eieio-defclass-autoload 'gh-orgs-api '(gh-api-v3) "gh/gh-orgs" "Orgs API")

(eieio-defclass-autoload 'gh-orgs-org-stub '(gh-object) "gh/gh-orgs" nil)

;;;***

;;;### (autoloads (gh-pulls-request gh-pulls-api) "gh/gh-pulls" "gh/gh-pulls.el"
;;;;;;  (21300 63980 0 0))
;;; Generated autoloads from gh/gh-pulls.el

(require 'eieio)

(eieio-defclass-autoload 'gh-pulls-api '(gh-api-v3) "gh/gh-pulls" "Git pull requests API")

(eieio-defclass-autoload 'gh-pulls-request '(gh-pulls-request-stub) "gh/gh-pulls" "Git pull requests API")

;;;***

;;;### (autoloads (gh-repos-repo gh-repos-repo-stub gh-repos-api)
;;;;;;  "gh/gh-repos" "gh/gh-repos.el" (21300 63980 0 0))
;;; Generated autoloads from gh/gh-repos.el

(require 'eieio)

(eieio-defclass-autoload 'gh-repos-api '(gh-api-v3) "gh/gh-repos" "Repos API")

(eieio-defclass-autoload 'gh-repos-repo-stub '(gh-object) "gh/gh-repos" "Class for user-created repository objects")

(eieio-defclass-autoload 'gh-repos-repo '(gh-repos-repo-stub) "gh/gh-repos" "Class for GitHub repositories")

;;;***

;;;### (autoloads nil "gh/gh-url" "gh/gh-url.el" (21300 63980 0 0))
;;; Generated autoloads from gh/gh-url.el

(require 'eieio)

;;;***

;;;### (autoloads (gh-users-user gh-users-api) "gh/gh-users" "gh/gh-users.el"
;;;;;;  (21300 63980 0 0))
;;; Generated autoloads from gh/gh-users.el

(require 'eieio)

(eieio-defclass-autoload 'gh-users-api '(gh-api-v3) "gh/gh-users" "Users API")

(eieio-defclass-autoload 'gh-users-user '(gh-user) "gh/gh-users" nil)

;;;***

;;;### (autoloads (gist-fetch gist-list gist-region-or-buffer-private
;;;;;;  gist-region-or-buffer gist-buffer-private gist-buffer gist-region-private
;;;;;;  gist-region) "gist/gist" "gist/gist.el" (21300 63990 0 0))
;;; Generated autoloads from gist/gist.el

(autoload 'gist-region "gist/gist" "\
Post the current region as a new paste at gist.github.com
Copies the URL into the kill ring.

With a prefix argument, makes a private paste.

\(fn BEGIN END &optional PRIVATE CALLBACK)" t nil)

(autoload 'gist-region-private "gist/gist" "\
Post the current region as a new private paste at gist.github.com
Copies the URL into the kill ring.

\(fn BEGIN END)" t nil)

(autoload 'gist-buffer "gist/gist" "\
Post the current buffer as a new paste at gist.github.com.
Copies the URL into the kill ring.

With a prefix argument, makes a private paste.

\(fn &optional PRIVATE)" t nil)

(autoload 'gist-buffer-private "gist/gist" "\
Post the current buffer as a new private paste at gist.github.com.
Copies the URL into the kill ring.

\(fn)" t nil)

(autoload 'gist-region-or-buffer "gist/gist" "\
Post either the current region, or if mark is not set, the
  current buffer as a new paste at gist.github.com

Copies the URL into the kill ring.

With a prefix argument, makes a private paste.

\(fn &optional PRIVATE)" t nil)

(autoload 'gist-region-or-buffer-private "gist/gist" "\
Post either the current region, or if mark is not set, the
  current buffer as a new private paste at gist.github.com

Copies the URL into the kill ring.

\(fn)" t nil)

(autoload 'gist-list "gist/gist" "\
Displays a list of all of the current user's gists in a new buffer.

\(fn &optional FORCE-RELOAD BACKGROUND)" t nil)

(autoload 'gist-fetch "gist/gist" "\


\(fn ID)" t nil)

;;;***

;;;### (autoloads nil "highlight-symbol/highlight-symbol" "highlight-symbol/highlight-symbol.el"
;;;;;;  (21351 749 0 0))
;;; Generated autoloads from highlight-symbol/highlight-symbol.el

(autoload 'highlight-symbol-mode "highlight-symbol/highlight-symbol" "\
Minor mode that highlights the symbol under point throughout the buffer.
Highlighting takes place after `highlight-symbol-idle-delay'.

\(fn &optional ARG)" t nil)

(autoload 'highlight-symbol-at-point "highlight-symbol/highlight-symbol" "\
Toggle highlighting of the symbol at point.
This highlights or unhighlights the symbol at point using the first
element in of `highlight-symbol-faces'.

\(fn)" t nil)

(autoload 'highlight-symbol-remove-all "highlight-symbol/highlight-symbol" "\
Remove symbol highlighting in buffer.

\(fn)" t nil)

(autoload 'highlight-symbol-next "highlight-symbol/highlight-symbol" "\
Jump to the next location of the symbol at point within the function.

\(fn)" t nil)

(autoload 'highlight-symbol-prev "highlight-symbol/highlight-symbol" "\
Jump to the previous location of the symbol at point within the function.

\(fn)" t nil)

(autoload 'highlight-symbol-next-in-defun "highlight-symbol/highlight-symbol" "\
Jump to the next location of the symbol at point within the defun.

\(fn)" t nil)

(autoload 'highlight-symbol-prev-in-defun "highlight-symbol/highlight-symbol" "\
Jump to the previous location of the symbol at point within the defun.

\(fn)" t nil)

(autoload 'highlight-symbol-query-replace "highlight-symbol/highlight-symbol" "\
*Replace the symbol at point.

\(fn REPLACEMENT)" t nil)

;;;***

;;;### (autoloads (tabulated-list-mode) "tabulated-list/tabulated-list"
;;;;;;  "tabulated-list/tabulated-list.el" (21300 63957 0 0))
;;; Generated autoloads from tabulated-list/tabulated-list.el

(autoload 'tabulated-list-mode "tabulated-list/tabulated-list" "\
Generic major mode for browsing a list of items.
This mode is usually not used directly; instead, other major
modes are derived from it, using `define-derived-mode'.

In this major mode, the buffer is divided into multiple columns,
which are labelled using the header line.  Each non-empty line
belongs to one \"entry\", and the entries can be sorted according
to their column values.

An inheriting mode should usually do the following in their body:

 - Set `tabulated-list-format', specifying the column format.
 - Set `tabulated-list-revert-hook', if the buffer contents need
   to be specially recomputed prior to `revert-buffer'.
 - Maybe set a `tabulated-list-entries' function (see below).
 - Maybe set `tabulated-list-printer' (see below).
 - Maybe set `tabulated-list-padding'.
 - Call `tabulated-list-init-header' to initialize `header-line-format'
   according to `tabulated-list-format'.

An inheriting mode is usually accompanied by a \"list-FOO\"
command (e.g. `list-packages', `list-processes').  This command
creates or switches to a buffer and enables the major mode in
that buffer.  If `tabulated-list-entries' is not a function, the
command should initialize it to a list of entries for displaying.
Finally, it should call `tabulated-list-print'.

`tabulated-list-print' calls the printer function specified by
`tabulated-list-printer', once for each entry.  The default
printer is `tabulated-list-print-entry', but a mode that keeps
data in an ewoc may instead specify a printer function (e.g., one
that calls `ewoc-enter-last'), with `tabulated-list-print-entry'
as the ewoc pretty-printer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("auto-install/auto-install.el" "dash/dash-functional.el"
;;;;;;  "dash/dash.el" "el-get/el-get-autoloads.el" "el-get/el-get-build.el"
;;;;;;  "el-get/el-get-byte-compile.el" "el-get/el-get-core.el" "el-get/el-get-custom.el"
;;;;;;  "el-get/el-get-dependencies.el" "el-get/el-get-install.el"
;;;;;;  "el-get/el-get-methods.el" "el-get/el-get-notify.el" "el-get/el-get-recipes.el"
;;;;;;  "el-get/el-get-status.el" "gh/gh-pkg.el" "gh/gh-profile.el"
;;;;;;  "gh/gh.el" "logito/logito.el" "pcache/pcache-tests.el" "pcache/pcache.el"
;;;;;;  "request/request-deferred.el" "request/request.el") (21351
;;;;;;  762 712054 0))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
