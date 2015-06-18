;;;;;;;;;;;;;;;;;;;;;;;
;; load other things ;;
;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/local-lisp/")
(load "~/.emacs.d/local-lisp/secrets.el")
(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)



(require 'package)
(package-initialize)



;;;;;;;;;;;;;;;
;; Customize ;;
;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-PDF-mode t)
 '(TeX-auto-save t)
 '(TeX-command-extra-options "-shell-escape")
 '(TeX-engine (quote xetex))
 '(TeX-macro-private nil)
 '(TeX-parse-self t)
 '(TeX-source-correlate-method (quote auto))
 '(TeX-source-correlate-mode t)
 '(TeX-source-correlate-start-server t)
 '(TeX-view-program-list
   (quote
    (("skim" "/Applications/Skim.app/Contents/SharedSupport/displayline %n %o %b")
     ("Preview" "open -a Preview.app %o"))))
 '(TeX-view-program-selection
   (quote
    (((output-pdf style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "skim")
     (output-html "xdg-open"))))
 '(ac-use-menu-map t)
 '(ack-and-a-half-executable "ack")
 '(async-bytecomp-package-mode t)
 '(autopair-global-mode nil)
 '(awk-mode-hook (quote (er/add-cc-mode-expansions)))
 '(baud-rate 38400)
 '(before-save-hook (quote (py-autopep8-before-save)))
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(bookmark-version-control (quote nospecial))
 '(browse-url-generic-args (quote ("-a" "Safari")))
 '(browse-url-generic-program "open")
 '(byte-compile-delete-errors t)
 '(c-default-style
   (quote
    ((java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(case-fold-search t)
 '(column-number-mode t)
 '(company-global-modes t)
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" default)))
 '(default-input-method "rfc1345")
 '(delete-selection-mode t)
 '(desktop-save-mode t)
 '(diff-switches "-u")
 '(dired-auto-revert-buffer t)
 '(dired-hide-details-hide-information-lines nil)
 '(dired-hide-details-hide-symlink-targets nil)
 '(dired-isearch-filenames t)
 '(dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^\\..+$")
 '(diredp-highlight-autofiles-mode nil nil (dired+))
 '(direx:closed-icon "▶ ")
 '(direx:open-icon "▼ ")
 '(dynamic-fonts-preferred-monospace-fonts
   (quote
    ("Monaco" "Consolas" "Menlo" "DejaVu Sans Mono" "Droid Sans Mono Pro" "Droid Sans Mono" "Inconsolata" "Source Code Pro" "Lucida Console" "Envy Code R" "Andale Mono" "Lucida Sans Typewriter" "monoOne" "Lucida Typewriter" "Panic Sans" "Bitstream Vera Sans Mono" "HyperFont" "PT Mono" "Ti92Pluspc" "Excalibur Monospace" "Courier New" "Courier" "Cousine" "Fira Mono" "Lekton" "Ubuntu Mono" "Liberation Mono" "BPmono" "Free Mono" "Anonymous Pro" "ProFont" "ProFontWindows" "Latin Modern Mono" "Code 2002" "ProggyCleanTT" "ProggyTinyTT" "Heiti TC")))
 '(dynamic-fonts-preferred-proportional-fonts
   (quote
    ("Lucida Grande" "Segoe UI" "DejaVu Sans" "Bitstream Vera" "Tahoma" "Verdana" "Helvetica" "Arial Unicode MS" "Arial" "Heiti TC")))
 '(ecb-options-version "2.40")
 '(el-get-git-shallow-clone t)
 '(elpy-mode-hook (quote (subword-mode)))
 '(elpy-modules
   (quote
    (elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-highlight-indentation elpy-module-yasnippet elpy-module-sane-defaults)))
 '(elpy-rpc-python-command "python")
 '(ensime-auto-connect (quote ask))
 '(epg-gpg-program "gpg")
 '(exec-path
   (quote
    ("/usr/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/usr/local/Cellar/emacs/HEAD/libexec/emacs/24.3.50/i386-apple-darwin12.4.0")))
 '(global-anzu-mode t)
 '(global-auto-complete-mode nil)
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(global-diff-hl-mode t)
 '(global-dired-hide-details-mode nil)
 '(global-discover-mode nil)
 '(global-hl-line-mode nil)
 '(global-linum-mode t)
 '(global-semantic-decoration-mode nil)
 '(global-semantic-highlight-edits-mode nil)
 '(global-semantic-highlight-func-mode nil)
 '(global-semantic-idle-local-symbol-highlight-mode nil nil (semantic/idle))
 '(global-semantic-idle-scheduler-mode nil)
 '(global-semantic-idle-summary-mode nil)
 '(global-semantic-mru-bookmark-mode nil)
 '(global-semantic-stickyfunc-mode t)
 '(global-semanticdb-minor-mode t)
 '(global-subword-mode t)
 '(global-undo-tree-mode t)
 '(global-visual-line-mode t)
 '(global-wakatime-mode t)
 '(guide-key-mode t)
 '(guide-key/guide-key-sequence (quote ("C-x" "M-s" "C-c")))
 '(guide-key/recursive-key-sequence-flag t)
 '(guru-global-mode nil)
 '(helm-adaptive-mode t nil (helm-adaptive))
 '(helm-apropos-fuzzy-match t)
 '(helm-autoresize-mode t)
 '(helm-buffers-favorite-modes
   (quote
    (lisp-interaction-mode emacs-lisp-mode text-mode org-mode python-mode lua-mode)))
 '(helm-buffers-fuzzy-matching t)
 '(helm-descbinds-mode nil)
 '(helm-ff-auto-update-initial-value t)
 '(helm-ff-search-library-in-sexp t)
 '(helm-ff-skip-boring-files t)
 '(helm-file-cache-fuzzy-match t)
 '(helm-grep-default-command "ack -Hn --no-group --no-color %e %p %f")
 '(helm-grep-default-recurse-command "ack-grep -H --no-group --no-color %e %p %f")
 '(helm-gtags-display-style (quote detail))
 '(helm-gtags-suggested-key-mapping t)
 '(helm-gtags-use-input-at-cursor t)
 '(helm-match-plugin-mode t nil (helm-match-plugin))
 '(helm-mode t)
 '(helm-recentf-fuzzy-match t)
 '(helm-swoop-speed-or-color t)
 '(helm-time-zone-home-location "Taipei")
 '(helm-tramp-verbose 3)
 '(ibuffer-saved-filter-groups nil)
 '(ibuffer-saved-filters
   (quote
    (("no special"
      ((name . "^[^*]")))
     ("e"
      ((name . "^[^*].*")))
     ("gnus"
      ((or
        (mode . message-mode)
        (mode . mail-mode)
        (mode . gnus-group-mode)
        (mode . gnus-summary-mode)
        (mode . gnus-article-mode))))
     ("programming"
      ((or
        (mode . emacs-lisp-mode)
        (mode . cperl-mode)
        (mode . c-mode)
        (mode . java-mode)
        (mode . idl-mode)
        (mode . lisp-mode)))))))
 '(ido-vertical-mode t)
 '(iedit-toggle-key-default (kbd "C-|"))
 '(image-dired-external-viewer nil)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(insert-shebang-custom-headers
   (quote
    (("py" . "#!/usr/bin/env python
# -*- coding: utf-8 -*-")
     ("" . ""))))
 '(jedi:complete-on-dot t)
 '(jedi:install-imenu t)
 '(jedi:tooltip-method nil)
 '(keyfreq-mode t)
 '(line-number-mode t)
 '(line-spacing nil)
 '(magit-use-overlays nil)
 '(markdown-command "multimarkdown")
 '(markdown-open-command "/Applications/Marked.app/Contents/MacOS/Marked")
 '(mouse-wheel-mode t)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(ns-function-modifier (quote hyper))
 '(org-agenda-files
   (quote
    ("~/Google Drive/Org/joe-org/notes/writeAhead/writeAhead.org")))
 '(org-export-latex-default-packages-alist
   (quote
    (("T1" "fontenc" t)
     ("" "fixltx2e" nil)
     ("" "graphicx" t)
     ("" "longtable" nil)
     ("" "float" nil)
     ("" "wrapfig" nil)
     ("" "soul" t)
     ("" "textcomp" t)
     ("" "marvosym" t)
     ("" "wasysym" t)
     ("" "latexsym" t)
     ("" "amssymb" t)
     ("" "hyperref" nil)
     "\\tolerance=1000")))
 '(org-from-is-user-regexp "\\<顏孜羲\\>")
 '(org-latex-to-pdf-process
   (quote
    ("xelatex -interaction nonstopmode -output-directory %o %f" "xelatex -interaction nonstopmode -output-directory %o %f" "xelatex -interaction nonstopmode -output-directory %o %f")))
 '(org-startup-indented t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/")
     ("org" . "http://orgmode.org/elpa/")
     ("elpy" . "http://jorgenschaefer.github.io/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")
     ("user42" . "http://download.tuxfamily.org/user42/elpa/packages/"))))
 '(paradox-automatically-star t)
 '(paradox-display-download-count t)
 '(paradox-execute-asynchronously (quote ask))
 '(pdf-latex-command "xelatex")
 '(phi-autopair-global-mode nil)
 '(popwin-mode t)
 '(preview-LaTeX-command
   (quote
    ("%`%l \"\\nonstopmode\\nofiles\\PassOptionsToPackage{"
     ("," . preview-required-option-list)
     "}{preview}\\AtBeginDocument{\\ifx\\ifPreview\\undefined" preview-default-preamble "\\fi}\"%' %t")))
 '(projectile-global-mode t)
 '(py-autopep8-options (quote ("--max-line-length=100")))
 '(pyenv-mode t)
 '(python-check-command "pyflakes")
 '(python-shell-interpreter "ipython")
 '(python-shell-interpreter-args "--matplotlib --pdb --nosep")
 '(pyvenv-mode t)
 '(pyvenv-virtualenvwrapper-python "/usr/bin/python")
 '(recentf-max-saved-items 100)
 '(recentf-mode t)
 '(reftex-plug-into-AUCTeX t)
 '(rm-blacklist
   (quote
    (" hl-p" " Undo-Tree" " Guide" " Anzu" " Wrap" " Helm")))
 '(safe-local-variable-values
   (quote
    ((TeX-command-extra-options . "-shell-escape")
     (TeX-command-extra-options . -shell-escape)
     (TeX-master . master)
     (TeX-engine . XeLaTeX))))
 '(savehist-mode t)
 '(scroll-margin 5)
 '(scroll-step 1)
 '(semantic-mode t)
 '(server-mode t)
 '(server-use-tcp t)
 '(show-paren-delay 0.1)
 '(show-paren-mode nil)
 '(show-paren-ring-bell-on-mismatch t)
 '(show-paren-style (quote mixed))
 '(show-smartparens-global-mode t)
 '(size-indication-mode t)
 '(smartparens-global-mode t)
 '(smartparens-global-strict-mode nil)
 '(sml/name-width (quote (10 . 44)))
 '(sml/no-confirm-load-theme t)
 '(sml/show-client t)
 '(sml/theme (quote powerline))
 '(sml/vc-mode-show-backend t)
 '(syslog-debug-face
   (quote
    ((t :background unspecified :foreground "#A1EFE4" :weight bold))))
 '(syslog-error-face
   (quote
    ((t :background unspecified :foreground "#F92672" :weight bold))))
 '(syslog-hour-face (quote ((t :background unspecified :foreground "#A6E22E"))))
 '(syslog-info-face
   (quote
    ((t :background unspecified :foreground "#66D9EF" :weight bold))))
 '(syslog-ip-face (quote ((t :background unspecified :foreground "#E6DB74"))))
 '(syslog-su-face (quote ((t :background unspecified :foreground "#FD5FF0"))))
 '(syslog-warn-face
   (quote
    ((t :background unspecified :foreground "#FD971F" :weight bold))))
 '(tool-bar-mode t)
 '(tramp-default-method "sshx")
 '(wakatime-api-key "f7c5102c-8568-46ac-b20f-69adcf662dad")
 '(wakatime-cli-path "/usr/local/lib/python3.4/site-packages/wakatime/cli.py")
 '(which-function-mode t)
 '(winner-mode t)
 '(xterm-extra-capabilities (quote (modifyOtherKeys reportBackground)))
 '(xterm-mouse-mode t)
 '(yas-global-mode t nil (yasnippet))
 '(yas-prompt-functions
   (quote
    (yas-dropdown-prompt yas-ido-prompt yas-completing-prompt yas-x-prompt yas-no-prompt)))
 '(yas-snippet-dirs
   (quote
    ("~/.emacs.d/snippets" yas-installed-snippets-dir "/Users/joe/.emacs.d/elpa/pig-snippets-20130912.2324/snippets")) nil (yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:foreground "red" :height 3.0))))
 '(company-scrollbar-bg ((t (:inherit company-tooltip :background "gray15"))))
 '(company-scrollbar-fg ((t (:background "alternateSelectedControlColor"))))
 '(company-template-field ((t (:background "gray20" :foreground "gray75"))))
 '(company-tooltip ((t (:background "gray20" :foreground "gray75"))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :foreground "gray100"))))
 '(company-tooltip-selection ((t (:inherit company-tooltip :background "RoyalBlue4"))))
 '(highlight-symbol-face ((t (:background "gray10")))))


