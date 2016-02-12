;;;;;;;;;;;;;;;;;;;;;;;
;; package manager   ;;
;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/local-lisp/")
(load "~/.emacs.d/local-lisp/secrets" t)
(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)
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
 '(LaTeX-verbatim-environments (quote ("verbatim" "verbatim*" "minted")))
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
 '(anzu-mode-lighter "")
 '(async-bytecomp-package-mode t)
 '(autopair-global-mode nil)
 '(avy-keys (quote (97 111 101 117 104 116 110 115)))
 '(awk-mode-hook (quote (er/add-cc-mode-expansions)))
 '(baud-rate 38400)
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
    ("38ba6a938d67a452aeb1dada9d7cdeca4d9f18114e9fc8ed2b972573138d4664" "05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" default)))
 '(default-input-method "rfc1345")
 '(delete-selection-mode t)
 '(desktop-save-mode t)
 '(diff-switches "-u")
 '(dired-auto-revert-buffer t)
 '(dired-hide-details-hide-information-lines nil)
 '(dired-hide-details-hide-symlink-targets nil)
 '(dired-isearch-filenames t)
 '(dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^\\..+")
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
    ("/Library/TeX/texbin" "/usr/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/usr/local/Cellar/emacs/HEAD/libexec/emacs/24.3.50/i386-apple-darwin12.4.0")))
 '(global-aggressive-indent-mode nil)
 '(global-anzu-mode t)
 '(global-auto-complete-mode nil)
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(global-diff-hl-mode t)
 '(global-dired-hide-details-mode nil)
 '(global-discover-mode nil)
 '(global-flycheck-mode t)
 '(global-hl-line-mode nil)
 '(global-linum-mode nil)
 '(global-nlinum-mode t)
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
 '(global-wakatime-mode nil)
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
# -*- coding: utf-8 -*-"))))
 '(jedi:complete-on-dot t)
 '(jedi:get-in-function-call-delay 500)
 '(jedi:install-imenu t)
 '(jedi:tooltip-method nil)
 '(jedi:use-shortcuts t)
 '(keyfreq-mode t)
 '(latex-preview-pane-multifile-mode (quote auctex))
 '(line-number-mode t)
 '(line-spacing nil)
 '(linum-delay t)
 '(magit-use-overlays nil)
 '(markdown-command "multimarkdown")
 '(markdown-open-command "/Applications/Marked.app/Contents/MacOS/Marked")
 '(mouse-drag-copy-region t)
 '(mouse-scroll-delay 0)
 '(mouse-scroll-min-lines 0)
 '(mouse-wheel-mode t)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 0.07) ((control) . 0.3))))
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
 '(package-selected-packages
   (quote
    (pyenv-mode company-jedi rainbow-mode dired-subtree dired-filter dired-open rainbow-delimiters nlinum org-bullets company-quickhelp aggressive-indent speed-type neotree comment-dwim-2 flycheck-tip flycheck-status-emoji general-close ox-twbs solarized-theme ido-vertical-mode ignoramus persp-mode helm-flycheck company-math latex-preview-pane magic-latex-buffer math-symbol-lists helm-projectile json-mode auctex-latexmk company-auctex auctex py-yapf vlf avy flycheck ensime scala-mode2 helm-ag hydra evil-smartparens evil-dvorak insert-shebang ace-window anaconda-mode company-anaconda helm-swoop py-autopep8 yasnippet web-mode wakatime-mode use-package undo-tree transpose-frame smex smartparens slime rich-minority pyvenv projectile prodigy popwin paradox pallet nyan-mode multiple-cursors monokai-theme magit iedit idle-highlight-mode htmlize helm flycheck-cask exec-path-from-shell electric-case drag-stuff dired+ company change-inner bm anzu)))
 '(pallet-mode t)
 '(paradox-automatically-star t)
 '(paradox-display-download-count t)
 '(paradox-execute-asynchronously (quote ask))
 '(pdf-latex-command "latexmk")
 '(persp-keymap-prefix "x")
 '(phi-autopair-global-mode nil)
 '(popwin-mode t)
 '(popwin:special-display-config
   (quote
    ((dired-mode)
     ("*Python Doc*" :width 69 :position right :dedicated t)
     ("*anaconda-doc*" :width 69 :position right :noselect t :dedicated t)
     ("*anaconda-nav*" :width 69 :position right :noselect t :dedicated t :stick t)
     ("*Miniedit Help*" :noselect t)
     (help-mode :width 70 :position right :noselect nil :dedicated t)
     (completion-list-mode :noselect t)
     (compilation-mode :noselect t)
     (grep-mode :noselect t)
     (occur-mode :noselect t)
     ("*Pp Macroexpand Output*" :noselect t)
     ("*Shell Command Output*")
     ("*vc-diff*")
     ("*vc-change-log*")
     ("*undo-tree*" :width 60 :position right)
     ("^\\*anything.*\\*$" :regexp t)
     ("*slime-apropos*")
     ("*slime-macroexpansion*")
     ("*slime-description*")
     ("*slime-compilation*" :noselect t)
     ("*slime-xref*")
     (sldb-mode :stick t)
     (slime-repl-mode)
     (slime-connection-list-mode))))
 '(preview-LaTeX-command
   (quote
    ("%`%l \"\\nonstopmode\\nofiles\\PassOptionsToPackage{"
     ("," . preview-required-option-list)
     "}{preview}\\AtBeginDocument{\\ifx\\ifPreview\\undefined" preview-default-preamble "\\fi}\"%' %t")))
 '(preview-fast-dvips-command "pdftops -origpagesizes %s.pdf %m/preview.ps")
 '(projectile-global-mode t)
 '(py-autopep8-options (quote ("--max-line-length=100")))
 '(pyenv-mode t)
 '(python-check-command "flake8")
 '(python-shell-interpreter "ipython")
 '(python-shell-interpreter-args "--matplotlib=osx --pdb --nosep -i")
 '(pyvenv-mode t)
 '(recentf-max-saved-items 100)
 '(recentf-mode t)
 '(reftex-plug-into-AUCTeX t)
 '(rich-minority-mode t)
 '(rm-blacklist
   (quote
    (" hl-p" " Undo-Tree" " Guide" " Anzu" " Wrap" " Helm" " yas" " company" " ,")))
 '(safe-local-variable-values
   (quote
    ((reftex-default-bibliography . "0citation.bib")
     (reftex-default-bibliography . "citation.bib")
     (TeX-engine . xetex)
     (pyvenv-workon . py3)
     (TeX-command-extra-options . "-shell-escape")
     (TeX-command-extra-options . -shell-escape)
     (TeX-master . master)
     (TeX-engine . XeLaTeX))))
 '(savehist-mode t)
 '(scroll-conservatively 1000)
 '(scroll-down-aggressively 0.1)
 '(scroll-margin 3)
 '(scroll-step 1)
 '(scroll-up-aggressively 0.1)
 '(semantic-mode t)
 '(sentence-end-double-space nil)
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
 '(use-package-always-ensure t)
 '(use-package-debug nil)
 '(use-package-verbose t)
 '(wakatime-api-key "f7c5102c-8568-46ac-b20f-69adcf662dad")
 '(wakatime-cli-path "/usr/local/lib/python3.4/site-packages/wakatime/cli.py")
 '(which-function-mode t)
 '(winner-dont-bind-my-keys t)
 '(winner-mode t)
 '(xterm-extra-capabilities (quote (modifyOtherKeys reportBackground)))
 '(xterm-mouse-mode t)
 '(yas-also-auto-indent-first-line nil)
 '(yas-global-mode t nil (yasnippet))
 '(yas-prompt-functions
   (quote
    (yas-dropdown-prompt yas-ido-prompt yas-completing-prompt yas-x-prompt yas-no-prompt)))
 '(yas-visit-from-menu t)
 '(yas-wrap-around-region t))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#272822" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Hack"))))
 '(avy-lead-face ((t (:background "#4f57f9" :foreground "white"))))
 '(aw-leading-char-face ((t (:foreground "red" :height 3.0))))
 '(company-scrollbar-bg ((t (:inherit company-tooltip :background "gray15"))))
 '(company-scrollbar-fg ((t (:background "alternateSelectedControlColor"))))
 '(company-template-field ((t (:background "gray20" :foreground "gray75"))))
 '(company-tooltip ((t (:background "gray20" :foreground "gray75"))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :foreground "gray100"))))
 '(company-tooltip-selection ((t (:inherit company-tooltip :background "RoyalBlue4"))))
 '(diredp-dir-heading ((t (:background "gray22" :foreground "light green" :overline "gray64" :height 1.2))))
 '(diredp-dir-priv ((t (:background "#2C2C2C2C2C2C" :foreground "sandy brown"))))
 '(diredp-file-name ((t (:foreground "gray85"))))
 '(diredp-file-suffix ((t (:foreground "turquoise3"))))
 '(highlight-symbol-face ((t (:background "gray10"))))
 '(idle-highlight ((t (:background "#303f4e"))))
 '(mode-line-buffer-id ((t (:foreground "SkyBlue3" :weight bold))))
 '(mode-line-emphasis ((t (:foreground "DodgerBlue3" :weight bold))))
 '(mode-line-highlight ((t (:box (:line-width 2 :color "SkyBlue3" :style released-button))))))



