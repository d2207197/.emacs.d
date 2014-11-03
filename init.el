

(add-to-list 'load-path "~/.emacs.d/local-lisp/")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")


;; (getenv "PATH")
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))
(setenv "PATH" (concat "/usr/texbin" ":" (getenv "PATH")))
(setq org-directory "~/Google Drive/Org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Google Drive/Org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

(load "~/.emacs.d/local-lisp/secrets.el")

;; (add-to-list 'load-path "~/.emacs.d/elpa/auctex-11.87.5")
(require 'package)
(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))


;; (add-to-list 'load-path "~/.emacs.d/elpa/auctex-11.87.5")
;; (require 'tex-site nil 'noerror)
;; (require 'tex-site)

(package-initialize)
(elpy-enable)

(require 'dired-x)
(require 'dired+)
(require 'comment-dwim-line)
(require 'code-folding)
(when window-system
  (require 'qiang-font))
(require 'el-get)
(require 'electric-case)
;; (require 'ensime)			;



(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; (require 'latex-pretty-symbols)
;; (require 'latex-extra)
;; (eval-after-load 'latex '(latex/setup-keybinds))
;; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)


;;;;;;;;;;;
;; dired ;;
;;;;;;;;;;;
    (setq-default dired-omit-files-p t) ; this is buffer-local variable

  (setq dired-omit-files
          (concat dired-omit-files "\\|^\\..+$"))



;;;;;;;;;;;;;;;
;; key-chord ;;
;;;;;;;;;;;;;;;
(require 'view)
(require 'undo-tree)
(require 'key-chord)

(key-chord-mode t)
(setq key-chord-two-keys-delay .025
      key-chord-one-key-delay .020)

(dolist (binding
         `((" e" . previous-multiframe-window)
           (" o" . next-multiframe-window)
           (" l" . ibuffer)

           ;; (" e" . magit-status)

           (" m" . er/expand-region)

           (" q" . quake-mode)

           (" 0" . delete-window)
           (" 1" . delete-other-windows)
           (" 2" . split-window-below)
           (" 3" . split-window-right)
           ;; (" =" . winstack-push)
           ;; (" -" . winstack-pop)

           (" w" . whitespace-mode)
           ("tm" . undo-tree-undo)
           ("tr" . undo-tree-redo)
           ("tb" . undo-tree-switch-branch)
           ("tv" . undo-tree-visualize)
           
           ("ek" . View-scroll-half-page-forward)
           ("e," . View-scroll-half-page-backward)

           (" b" . ido-switch-buffer)
           (" f" . ido-find-file)
           (" s" . save-buffer)

           (" x" . shell)

           ))
  (key-chord-define-global (car binding) (cdr binding)))

;;;;;;;;;;;;
;; el-get ;;
;;;;;;;;;;;;


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



;;;;;;;;;;
;; java ;;
;;;;;;;;;;
(add-hook 'java-mode-hook 'electric-case-java-init)

;;;;;;;;;;;;;;
;; org-mode ;;
;;;;;;;;;;;;;;

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;; Set to the location of your Org files on your local system
(setq org-directory "~/Google Drive/Org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Google Drive/Org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

(defun markdown-regexp-right (beg end)
  (interactive "r")
  (replace-regexp "-\|[^-]" "-:|\n" nil beg end)    
  (replace-regexp "-\\+-" "-|-" nil beg end)
)



; (setq default-frame-alist (font . "Apple LiGothic Medium 12")) 


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

;;;;;;;;;;;;;
;; ipython ;;
;;;;;;;;;;;;;
(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter-args ""
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
   "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
   "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
   "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")


;;;;;;;;;;;;
;; python ;;
;;;;;;;;;;;;
;; (add-hook 'python-mode-hook 'insert-shebang)
;; (add-hook 'python-mode-hook 'highlight-indentation-mode)

(require 'indent-guide)

(global-set-key (kbd "M-/") (make-hippie-expand-function
                             '(try-expand-dabbrev-visible
                               try-expand-dabbrev
                               try-complete-file-name-partially
                               try-complete-file-name
                               try-expand-dabbrev-all-buffers) t))

;;;;;;;;;;
;; Jedi ;;
;;;;;;;;;;

;; (setq jedi:setup-keys t)                      ; optional
;; (setq jedi:complete-on-dot t)                 ; optional
;; (add-hook 'python-mode-hook 'jedi:setup)

;;;;;;;;;
;; phi ;;
;;;;;;;;;
;; (require 'phi-search)
;; (global-set-key (kbd "C-s") 'phi-search)
;; (global-set-key (kbd "C-r") 'phi-search-backward)
(require 'phi-autopair)
(phi-autopair-global-mode)


;;;;;;;;
;; mc ;;
;;;;;;;;
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)


;;;;;;;;;;;;;;;
;; Yasnippet ;;
;;;;;;;;;;;;;;;
(require 'yasnippet)
;; (yas-global-mode 1)
;; (define-key yas-minor-mode-map (kbd "TAB") nil)
;; (define-key yas-minor-mode-map (kbd "C-M-y") 'yas-expand)

;;;;;;;;;;
;; Smex ;;
;;;;;;;;;;
(global-set-key [(meta x)] (lambda ()
                             (interactive)
                             (or (boundp 'smex-cache)
                                 (smex-initialize))
                             (global-set-key [(meta x)] 'smex)
                             (smex)))

(global-set-key [(shift meta x)] (lambda ()
                                   (interactive)
                                   (or (boundp 'smex-cache)
                                       (smex-initialize))
                                   (global-set-key [(shift meta x)] 'smex-major-mode-commands)
                                   (smex-major-mode-commands)))






;;;;;;;;;;;
;; SLIME ;;
;;;;;;;;;;;
(setq slime-lisp-implementations
      '((clisp ("/usr/local/bin/clisp"))
	(sbcl ("/usr/local/bin/sbcl"))
	))
(require 'slime-autoloads)
;; (slime-setup '(slime-fancy slime-asdf slime-tramp)) 



;;;;;;;;;;;;;;;;
;; keybinding ;;
;;;;;;;;;;;;;;;;
(global-unset-key (kbd "C-\\"))
(define-key global-map (kbd "C-\\") 'set-mark-command)

(global-unset-key (kbd "C-x C-b"))
(define-key global-map (kbd "C-x C-b") 'ibuffer)
(add-hook 'ibuffer-mode-hook 'ibuffer-auto-mode)

(global-unset-key (kbd "M-RET"))
(define-key global-map (kbd "M-RET") 'view-mode)

(global-unset-key (kbd "C-x C-\\"))
(define-key global-map (kbd "C-x C-\\") 'pop-global-mark)

(global-unset-key (kbd "M-;"))
(define-key global-map (kbd "M-;") 'comment-dwim-line)

(global-unset-key (kbd "C-x C-z"))
(define-key global-map (kbd "C-x C-z") 'magit-status)

(global-unset-key (kbd "C-z"))
(define-key global-map (kbd "C-z") 'toggle-hiding)
(global-unset-key (kbd "C-+"))
(define-key global-map (kbd "C-+") 'toggle-selective-display)


(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;;;;;;;;;;;;
;; paredit ;;
;;;;;;;;;;;;;

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'slime-repl-mode-hook       #'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)

;; Stop SLIME's REPL from grabbing DEL,
;; which is annoying when backspacing over a '('
(defun override-slime-repl-bindings-with-paredit ()
  (define-key slime-repl-mode-map
    (read-kbd-macro paredit-backward-delete-key) nil))
(add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)

;;;;;;;;;
;; ACK ;;
;;;;;;;;;
(require 'ack-and-a-half)
;; Create shorter aliases
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)



;;;;;;;;;;
;; misc ;;
;;;;;;;;;;

;; (global-unset-key (kbd "C-0"))
(define-key global-map (kbd "s-i") 'iterm-here)
(define-key global-map (kbd "s-b") 'ido-switch-buffer)

(defun iterm-here ()
  (interactive)
  (dired-smart-shell-command "open -a iTerm $PWD" nil nil))

(define-key global-map (kbd "C-0") 'delete-window)
(define-key global-map (kbd "C-1") 'delete-other-windows)
(define-key global-map (kbd "C-2") 'split-window-below)
(define-key global-map (kbd "C-3") 'split-window-right)


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
;; (setq sml/theme 'dark)
;; (sml/setup)
;; (sml/setup)


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
 '(TeX-command-list
   (quote
    (("TeX" "%(PDF)%(tex) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
      (plain-tex-mode texinfo-mode ams-tex-mode)
      :help "Run plain TeX")
     ("XeLaTeX" "%`latexmk -xelatex -synctex=1%(mode)   %t" TeX-run-TeX nil t)
     ("LaTeX" "%`%l%(mode)%' %t" TeX-run-TeX nil
      (latex-mode doctex-mode)
      :help "Run LaTeX")
     ("Makeinfo" "makeinfo %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with Info output")
     ("Makeinfo HTML" "makeinfo --html %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with HTML output")
     ("AmSTeX" "%(PDF)amstex %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
      (ams-tex-mode)
      :help "Run AMSTeX")
     ("ConTeXt" "texexec --once --texutil %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt once")
     ("ConTeXt Full" "texexec %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt until completion")
     ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX")
     ("Biber" "biber %s" TeX-run-Biber nil t :help "Run Biber")
     ("View" "%V" TeX-run-discard-or-function t t :help "Run Viewer")
     ("Print" "%p" TeX-run-command t t :help "Print the file")
     ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command)
     ("File" "%(o?)dvips %d -o %f " TeX-run-command t t :help "Generate PostScript file")
     ("Index" "makeindex %s" TeX-run-command nil t :help "Create index file")
     ("Check" "lacheck %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for correctness")
     ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document")
     ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
     ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files")
     ("Other" "" TeX-run-command t t :help "Run an arbitrary command"))))
 '(TeX-engine (quote xetex))
 '(TeX-expand-list
   (quote
    (("%p" TeX-printer-query)
     ("%q"
      (lambda nil
        (TeX-printer-query t)))
     ("%V"
      (lambda nil
        (TeX-source-correlate-start-server-maybe)
        (TeX-view-command-raw)))
     ("%vv"
      (lambda nil
        (TeX-source-correlate-start-server-maybe)
        (TeX-output-style-check TeX-output-view-style)))
     ("%v"
      (lambda nil
        (TeX-source-correlate-start-server-maybe)
        (TeX-style-check TeX-view-style)))
     ("%r"
      (lambda nil
        (TeX-style-check TeX-print-style)))
     ("%l"
      (lambda nil
        (TeX-style-check LaTeX-command-style)))
     ("%(PDF)"
      (lambda nil
        (if
            (and
             (eq TeX-engine
                 (quote default))
             (or TeX-PDF-mode TeX-DVI-via-PDFTeX))
            "pdf" "")))
     ("%(PDFout)"
      (lambda nil
        (cond
         ((and
           (eq TeX-engine
               (quote xetex))
           (not TeX-PDF-mode))
          " -no-pdf")
         ((and
           (eq TeX-engine
               (quote luatex))
           (not TeX-PDF-mode))
          " --output-format=dvi")
         ((and
           (eq TeX-engine
               (quote default))
           (not TeX-PDF-mode)
           TeX-DVI-via-PDFTeX)
          " \"\\pdfoutput=0 \"")
         (t ""))))
     ("%(mode)"
      (lambda nil
        (if TeX-interactive-mode "" " -interaction=nonstopmode")))
     ("%(o?)"
      (lambda nil
        (if
            (eq TeX-engine
                (quote omega))
            "o" "")))
     ("%(tex)"
      (lambda nil
        (eval
         (nth 2
              (assq TeX-engine
                    (TeX-engine-alist))))))
     ("%(latex)"
      (lambda nil
        (eval
         (nth 3
              (assq TeX-engine
                    (TeX-engine-alist))))))
     ("%(execopts)" ConTeXt-expand-options)
     ("%S" TeX-source-correlate-expand-options)
     ("%dS" TeX-source-specials-view-expand-options)
     ("%cS" TeX-source-specials-view-expand-client)
     ("%(outpage)"
      (lambda nil
        (or
         (when TeX-source-correlate-output-page-function
           (funcall TeX-source-correlate-output-page-function))
         "1")))
     ("%s" file nil t)
     ("%t" file t t)
     ("%`"
      (lambda nil
        (setq TeX-command-pos t TeX-command-text "")))
     (" \"\\"
      (lambda nil
        (if
            (eq TeX-command-pos t)
            (setq TeX-command-pos pos pos
                  (+ 3 pos))
          (setq pos
                (1+ pos)))))
     ("\""
      (lambda nil
        (if
            (numberp TeX-command-pos)
            (setq TeX-command-text
                  (concat TeX-command-text
                          (substring command TeX-command-pos
                                     (1+ pos)))
                  command
                  (concat
                   (substring command 0 TeX-command-pos)
                   (substring command
                              (1+ pos)))
                  pos TeX-command-pos TeX-command-pos t)
          (setq pos
                (1+ pos)))))
     ("%'"
      (lambda nil
        (prog1
            (if
                (stringp TeX-command-text)
                (progn
                  (setq pos
                        (+
                         (length TeX-command-text)
                         9)
                        TeX-command-pos
                        (and
                         (string-match " "
                                       (funcall file t t))
                         "\""))
                  (concat TeX-command-text " \"\\input\""))
              (setq TeX-command-pos nil)
              "")
          (setq TeX-command-text nil))))
     ("%n" TeX-current-line)
     ("%d" file "dvi" t)
     ("%f" file "ps" t)
     ("%o"
      (lambda nil
        (funcall file
                 (TeX-output-extension)
                 t)))
     ("%b" TeX-current-file-name-master-relative)
     ("%m" preview-create-subdirectory))))
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
 '(ack-and-a-half-executable "ack")
 '(autopair-global-mode t)
 '(c-default-style
   (quote
    ((java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(case-fold-search t)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("57f8801351e8b7677923c9fe547f7e19f38c99b80d68c34da6fa9b94dc6d3297" default)))
 '(delete-selection-mode t)
 '(desktop-save-mode t)
 '(dired-auto-revert-buffer t)
 '(dynamic-fonts-preferred-monospace-fonts
   (quote
    ("Monaco" "Consolas" "Menlo" "DejaVu Sans Mono" "Droid Sans Mono Pro" "Droid Sans Mono" "Inconsolata" "Source Code Pro" "Lucida Console" "Envy Code R" "Andale Mono" "Lucida Sans Typewriter" "monoOne" "Lucida Typewriter" "Panic Sans" "Bitstream Vera Sans Mono" "HyperFont" "PT Mono" "Ti92Pluspc" "Excalibur Monospace" "Courier New" "Courier" "Cousine" "Fira Mono" "Lekton" "Ubuntu Mono" "Liberation Mono" "BPmono" "Free Mono" "Anonymous Pro" "ProFont" "ProFontWindows" "Latin Modern Mono" "Code 2002" "ProggyCleanTT" "ProggyTinyTT" "Heiti TC")))
 '(dynamic-fonts-preferred-proportional-fonts
   (quote
    ("Lucida Grande" "Segoe UI" "DejaVu Sans" "Bitstream Vera" "Tahoma" "Verdana" "Helvetica" "Arial Unicode MS" "Arial" "Heiti TC")))
 '(el-get-git-shallow-clone t)
 '(elpy-mode-hook (quote (subword-mode hl-line-mode indent-guide-mode)))
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-yasnippet elpy-module-sane-defaults)))
 '(ensime-auto-connect (quote ask))
 '(exec-path
   (quote
    ("/usr/local/bin" "/Users/joe/.virtualenvs/linggle-flask/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/usr/local/Cellar/emacs/HEAD/libexec/emacs/24.3.50/i386-apple-darwin12.4.0")))
 '(flx-ido-mode t)
 '(global-discover-mode t)
 '(global-hl-line-mode nil)
 '(global-linum-mode t)
 '(global-subword-mode t)
 '(global-visual-line-mode t)
 '(hl-line-face (quote hl-line))
 '(ibuffer-saved-filter-groups nil)
 '(ibuffer-saved-filters
   (quote
    (("e"
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
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(ido-use-faces nil)
 '(ido-vertical-mode t)
 '(indent-guide-global-mode nil)
 '(indent-guide-inhibit-modes (quote (dired-mode package-menu-mode)))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/")
 '(insert-shebang-custom-headers
   (quote
    (("py" . "#!/usr/bin/env python
# -*- coding: utf-8 -*-")
     ("" . ""))))
 '(keyfreq-mode t)
 '(line-number-mode t)
 '(line-spacing nil)
 '(markdown-open-command "open -a Marked %o")
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
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
 '(org-latex-to-pdf-process
   (quote
    ("xelatex -interaction nonstopmode -output-directory %o %f" "xelatex -interaction nonstopmode -output-directory %o %f" "xelatex -interaction nonstopmode -output-directory %o %f")))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/")
     ("org" . "http://orgmode.org/elpa/")
     ("elpy" . "http://jorgenschaefer.github.io/packages/"))))
 '(paradox-automatically-star t)
 '(pdf-latex-command "xelatex")
 '(phi-autopair-global-mode nil)
 '(preview-LaTeX-command
   (quote
    ("%`%l \"\\nonstopmode\\nofiles\\PassOptionsToPackage{"
     ("," . preview-required-option-list)
     "}{preview}\\AtBeginDocument{\\ifx\\ifPreview\\undefined" preview-default-preamble "\\fi}\"%' %t")))
 '(recentf-max-saved-items 100)
 '(recentf-mode t)
 '(reftex-plug-into-AUCTeX t)
 '(safe-local-variable-values (quote ((TeX-engine . XeLaTeX))))
 '(savehist-mode t)
 '(scroll-margin 5)
 '(scroll-step 1)
 '(server-mode t)
 '(server-use-tcp t)
 '(show-paren-delay 0.1)
 '(show-paren-mode t)
 '(show-paren-ring-bell-on-mismatch t)
 '(show-paren-style (quote mixed))
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tramp-default-method "sshx")
 '(which-function-mode t)
 '(winner-mode t)
 '(xterm-extra-capabilities (quote (modifyOtherKeys reportBackground)))
 '(xterm-mouse-mode t)
 '(yas-global-mode t nil (yasnippet))
 '(yas-prompt-functions
   (quote
    (yas-dropdown-prompt yas-ido-prompt yas-completing-prompt yas-x-prompt yas-no-prompt))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-symbol-face ((t (:underline "steel blue"))))
 '(hl-line ((t (:inherit t :background "#222")))))

 ;; '(default ((t (:inherit nil :stipple nil :background "#272822" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Monaco"))))

(put 'narrow-to-region 'disabled nil)