;;;;;;;;;;;;
;; window ;;
;;;;;;;;;;;;
(require 'popwin)

;;;;;;;;;;;;;;;;
;; completion ;;
;;;;;;;;;;;;;;;;
(require 'company)
;; (require 'auto-complete-config)

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; environment variable ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))
(setenv "PATH" (concat "/usr/texbin" ":" (getenv "PATH")))

(require 'bind-key)

;;;;;;;;;;;
;; mouse ;;
;;;;;;;;;;;
(global-set-key (kbd "<mouse-4>") (lambda () (interactive) (scroll-down 1)))
(global-set-key (kbd "<mouse-5>") (lambda () (interactive) (scroll-up 1)))

;;;;;;;;;;
;; file ;;
;;;;;;;;;;
;; (global-set-key (kbd "C-x C-u") 'revert-buffer)
(bind-key "C-x C-u" 'revert-buffer)


;;;;;;;;;;;;
;; search ;;
;;;;;;;;;;;;
(require 'anzu)
(global-anzu-mode +1)
(bind-key "M-%" 'anzu-query-replace)
(bind-key "C-M-%" 'anzu-query-replace-regexp)

;;;;;;;;;;;;;;
;; register ;;
;;;;;;;;;;;;;;
(bind-key "C-x r i" 'helm-register)

;;;;;;;;;;;
;; usage ;;
;;;;;;;;;;;
(setq guru-warn-only t)
(require 'wakatime-mode)

;;;;;;;;;;;;;
;; comment ;;
;;;;;;;;;;;;;
(bind-key "C-;" #'comment-line)

;;;;;;;;;;;
;; face  ;;
;;;;;;;;;;;
;; (when window-system (require 'qiang-font))
;; (require 'smart-mode-line-powerline-theme)

;;;;;;;;;;
;; move ;;
;;;;;;;;;;
(bind-key "C-c SPC" 'ace-jump-mode )

;;;;;;;;;;;;;;
;; bookmark ;;
;;;;;;;;;;;;;;
(require 'bm)

(bind-key "<left-fringe> <mouse-1>" 'bm-toggle-mouse)
(global-unset-key (kbd "C-x m"))
(bind-key "C-x m m"   'bm-toggle)
(bind-key "C-x m n"   'bm-next)
(bind-key "C-x m p"   'bm-previous)

;;;;;;;;;;
;; mark ;;
;;;;;;;;;;
(bind-key "C-h SPC" 'helm-all-mark-rings)

;;;;;;;;;;;;;
;; package ;;
;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;; (unless (require 'el-get nil 'noerror)
;;   (with-current-buffer
;;       (url-retrieve-synchronously
;;        "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
;;     (goto-char (point-max))
;;     (eval-print-last-sexp)))

;; (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
;; (el-get 'sync)


;;;;;;;;;;;;
;; python ;;
;;;;;;;;;;;;
(add-hook 'python-mode-hook 'insert-shebang)
(add-hook 'python-mode-hook 'eldoc-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
;; (add-hook 'python-mode-hook 'ac-anaconda-setup)
(add-hook 'python-mode-hook 'pyvenv-mode)

(add-to-list 'company-backends 'company-anaconda)
;; (add-hook 'jedi-mode-hook 'jedi-direx:setup)
;; (add-to-list 'company-backends 'company-jedi)
;; (eval-after-load "python"
  ;; '(define-key python-mode-map "\C-cx" 'jedi-direx:pop-to-buffer))


(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'py-autopep8)

;; (add-hook 'python-mode-hook  'elpy-enable)

;; (add-hook 'python-mode-hook  'company-mode)
;; (defun my/python-mode-hook ()
  ;; (add-to-list 'company-backends 'company-jedi))
;; (add-hook 'python-mode-hook 'jedi:setup)

;; (add-hook 'python-mode-hook 'my/python-mode-hook)

(push '("*anaconda-doc*" :position right :dedicated t :width 80 :noselect t) popwin:special-display-config)
(push '("*anaconda-nav*" :position right :dedicated t :width 80 :noselect t) popwin:special-display-config)
(push '("*Python Doc*" :position right :dedicated t :width 80 ) popwin:special-display-config)


;; (setq jedi:setup-keys t)                      ; optional
;; (setq jedi:complete-on-dot t)                 ; optional
;; (add-hook 'python-mode-hook 'jedi:setup)


;;;;;;;;;;;;;
;; ipython ;;
;;;;;;;;;;;;;

;; (setq
;;  python-shell-interpreter "ipython"
;;  python-shell-interpreter-args "--matplotlib --pdb --nosep"
;;  python-shell-prompt-regexp "In \\[[0-9]+\\]: "
;;  python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
;;  python-shell-completion-setup-code
;;  "from IPython.core.completerlib import module_completion"
;;  python-shell-completion-module-string-code
;;  "';'.join(module_completion('''%s'''))\n"
;;  python-shell-completion-string-code
;;  "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")


;;;;;;;;;;;;;;;;
;; completion ;;
;;;;;;;;;;;;;;;;

(bind-key "M-/" (make-hippie-expand-function
                             '(try-expand-dabbrev-visible
                               try-expand-dabbrev
                               try-complete-file-name-partially
                               try-complete-file-name
                               try-expand-dabbrev-all-buffers) t))

;;;;;;;;;;
;; helm ;;
;;;;;;;;;;
;; (require 'helm)
(require 'helm-config)
;; (require 'helm-projectile)
;; (require 'helm-mode)
;; (require 'helm-misc)
;; (require 'helm-files)
;; (require 'helm-locate)
;; (require 'helm-buffers)
;; (require 'helm-match-plugin)

;; (helm-projectile-on)


;; (defun helm-backspace ()
;;   "Forward to `backward-delete-char'.
;; On error (read-only), quit without selecting."
;;   (interactive)
;;   (condition-case nil
;;       (backward-delete-char 1)
;;     (error
;;      (helm-keyboard-quit))))
;; (bind-key "DEL" 'helm-backspace helm-map)
;; (defun fu/helm-find-files-navigate-forward (orig-fun &rest args)
;;   (if (file-directory-p (helm-get-selection))
;;       (apply orig-fun args)
;;     (helm-maybe-exit-minibuffer)))
;; (advice-add 'helm-execute-persistent-action :around #'fu/helm-find-files-navigate-forward)
;; (bind-key "RET" 'helm-execute-persistent-action helm-find-files-map)


;; (setq helm-M-x-fuzzy-match t)
(bind-key "M-x" 'helm-M-x)

(bind-key "C-x b" 'helm-mini)
(bind-key "C-x C-r" 'helm-recentf)
(bind-key "M-y" 'helm-show-kill-ring)
(bind-key "M-s o"   'helm-swoop)
(bind-key "M-s /"   #'helm-multi-swoop)
(bind-key "C-x r l" #'helm-filtered-bookmarks)
(bind-key "M-s s"   #'helm-ag)
(bind-key "C-x C-f" #'helm-find-files)
(bind-key* "C-c C-j" #'helm-semantic-or-imenu)

;;;;;;;;;;;;
;; buffer ;;
;;;;;;;;;;;;
(bind-key "C-x C-b" 'ibuffer-other-window)
(push "*Ibuffer*" popwin:special-display-config)


;;;;;;;;;;;;;;;
;; Undo Tree ;;
;;;;;;;;;;;;;;;
(require 'undo-tree)
;; (bind-key "C-?" 'undo-tree-visualize)

;;;;;;;;;;;
;; Scala ;;
;;;;;;;;;;;
;; (require 'ensime)
(require 'electric-case)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)


;;;;;;;;;;;
;; LaTeX ;;
;;;;;;;;;;;

;; (require 'latex-pretty-symbols)
;; (require 'latex-extra)
;; (eval-after-load 'latex '(latex/setup-keybinds))
;; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;; (add-to-list 'load-path "~/.emacs.d/elpa/auctex-11.87.5")
;; (require 'tex-site nil 'noerror)
;; (require 'tex-site)

;;;;;;;;;;;
;; dired ;;
;;;;;;;;;;;
(require 'dired-x)
(require 'dired+)
(setq-default dired-omit-files-p t) ; this is buffer-local variable
(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))

;;;;;;;;;;
;; java ;;
;;;;;;;;;;
(add-hook 'java-mode-hook 'electric-case-java-init)

;;;;;;;;;;;;;;
;; org-mode ;;
;;;;;;;;;;;;;;

(require 'org)
(bind-key "C-c %" nil org-mode-map)
(bind-key "C-c &" nil org-mode-map)
(bind-key "C-c C-9" 'org-mark-ring-goto org-mode-map)
(bind-key "C-c C-0" 'org-mark-ring-push org-mode-map)

(bind-key "C-c l" 'org-store-link)
;; (global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;; ;; Set to the location of your Org files on your local system
;; (setq org-directory "~/Google Drive/Org")
;; ;; Set to the name of the file where new notes will be stored
;; (setq org-mobile-inbox-for-pull "~/Google Drive/Org/flagged.org")
;; ;; Set to <your Dropbox root directory>/MobileOrg.
;; (setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

;;;;;;;
;; C ;;
;;;;;;;
(require 'cc-mode)
(require 'semantic)
;; (cscope-setup)

;; (global-semanticdb-minor-mode 1)
;; (global-semantic-idle-scheduler-mode 1)
(add-hook 'c-mode-common-hook 'helm-gtags-mode)
(add-hook 'c-mode-common-hook 'cscope-setup)
(add-hook 'c-mode-common-hook 'cscope-minor-mode)
;; (semantic-mode 1)


;;;;;;;;;;;;;
;; malabar ;;
;;;;;;;;;;;;;
;; (require 'cedet)
;; (require 'semantic)
;; (load "semantic/loaddefs.el")
;; (semantic-mode 1);;
;; (require 'malabar-mode)
;; (add-to-list 'auto-mode-alist '("\\.java\\'" . malabar-mode))     


;; Or enable more if you wish
;; (setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
;;                                   global-semanticdb-minor-mode
;;                                   global-semantic-idle-summary-mode
;;                                   global-semantic-mru-bookmark-mode))
;; (semantic-mode 1)
;; (require 'malabar-mode-autoloads)
;; (setq malabar-groovy-lib-dir "~/.emacs/malabar-lib/")
;; (add-to-list 'auto-mode-alist '("\\.java\\'" . malabar-mode))


;;;;;;;;
;; mc ;;
;;;;;;;;
(require 'multiple-cursors)
(bind-key "C->" 'mc/mark-next-like-this)
(bind-key "C-<" 'mc/mark-previous-like-this)
(bind-key "C-c C-<" 'mc/mark-all-like-this)
(bind-key "C-)" 'mc/mark-next-symbol-like-this)
(bind-key "C-(" 'mc/mark-previous-symbol-like-this)
(bind-key "C-S-c C-S-c" 'mc/edit-lines)

;;;;;;;;;;;;
;; symbol ;;
;;;;;;;;;;;;
(require 'iedit)

;;;;;;;;;;;;;;;
;; Yasnippet ;;
;;;;;;;;;;;;;;;
(require 'yasnippet)
;; (yas-global-mode 1)
;; (bind-key "TAB" nil yas-minor-mode-map)
;; (bind-key "C-M-y" 'yas-expand yas-minor-mode-map)

;;;;;;;;;;;
;; SLIME ;;
;;;;;;;;;;;

(setq slime-lisp-implementations
      '((clisp ("/usr/local/bin/clisp"))
	(sbcl ("/usr/local/bin/sbcl"))
	))
(require 'slime-autoloads)
;; (slime-setup '(slime-fancy slime-asdf slime-tramp))


;;;;;;;;;;;;;
;; killing ;;
;;;;;;;;;;;;;
(bind-key "C-S-<backspace>" 'kill-whole-line)

;;;;;;;;;;;;
;; parens ;;
;;;;;;;;;;;;

;; (require 'phi-search)
;; (bind-key "C-s" 'phi-search)
;; (bind-key "C-r" 'phi-search-backward)
;; (require 'phi-autopair)


(require 'change-inner)
(bind-key "M-i" 'change-inner)
(bind-key "M-o" 'change-outer)

(require 'expand-region)
(bind-key "C-=" 'er/expand-region)
(bind-key "C-+" 'er/mark-symbol)


(require 'smartparens-config)

(bind-key "C-M-f" 'sp-forward-sexp sp-keymap)
(bind-key "C-M-b" 'sp-backward-sexp sp-keymap)

(bind-key "C-M-d" 'sp-down-sexp sp-keymap)
(bind-key "C-M-a" 'sp-backward-down-sexp sp-keymap)
(bind-key "C-S-a" 'sp-beginning-of-sexp sp-keymap)
(bind-key "C-S-d" 'sp-end-of-sexp sp-keymap)

(bind-key "C-M-e" 'sp-up-sexp sp-keymap)
(define-key emacs-lisp-mode-map (kbd ")") 'sp-up-sexp)
(bind-key "C-M-u" 'sp-backward-up-sexp sp-keymap)
(bind-key "C-M-t" 'sp-transpose-sexp sp-keymap)

(bind-key "C-M-n" 'sp-next-sexp sp-keymap)
(bind-key "C-M-p" 'sp-previous-sexp sp-keymap)

(bind-key "C-M-k" 'sp-kill-sexp sp-keymap)
(bind-key "C-M-w" 'sp-copy-sexp sp-keymap)

(bind-key "H-<delete>" 'sp-unwrap-sexp sp-keymap)
(bind-key "H-<backspace>" 'sp-backward-unwrap-sexp sp-keymap)

(bind-key "C-<right>" 'sp-forward-slurp-sexp sp-keymap)
(bind-key "C-<left>" 'sp-forward-barf-sexp sp-keymap)
(bind-key "C-M-<left>" 'sp-backward-slurp-sexp sp-keymap)
(bind-key "C-M-<right>" 'sp-backward-barf-sexp sp-keymap)

(bind-key "M-D" 'sp-splice-sexp sp-keymap)
;; (bind-key "C-M-<delete>" 'sp-splice-sexp-killing-forward sp-keymap)
;; (bind-key "C-M-<backspace>" 'sp-splice-sexp-killing-backward sp-keymap)
;; (bind-key "C-S-<backspace>" 'sp-splice-sexp-killing-around sp-keymap)

(bind-key "C-]" 'sp-select-next-thing-exchange sp-keymap)
(bind-key "C-\"" 'sp-select-previous-thing sp-keymap)
(bind-key "C-'" 'sp-select-next-thing sp-keymap)

(bind-key "M-F" 'sp-forward-symbol sp-keymap)
(bind-key "M-B" 'sp-backward-symbol sp-keymap)

(bind-key "H-t" 'sp-prefix-tag-object sp-keymap)
(bind-key "H-p" 'sp-prefix-pair-object sp-keymap)
(bind-key "H-s c" 'sp-convolute-sexp sp-keymap)
(bind-key "H-s a" 'sp-absorb-sexp sp-keymap)
(bind-key "H-s e" 'sp-emit-sexp sp-keymap)
(bind-key "H-s p" 'sp-add-to-previous-sexp sp-keymap)
(bind-key "H-s n" 'sp-add-to-next-sexp sp-keymap)
(bind-key "H-s j" 'sp-join-sexp sp-keymap)
(bind-key "H-s s" 'sp-split-sexp sp-keymap)

;;;;;;;;;;;;;
;; paredit ;;
;;;;;;;;;;;;;

;; (autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
;; (add-hook 'slime-repl-mode-hook       #'enable-paredit-mode)
;; (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
;; (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
;; (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
;; (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
;; (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
;; (add-hook 'scheme-mode-hook           #'enable-paredit-mode)

;; Stop SLIME's REPL from grabbing DEL,
;; which is annoying when backspacing over a '('
(defun override-slime-repl-bindings-with-paredit ()
  (define-key slime-repl-mode-map
    (read-kbd-macro paredit-backward-delete-key) nil))
(add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)



;;;;;;;;;
;; ACK ;;
;;;;;;;;;
;; (require 'ack-and-a-half)
;; ;; Create shorter aliases
;; (defalias 'ack 'ack-and-a-half)
;; (defalias 'ack-same 'ack-and-a-half-same)
;; (defalias 'ack-find-file 'ack-and-a-half-find-file)
;; (defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)

;;;;;;;;;;
;; misc ;;
;;;;;;;;;;

(global-unset-key (kbd "C-\\"))
(bind-key "C-\\" 'set-mark-command )

;; (global-unset-key (kbd "C-x C-b"))
;; (bind-key "C-x C-b" 'ibuffer )
;; (add-hook 'ibuffer-mode-hook 'ibuffer-auto-mode)

(require 'view)
(global-unset-key (kbd "M-RET"))
(bind-key "M-RET" 'view-mode )

(global-unset-key (kbd "C-x C-\\"))
(bind-key "C-x C-\\" 'pop-global-mark )

;; (global-unset-key (kbd "M-;"))
;; (bind-key "M-;" 'comment-dwim-line )

;; (global-unset-key (kbd "C-x g"))
(bind-key "C-x g" 'magit-status )

;; (global-unset-key (kbd "C-z"))
;; (bind-key "C-z" 'toggle-hiding )
;; (global-unset-key (kbd "C-+"))
;; (bind-key "C-+" 'toggle-selective-display )

;; (bind-key "C-x C-r" 'recentf-open-files)

(defun iterm-here ()
  (interactive)
  (dired-smart-shell-command "open -a iTerm $PWD" nil nil))

(defun reveal-here ()
  (interactive)
  (dired-smart-shell-command "open $PWD" nil nil))


(bind-key "s-i" 'iterm-here )
(bind-key "s-r" 'reveal-here )
(bind-key "s-b" 'ido-switch-buffer )


;;;;;;;;;;;;
;; window ;;
;;;;;;;;;;;;

(bind-key "C-0" 'delete-window )
(bind-key "C-1" 'delete-other-windows)
(bind-key "C-2" 'split-window-below )
(bind-key "C-3" 'split-window-right )
(bind-key "M-p" 'ace-window )
(require 'transpose-frame )
(bind-key "s-p" 'transpose-frame)



(define-key input-decode-map "\e[1;10A" [M-S-up])
(define-key input-decode-map "\e[1;10B" [M-S-down])
(define-key input-decode-map "\e[1;10C" [M-S-right])
(define-key input-decode-map "\e[1;10D" [M-S-left])

(define-key input-decode-map "\e[1;3A" [M-up])
(define-key input-decode-map "\e[1;3B" [M-down])
(define-key input-decode-map "\e[1;3C" [M-right])
(define-key input-decode-map "\e[1;3D" [M-left])



;;;;;;;;;;;;;;;
;; mode-line ;;
;;;;;;;;;;;;;;;

;; (require 'smart-mode-line)
;; (add-hook 'after-init-hook 'sml/setup)


;;;;;;;;;;;
;; direx ;;
;;;;;;;;;;;

;; (push '(direx:direx-mode :position left :width 40 :dedicated t)
;;       popwin:special-display-config)
;; (bind-key "C-x C-j" 'direx:jump-to-directory-other-window)

(setq mac-command-modifier 'super) ; make cmd key do Meta
(setq mac-option-modifier 'meta) ; make opt key do Super
(setq mac-control-modifier 'control) ; make Control key do Control
(setq ns-function-modifier 'hyper)  ; make Fn key do Hyper

(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)



;;;;;;;;;;
;; Smex ;;
;;;;;;;;;;

;; (global-set-key [(meta x)] (lambda ()
;;                              (interactive)
;;                              (or (boundp 'smex-cache)
;;                                  (smex-initialize))
;;                              (global-set-key [(meta x)] 'smex)
;;                              (smex)))

;; (global-set-key [(shift meta x)] (lambda ()
;;                                    (interactive)
;;                                    (or (boundp 'smex-cache)
;;                                        (smex-initialize))
;;                                    (global-set-key [(shift meta x)] 'smex-major-mode-commands)
;;                                    (smex-major-mode-commands)))
(define-key dired-mode-map "i" 'diredp-insert-subdirs)
(define-key dired-mode-map ";" 'dired-kill-subdir)