;;;;;;;;;;;;;;;;;;
;; window/frame ;;
;;;;;;;;;;;;;;;;;;
(require 'persp-mode)
(with-eval-after-load "persp-mode-autoloads"
  ;; (setq wg-morph-on nil) ;; switch off animation
 (add-hook 'after-init-hook #'(lambda () (persp-mode 1))))
(require 'popwin)
(bind-key "C-z" popwin:keymap)

(require 'transpose-frame)

(bind-key "s-0" 'delete-window )
(bind-key "s-1" 'delete-other-windows)
(bind-key "s-2" 'split-window-below )
(bind-key "s-3" 'split-window-right )
(require 'ace-window)
(bind-key "M-p" 'ace-window)
(require 'transpose-frame)
(bind-key "s-p" 'transpose-frame)
(require 'winner)
(bind-key "s-[" 'winner-undo)
(bind-key "s-]" 'winner-redo)




(define-key input-decode-map "\e[1;10A" [M-S-up])
(define-key input-decode-map "\e[1;10B" [M-S-down])
(define-key input-decode-map "\e[1;10C" [M-S-right])
(define-key input-decode-map "\e[1;10D" [M-S-left])

(define-key input-decode-map "\e[1;3A" [M-up])
(define-key input-decode-map "\e[1;3B" [M-down])
(define-key input-decode-map "\e[1;3C" [M-right])
(define-key input-decode-map "\e[1;3D" [M-left])


;;;;;;;;;;;;;;;;;;
;; syntax check ;;
;;;;;;;;;;;;;;;;;;
(require 'flycheck)

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
;; (global-set-key (kbd "<mouse-4>") (lambda () (interactive) (scroll-down 1)))
;; (global-set-key (kbd "<mouse-5>") (lambda () (interactive) (scroll-up 1)))

;;;;;;;;;;
;; file ;;
;;;;;;;;;;
;; (global-set-key (kbd "C-x C-u") 'revert-buffer)
(bind-key "C-x C-u" 'revert-buffer)
(require 'vlf-setup)


;;;;;;;;;;;;
;; search ;;
;;;;;;;;;;;;
(use-package anzu
  :bind
  ("M-%" . anzu-query-replace)
  ("C-M-%" . anzu-query-replace-regexp)
  :config
  (global-anzu-mode +1)
  )
(use-package helm-swoop
  :bind
  ("M-s o" . helm-swoop)
  ("M-s /" . helm-multi-swoop)
  )
(use-package helm-ag
  :bind
  ("M-s s" . helm-ag)
  )


;;;;;;;;;;;;;;
;; register ;;
;;;;;;;;;;;;;;
(use-package helm
  :bind ("C-x r i" . helm-register))


;;;;;;;;;;;
;; usage ;;
;;;;;;;;;;;
(use-package wakatime-mode)

;;;;;;;;;;;;;
;; comment ;;
;;;;;;;;;;;;;
(bind-key "C-;" #'comment-line)
(use-package comment-dwim-2
  :bind
  ("M-;" . comment-dwim-2))

;;;;;;;;;;;
;; face  ;;
;;;;;;;;;;;
;; (when window-system (require 'qiang-font))
;; (require 'smart-mode-line-powerline-theme)

(use-package rich-minority
  :config
  (rich-minority-mode 1)
  )

;;;;;;;;;;
;; move ;;
;;;;;;;;;;

;; (require 'ace-jump-mode)
(require 'avy)
(use-package avy
  :bind
  ("M-g M-c" . avy-goto-char-2)
  ("M-g M-l" . avy-goto-line)
  ("M-g M-w" . avy-goto-word-0)
  )
;; (global-set-key (kbd "M-g M-j") 'avy-goto-char)

;; (global-set-key (kbd "M-g M-c") 'avy-goto-char-2)
;; (global-set-key (kbd "M-g M-l") 'avy-goto-line)
;; (global-set-key (kbd "M-g w") 'avy-goto-word-1)
;; (global-set-key (kbd "M-g M-w") 'avy-goto-word-0)



;; (bind-key "M-g M-j" 'ace-jump-mode )

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
;; (require 'anaconda-mode)

;; (define-key anaconda-mode-map [remap xref-find-definitions] 'anaconda-mode-goto)
;; (define-key anaconda-mode-map [remap xref-pop-marker-stack] 'anaconda-nav-pop-marker)

;; (require 'py-autopep8)
(add-hook 'python-mode-hook 'insert-shebang)
;; (add-hook 'python-mode-hook 'eldoc-mode)
;; (add-hook 'python-mode-hook 'anaconda-mode)
;; (add-hook 'python-mode-hook 'ac-anaconda-setup)
;; (add-hook 'python-mode-hook 'pyvenv-mode)

;; (add-to-list 'company-backends 'company-anaconda)
;; (add-hook 'jedi-mode-hook 'jedi-direx:setup)
(use-package company-jedi
  :init
  (add-hook 'python-mode-hook
            (lambda ()
              (add-to-list 'company-backends 'company-jedi)
              (define-key python-mode-map [remap xref-find-references] 'jedi:show-doc)
              ;; (define-key python-mode-map [remap xref-find-definitions] 'jedi:goto-definition)
              ;; (define-key python-mode-map [remap xref-pop-marker-stack] 
              ;; 'jedi:goto-definition-pop-marker)))
              (jedi-mode t)
              )
))

;; (eval-after-load "python"
  ;; '(define-key python-mode-map "\C-cx" 'jedi-direx:pop-to-buffer))
(use-package py-yapf
  :init
  (add-hook 'python-mode-hook 'py-yapf-enable-on-save))

;; (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

;; (add-hook 'python-mode-hook  'elpy-enable)

;; (add-hook 'python-mode-hook  'company-mode)
;; (defun my/python-mode-hook ()
  ;; (add-to-list 'company-backends 'company-jedi))
;; (add-hook 'python-mode-hook 'jedi:setup)

;; (add-hook 'python-mode-hook 'my/python-mode-hook)

;; (push "*anaconda-doc*"  popwin:special-display-config)

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

(bind-key "s-/" (make-hippie-expand-function
                             '(try-expand-dabbrev-visible
                               try-expand-dabbrev
                               try-complete-file-name-partially
                               try-complete-file-name
                               try-expand-dabbrev-all-buffers) t))

(bind-key "s-F" 'comint-dynamic-complete-filename)


;;;;;;;;;;;;;
;; project ;;
;;;;;;;;;;;;;
(use-package helm-projectile
  :bind ("s-f" . helm-projectile))

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



;; (setq helm-M-x-fuzzy-match t)
(bind-key "M-x" 'helm-M-x)

;; (bind-key "C-x b" 'helm-mini)
(bind-key "s-b" 'helm-mini)

(bind-key "C-x C-r" 'helm-recentf)
(bind-key "M-y" 'helm-show-kill-ring)
(bind-key "C-x r l" #'helm-filtered-bookmarks)
(bind-key "C-x C-f" #'helm-find-files)
(bind-key* "C-x j" #'helm-semantic-or-imenu)
(bind-key* "s-M-j" #'helm-semantic-or-imenu)


;;;;;;;;;;;;
;; buffer ;;
;;;;;;;;;;;;
(bind-key "C-x C-b" 'ibuffer-other-window)
;; (push "*Ibuffer*" popwin:special-display-config)


;;;;;;;;;;;;;;;
;; Undo Tree ;;
;;;;;;;;;;;;;;;
(use-package undo-tree
  :bind ("s-Z" . undo-tree-redo))
(require 'undo-tree)
;; (bind-key "C-?" 'undo-tree-visualize)
(bind-key "s-Z" 'undo-tree-redo)

;;;;;;;;;;;
;; Scala ;;
;;;;;;;;;;;
;; (require 'ensime)
(require 'electric-case)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)


;;;;;;;;;;
;; java ;;
;;;;;;;;;;
(add-hook 'java-mode-hook 'electric-case-java-init)

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

(require 'auctex-latexmk)
(auctex-latexmk-setup)
(require 'magic-latex-buffer)
(add-hook 'latex-mode-hook 'magic-latex-buffer)
(require 'latex-preview-pane)
;; (latex-preview-pane-enable)
(add-to-list 'company-backends 'company-math-symbols-unicode)
(add-hook 'LaTeX-mode-hook 'reftex-mode)


;; (defun my-latex-mode-setup ()
;;   (setq-local company-backends
;;               (append '(company-math-symbols-latex company-latex-commands)
;;                       company-backends)))

;; (add-hook 'TeX-mode-hook 'my-latex-mode-setup)

(require 'reftex)
(require 'company-auctex)
(add-hook 'latex-mode-hook 'company-auctex-init)





;;;;;;;;;;;
;; dired ;;
;;;;;;;;;;;
(require 'dired-x)
(require 'dired+)
(setq-default dired-omit-files-p t) ; this is buffer-local variable
(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))
;; (push 'dired-mode  popwin:special-display-config)


;;;;;;;;;;;;;;
;; org-mode ;;
;;;;;;;;;;;;;;

(require 'org)
(require 'org-bullets)
(bind-key "C-c %" nil org-mode-map)
(bind-key "C-c &" nil org-mode-map)
(bind-key "C-c C-9" 'org-mark-ring-goto org-mode-map)
(bind-key "C-c C-0" 'org-mark-ring-push org-mode-map)

(bind-key "C-c l" 'org-store-link)
;; (global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

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

;; (setq slime-lisp-implementations
;;       '((clisp ("/usr/local/bin/clisp"))
;; 	(sbcl ("/usr/local/bin/sbcl"))
;; 	))
;; (require 'slime-autoloads)
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
(bind-key "M-o" 'change-outer)
;; (bind-key "H-q H-o" 'change-outer)

(require 'expand-region)
(bind-key "C-=" 'er/expand-region)
(bind-key "C-+" 'er/mark-symbol)


(require 'smartparens-config)

(bind-key "C-M-f" 'sp-forward-sexp smartparens-mode-map)
(bind-key "C-M-b" 'sp-backward-sexp smartparens-mode-map)
(bind-key "C-M-u" 'sp-up-sexp smartparens-mode-map)
(bind-key "C-M-d" 'sp-backward-down-sexp smartparens-mode-map)

(bind-key "H-f" 'sp-next-sexp smartparens-mode-map)
(bind-key "H-b" 'sp-previous-sexp smartparens-mode-map)
(bind-key "H-u" 'sp-backward-up-sexp smartparens-mode-map)
(bind-key "H-d" 'sp-down-sexp smartparens-mode-map)

(bind-key "H-a" 'sp-beginning-of-sexp smartparens-mode-map)
(bind-key "H-e" 'sp-end-of-sexp smartparens-mode-map)



(bind-key "C-M-t" 'sp-transpose-sexp smartparens-mode-map)

(bind-key "H-q H-q"
          (defhydra smartparens-hydra (:color yellow)
            "Smartparens"
            ("d" sp-down-sexp "Down")
            ("e" sp-up-sexp "Up")
            ("u" sp-backward-up-sexp "Up")
            ("a" sp-backward-down-sexp "Down")
            ("f" sp-forward-sexp "Forward")
            ("b" sp-backward-sexp "Backward")
            ("n" sp-next-sexp "Next")
            ("p" sp-previous-sexp "Prev")
            ("k" sp-kill-sexp "Kill" :color blue)
            ("q" nil "Quit" :color blue))
          smartparens-mode-map)




(bind-key "C-M-k" 'sp-kill-sexp smartparens-mode-map)
(bind-key "C-M-w" 'sp-copy-sexp smartparens-mode-map)

(bind-key "H-q <deletechar>" 'sp-unwrap-sexp smartparens-mode-map)
(bind-key "H-q <backspace>" 'sp-backward-unwrap-sexp smartparens-mode-map)

(bind-key "C-<right>" 'sp-forward-slurp-sexp smartparens-mode-map)
(bind-key "C-<left>" 'sp-forward-barf-sexp smartparens-mode-map)
(bind-key "C-M-<left>" 'sp-backward-slurp-sexp smartparens-mode-map)
(bind-key "C-M-<right>" 'sp-backward-barf-sexp smartparens-mode-map)

(bind-key "H-q <up>" 'sp-splice-sexp smartparens-mode-map)
(bind-key "H-q <right>" 'sp-splice-sexp-killing-forward smartparens-mode-map)
(bind-key "H-q <left>" 'sp-splice-sexp-killing-backward smartparens-mode-map)
(bind-key "H-q <down>" 'sp-splice-sexp-killing-around smartparens-mode-map)

(bind-key "C-]" 'sp-select-next-thing-exchange smartparens-mode-map)
(bind-key "C-\"" 'sp-select-previous-thing smartparens-mode-map)
(bind-key "C-'" 'sp-select-next-thing smartparens-mode-map)

(bind-key "M-F" 'sp-forward-symbol smartparens-mode-map)
(bind-key "M-B" 'sp-backward-symbol smartparens-mode-map)

(bind-key "H-q <" 'sp-prefix-tag-object smartparens-mode-map)
(bind-key "H-q (" 'sp-prefix-pair-object smartparens-mode-map)
(bind-key "H-q c" 'sp-convolute-sexp smartparens-mode-map)
(bind-key "H-q a" 'sp-absorb-sexp smartparens-mode-map)
(bind-key "H-q e" 'sp-emit-sexp smartparens-mode-map)
(bind-key "H-q p" 'sp-add-to-previous-sexp smartparens-mode-map)
(bind-key "H-q n" 'sp-add-to-next-sexp smartparens-mode-map)
(bind-key "H-q j" 'sp-join-sexp smartparens-mode-map)
(bind-key "H-q s" 'sp-split-sexp smartparens-mode-map)

(bind-key "H-q q" 
          (defhydra hydra-learn-sp (:hint nil)
            "
  _b_ backward-sexp            -----
  _f_ forward-sexp               _s_ splice-sexp
  _L_ backward-down-sexp         _df_ splice-sexp-killing-forward
  _H_ backward-up-sexp           _db_ splice-sexp-killing-backward
^^------                         _da_ splice-sexp-killing-around
  _k_ down-sexp                -----
  _j_ up-sexp                    _C-s_ select-next-thing-exchange
-^^-----                         _C-p_ select-previous-thing
  _n_ next-sexp                  _C-n_ select-next-thing
  _p_ previous-sexp            -----
  _a_ beginning-of-sexp          _C-f_ forward-symbol
  _z_ end-of-sexp                _C-b_ backward-symbol
--^^-                          -----
  _t_ transpose-sexp             _c_ convolute-sexp
-^^--                            _g_ absorb-sexp
  _x_ delete-char                _q_ emit-sexp
  _dw_ kill-word               -----
  _dd_ kill-sexp                 _,b_ extract-before-sexp
-^^--                            _,a_ extract-after-sexp
  _S_ unwrap-sexp              -----
-^^--                            _AP_ add-to-previous-sexp
  _C-h_ forward-slurp-sexp       _AN_ add-to-next-sexp
  _C-l_ forward-barf-sexp      -----
  _C-S-h_ backward-slurp-sexp    _ join-sexp
  _C-S-l_ backward-barf-sexp     _|_ split-sexp
"
            ;; TODO: Use () and [] - + * | <space>
            ("b" sp-backward-sexp );; similiar to VIM b
            ("f" sp-forward-sexp );; similar to VIM f
            ;;
            ("L" sp-backward-down-sexp )
            ("H" sp-backward-up-sexp )
            ;;
            ("k" sp-down-sexp ) ; root - towards the root
            ("j" sp-up-sexp )
            ;;
            ("n" sp-next-sexp )
            ("p" sp-previous-sexp )
            ;; a..z
            ("a" sp-beginning-of-sexp )
            ("z" sp-end-of-sexp )
            ;;
            ("t" sp-transpose-sexp )
            ;;
            ("x" sp-delete-char )
            ("dw" sp-kill-word )
            ;;("ds" sp-kill-symbol ) ;; Prefer kill-sexp
            ("dd" sp-kill-sexp )
            ;;("yy" sp-copy-sexp ) ;; Don't like it. Pref visual selection
            ;;
            ("S" sp-unwrap-sexp ) ;; Strip!
            ;;("wh" sp-backward-unwrap-sexp ) ;; Too similar to above
            ;;
            ("C-h" sp-forward-slurp-sexp )
            ("C-l" sp-forward-barf-sexp )
            ("C-S-h" sp-backward-slurp-sexp )
            ("C-S-l" sp-backward-barf-sexp )
            ;;
            ;;("C-[" (bind (sp-wrap-with-pair "[")) ) ;;FIXME
            ;;("C-(" (bind (sp-wrap-with-pair "(")) )
            ;;
            ("s" sp-splice-sexp )
            ("df" sp-splice-sexp-killing-forward )
            ("db" sp-splice-sexp-killing-backward )
            ("da" sp-splice-sexp-killing-around )
            ;;
            ("C-s" sp-select-next-thing-exchange )
            ("C-p" sp-select-previous-thing )
            ("C-n" sp-select-next-thing )
            ;;
            ("C-f" sp-forward-symbol )
            ("C-b" sp-backward-symbol )
            ;;
            ;;("C-t" sp-prefix-tag-object)
            ;;("H-p" sp-prefix-pair-object)
            ("c" sp-convolute-sexp )
            ("g" sp-absorb-sexp )
            ("q" sp-emit-sexp )
            ;;
            (",b" sp-extract-before-sexp )
            (",a" sp-extract-after-sexp )
            ;;
            ("AP" sp-add-to-previous-sexp );; Difference to slurp?
            ("AN" sp-add-to-next-sexp )
            ;;
            ("_" sp-join-sexp ) ;;Good
            ("|" sp-split-sexp ))
          smartparens-mode-map)

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




;;;;;;;;;;;;;;;;;;;;;
;; version control ;;
;;;;;;;;;;;;;;;;;;;;;
;; (global-unset-key (kbd "C-x g"))
(bind-key "C-x g" 'magit-status )
(setq magit-last-seen-setup-instructions "1.4.0")
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)


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

;; (global-unset-key (kbd "C-\\"))
;; (bind-key "C-\\" 'set-mark-command )

;; (global-unset-key (kbd "C-x C-b"))
;; (bind-key "C-x C-b" 'ibuffer )
;; (add-hook 'ibuffer-mode-hook 'ibuffer-auto-mode)

;; (require 'view)
;; (global-unset-key (kbd "M-RET"))
;; (bind-key "M-RET" 'view-mode )

;; (global-unset-key (kbd "C-x C-\\"))
;; (bind-key "C-x C-\\" 'pop-global-mark )

;; (global-unset-key (kbd "M-;"))
;; (bind-key "M-;" 'comment-dwim-line )





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
;; (bind-key "s-b" 'ido-switch-buffer )





;;;;;;;;;;;;;;;
;; mode-line ;;
;;;;;;;;;;;;;;;

;; (require 'smart-mode-line)
;; (add-hook 'after-init-hook 'sml/setup)


;;;;;;;;;;;
;; direx ;;
;;;;;;;;;;;


;; (define-key dired-mode-map "i" 'diredp-insert-subdirs)
;; (define-key dired-mode-map ";" 'dired-kill-subdir)

(require 'use-package)

(add-hook 'dired-load-hook #'(lambda nil (load "dired-x" t)))

(use-package dired-filter
  :init
  (add-hook 'dired-mode-hook #'dired-filter-mode))

(use-package dired-subtree
  :init
  (bind-key  "<right>" 'dired-subtree-toggle dired-mode-map)
  (bind-key  "<left>" 'dired-subtree-up dired-mode-map)
  )

(use-package ignoramus
  :config
  (ignoramus-setup))






(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

;; (push '(direx:direx-mode :position left :width 40 :dedicated t)
;;       popwin:special-display-config)
;; (bind-key "C-x C-j" 'direx:jump-to-directory-other-window)

(setq mac-command-modifier 'super) ; make cmd key do Meta
(setq mac-option-modifier 'meta) ; make opt key do Super
(setq mac-control-modifier 'control) ; make Control key do Control
(setq ns-function-modifier 'hyper)  ; make Fn key do Hyper




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

;; (eval-after-load "dired-x"
;;   '(progn
;;      (defvar dired-omit-regexp-orig (symbol-function 'dired-omit-regexp))

;;      (defun dired-omit-regexp ()
;;        (let ((file (expand-file-name ".git"))
;;              parent-dir)
;;          (while (and (not (file-exists-p file))
;;                      (progn
;;                        (setq parent-dir
;;                              (file-name-directory
;;                               (directory-file-name
;;                                (file-name-directory file))))
;;                        ;; Give up if we are already at the root dir.
;;                        (not (string= (file-name-directory file)
;;                                      parent-dir))))
;;            ;; Move up to the parent dir and try again.
;;            (setq file (expand-file-name ".git" parent-dir)))
;;          ;; If we found a change log in a parent, use that.
;;          (if (file-exists-p file)
;;              (let ((regexp (funcall dired-omit-regexp-orig)))
;;                (assert (stringp regexp))
;;                (concat
;;                 regexp
;;                 (if (> (length regexp) 0)
;;                     "\\|" "")
;;                 "\\("
;;                 (mapconcat
;;                  #'(lambda (str)
;;                      (concat "^"
;;                              (regexp-quote
;;                               (substring str 13
;;                                          (if (= ?/ (aref str (1- (length str))))
;;                                              (1- (length str))
;;                                            nil)))
;;                              "$"))
;;                  (split-string (shell-command-to-string
;;                                 "git clean -d -x -n")
;;                                "\n" t)
;;                  "\\|")
;;                 "\\)"))
;;            (funcall dired-omit-regexp-orig))))))
