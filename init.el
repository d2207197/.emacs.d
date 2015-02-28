;; (getenv "PATH")
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))
(setenv "PATH" (concat "/usr/texbin" ":" (getenv "PATH")))

(setq mac-command-modifier 'meta) ; make cmd key do Meta
(setq mac-option-modifier 'super) ; make opt key do Super
(setq mac-control-modifier 'control) ; make Control key do Control
(setq ns-function-modifier 'hyper)  ; make Fn key do Hyper

(require 'package)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/local-lisp/")
(load "~/.emacs.d/local-lisp/secrets.el")

;; (require 'code-folding)

;;;;;;;;;;
;; file ;;
;;;;;;;;;;
(global-set-key (kbd "C-x C-u") 'revert-buffer)

;;;;;;;;;;;;
;; search ;;
;;;;;;;;;;;;
(require 'anzu)
(global-anzu-mode +1)
(global-set-key (kbd "M-%") 'anzu-query-replace)
(global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)

;;;;;;;;;;;;;;
;; register ;;
;;;;;;;;;;;;;;
(global-set-key (kbd "C-x r i") 'helm-register)

;;;;;;;;;;;
;; usage ;;
;;;;;;;;;;;
(setq guru-warn-only t)


;;;;;;;;;;;;;
;; comment ;;
;;;;;;;;;;;;;
(global-set-key (kbd "C-;") #'comment-line)
;; (require 'comment-dwim-line)

;;;;;;;;;;;
;; font ;;
;;;;;;;;;;;
(when window-system (require 'qiang-font))


;;;;;;;;;;
;; move ;;
;;;;;;;;;;
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;;;;;;;;;;;;;;
;; bookmark ;;
;;;;;;;;;;;;;;
(require 'bm)

(global-set-key (kbd "<left-fringe> <mouse-1>") 'bm-toggle-mouse)
(global-unset-key (kbd "C-x m"))
(global-set-key (kbd "C-x m m")   'bm-toggle)
(global-set-key (kbd "C-x m n")   'bm-next)
(global-set-key (kbd "C-x m p")   'bm-previous)

;;;;;;;;;;
;; mark ;;
;;;;;;;;;;
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)

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
;; (add-hook 'python-mode-hook 'insert-shebang)
;; (add-hook 'python-mode-hook 'anaconda-mode)
;; (add-hook 'python-mode-hook 'eldoc-mode)


(elpy-enable)

(setq elpy-rpc-python-command "python3")
(elpy-use-ipython "ipython3")
(setq python-shell-interpreter "ipython3")

(require 'py-autopep8)

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

;;;;;;;;;;
;; Jedi ;;
;;;;;;;;;;
;; (setq jedi:setup-keys t)                      ; optional
;; (setq jedi:complete-on-dot t)                 ; optional
;; (add-hook 'python-mode-hook 'jedi:setup)


;;;;;;;;;;
;; helm ;;
;;;;;;;;;;
(require 'helm)
(require 'helm-config)
(require 'helm-projectile)
(require 'helm-mode)
(require 'helm-misc)
(require 'helm-files)
(require 'helm-locate)
(require 'helm-buffers)
(require 'helm-match-plugin)

(helm-projectile-on)


;; (defun helm-backspace ()
;;   "Forward to `backward-delete-char'.
;; On error (read-only), quit without selecting."
;;   (interactive)
;;   (condition-case nil
;;       (backward-delete-char 1)
;;     (error
;;      (helm-keyboard-quit))))
;; (define-key helm-map (kbd "DEL") 'helm-backspace)
;; (defun fu/helm-find-files-navigate-forward (orig-fun &rest args)
;;   (if (file-directory-p (helm-get-selection))
;;       (apply orig-fun args)
;;     (helm-maybe-exit-minibuffer)))
;; (advice-add 'helm-execute-persistent-action :around #'fu/helm-find-files-navigate-forward)
;; (define-key helm-find-files-map (kbd "RET") 'helm-execute-persistent-action)


;; (setq helm-M-x-fuzzy-match t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-s o")   'helm-swoop)
(global-set-key (kbd "M-s /")   #'helm-multi-swoop)
(global-set-key (kbd "C-x r l") #'helm-filtered-bookmarks)
(global-set-key (kbd "M-s s")   #'helm-ag)
(global-set-key (kbd "C-x C-f") 'helm-find-files)


;;;;;;;;;;;;;;;
;; Undo Tree ;;
;;;;;;;;;;;;;;;
(require 'undo-tree)
;; (global-set-key (kbd "C-?") 'undo-tree-visualize)

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

(define-key org-mode-map (kbd "C-c %") nil)
(define-key org-mode-map (kbd "C-c &") nil)
(define-key org-mode-map (kbd "C-c C-9") 'org-mark-ring-goto)
(define-key org-mode-map (kbd "C-c C-0") 'org-mark-ring-push)

(global-set-key (kbd "C-c l") 'org-store-link)
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
(cscope-setup)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(add-hook 'c-mode-common-hook 'helm-gtags-mode)
(add-hook 'c-mode-common-hook 'cscope-minor-mode)
(semantic-mode 1)


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


;;;;;;;;;
;; phi ;;
;;;;;;;;;
;; (require 'phi-search)
;; (global-set-key (kbd "C-s") 'phi-search)
;; (global-set-key (kbd "C-r") 'phi-search-backward)
(require 'phi-autopair)


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

;;;;;;;;;;;
;; SLIME ;;
;;;;;;;;;;;

(setq slime-lisp-implementations
      '((clisp ("/usr/local/bin/clisp"))
	(sbcl ("/usr/local/bin/sbcl"))
	))
(require 'slime-autoloads)
;; (slime-setup '(slime-fancy slime-asdf slime-tramp)) 


;;;;;;;;;;;;
;; parens ;;
;;;;;;;;;;;;

(require 'change-inner)
(global-set-key (kbd "M-i") 'change-inner)
(global-set-key (kbd "M-o") 'change-outer)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)


(require 'smartparens-config)

(define-key sp-keymap (kbd "C-M-f") 'sp-forward-sexp)
(define-key sp-keymap (kbd "C-M-b") 'sp-backward-sexp)

(define-key sp-keymap (kbd "C-M-d") 'sp-down-sexp)
(define-key sp-keymap (kbd "C-M-a") 'sp-backward-down-sexp)
(define-key sp-keymap (kbd "C-S-a") 'sp-beginning-of-sexp)
(define-key sp-keymap (kbd "C-S-d") 'sp-end-of-sexp)

(define-key sp-keymap (kbd "C-M-e") 'sp-up-sexp)
(define-key emacs-lisp-mode-map (kbd ")") 'sp-up-sexp)
(define-key sp-keymap (kbd "C-M-u") 'sp-backward-up-sexp)
(define-key sp-keymap (kbd "C-M-t") 'sp-transpose-sexp)

(define-key sp-keymap (kbd "C-M-n") 'sp-next-sexp)
(define-key sp-keymap (kbd "C-M-p") 'sp-previous-sexp)

(define-key sp-keymap (kbd "C-M-k") 'sp-kill-sexp)
(define-key sp-keymap (kbd "C-M-w") 'sp-copy-sexp)

(define-key sp-keymap (kbd "M-<delete>") 'sp-unwrap-sexp)
(define-key sp-keymap (kbd "M-<backspace>") 'sp-backward-unwrap-sexp)

(define-key sp-keymap (kbd "C-<right>") 'sp-forward-slurp-sexp)
(define-key sp-keymap (kbd "C-<left>") 'sp-forward-barf-sexp)
(define-key sp-keymap (kbd "C-M-<left>") 'sp-backward-slurp-sexp)
(define-key sp-keymap (kbd "C-M-<right>") 'sp-backward-barf-sexp)

(define-key sp-keymap (kbd "M-D") 'sp-splice-sexp)
(define-key sp-keymap (kbd "C-M-<delete>") 'sp-splice-sexp-killing-forward)
(define-key sp-keymap (kbd "C-M-<backspace>") 'sp-splice-sexp-killing-backward)
(define-key sp-keymap (kbd "C-S-<backspace>") 'sp-splice-sexp-killing-around)

(define-key sp-keymap (kbd "C-]") 'sp-select-next-thing-exchange)
(define-key sp-keymap (kbd "C-\"") 'sp-select-previous-thing)
(define-key sp-keymap (kbd "C-'") 'sp-select-next-thing)

(define-key sp-keymap (kbd "M-F") 'sp-forward-symbol)
(define-key sp-keymap (kbd "M-B") 'sp-backward-symbol)

(define-key sp-keymap (kbd "H-t") 'sp-prefix-tag-object)
(define-key sp-keymap (kbd "H-p") 'sp-prefix-pair-object)
(define-key sp-keymap (kbd "H-s c") 'sp-convolute-sexp)
(define-key sp-keymap (kbd "H-s a") 'sp-absorb-sexp)
(define-key sp-keymap (kbd "H-s e") 'sp-emit-sexp)
(define-key sp-keymap (kbd "H-s p") 'sp-add-to-previous-sexp)
(define-key sp-keymap (kbd "H-s n") 'sp-add-to-next-sexp)
(define-key sp-keymap (kbd "H-s j") 'sp-join-sexp)
(define-key sp-keymap (kbd "H-s s") 'sp-split-sexp)

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
(define-key global-map (kbd "C-\\") 'set-mark-command)

;; (global-unset-key (kbd "C-x C-b"))
;; (define-key global-map (kbd "C-x C-b") 'ibuffer)
;; (add-hook 'ibuffer-mode-hook 'ibuffer-auto-mode)

(require 'view)
(global-unset-key (kbd "M-RET"))
(define-key global-map (kbd "M-RET") 'view-mode)

(global-unset-key (kbd "C-x C-\\"))
(define-key global-map (kbd "C-x C-\\") 'pop-global-mark)

(global-unset-key (kbd "M-;"))
(define-key global-map (kbd "M-;") 'comment-dwim-line)

(global-unset-key (kbd "C-x C-z"))
(define-key global-map (kbd "C-x C-z") 'magit-status)

;; (global-unset-key (kbd "C-z"))
;; (define-key global-map (kbd "C-z") 'toggle-hiding)
;; (global-unset-key (kbd "C-+"))
;; (define-key global-map (kbd "C-+") 'toggle-selective-display)

;; (global-set-key (kbd "C-x C-r") 'recentf-open-files)

(defun iterm-here ()
  (interactive)
  (dired-smart-shell-command "open -a iTerm $PWD" nil nil))

(defun reveal-here ()
  (interactive)
  (dired-smart-shell-command "open $PWD" nil nil))


(define-key global-map (kbd "s-i") 'iterm-here)
(define-key global-map (kbd "s-r") 'reveal-here)
(define-key global-map (kbd "s-b") 'ido-switch-buffer)


(define-key global-map (kbd "C-0") 'delete-window)
(define-key global-map (kbd "C-1") 'delete-other-windows)
(define-key global-map (kbd "C-2") 'split-window-below)
(define-key global-map (kbd "C-3") 'split-window-right)
(define-key global-map (kbd "M-p") 'ace-window)



(define-key input-decode-map "\e[1;10A" [M-S-up])
(define-key input-decode-map "\e[1;10B" [M-S-down])
(define-key input-decode-map "\e[1;10C" [M-S-right])
(define-key input-decode-map "\e[1;10D" [M-S-left])

(define-key input-decode-map "\e[1;3A" [M-up])
(define-key input-decode-map "\e[1;3B" [M-down])
(define-key input-decode-map "\e[1;3C" [M-right])
(define-key input-decode-map "\e[1;3D" [M-left])

(global-set-key (kbd "M-/") (make-hippie-expand-function
                             '(try-expand-dabbrev-visible
                               try-expand-dabbrev
                               try-complete-file-name-partially
                               try-complete-file-name
                               try-expand-dabbrev-all-buffers) t))

;;;;;;;;;;;;;;;
;; mode-line ;;
;;;;;;;;;;;;;;;

(require 'smart-mode-line)
;; (setq sml/theme 'dark)
;; (sml/setup)


;;;;;;;;;;;
;; direx ;;
;;;;;;;;;;;
(require 'popwin)
(push '(direx:direx-mode :position bottom :width 40 :dedicated t)
      popwin:special-display-config)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)


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
 '(autopair-global-mode nil)
 '(before-save-hook (quote (py-autopep8-before-save)))
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(browse-url-generic-args (quote ("-a" "Safari")))
 '(browse-url-generic-program "open")
 '(c-default-style
   (quote
    ((java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(case-fold-search t)
 '(column-number-mode t)
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" "64581032564feda2b5f2cf389018b4b9906d98293d84d84142d90d7986032d33" "0e7da2c7c64fb5d4764250ffa4b8b33c0946577108d1d6444f1020d0dabba784" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "57f8801351e8b7677923c9fe547f7e19f38c99b80d68c34da6fa9b94dc6d3297" default)))
 '(delete-selection-mode t)
 '(desktop-save-mode t)
 '(dired-auto-revert-buffer t)
 '(dired-hide-details-hide-information-lines nil)
 '(dired-hide-details-hide-symlink-targets nil)
 '(dired-isearch-filenames t)
 '(dynamic-fonts-preferred-monospace-fonts
   (quote
    ("Monaco" "Consolas" "Menlo" "DejaVu Sans Mono" "Droid Sans Mono Pro" "Droid Sans Mono" "Inconsolata" "Source Code Pro" "Lucida Console" "Envy Code R" "Andale Mono" "Lucida Sans Typewriter" "monoOne" "Lucida Typewriter" "Panic Sans" "Bitstream Vera Sans Mono" "HyperFont" "PT Mono" "Ti92Pluspc" "Excalibur Monospace" "Courier New" "Courier" "Cousine" "Fira Mono" "Lekton" "Ubuntu Mono" "Liberation Mono" "BPmono" "Free Mono" "Anonymous Pro" "ProFont" "ProFontWindows" "Latin Modern Mono" "Code 2002" "ProggyCleanTT" "ProggyTinyTT" "Heiti TC")))
 '(dynamic-fonts-preferred-proportional-fonts
   (quote
    ("Lucida Grande" "Segoe UI" "DejaVu Sans" "Bitstream Vera" "Tahoma" "Verdana" "Helvetica" "Arial Unicode MS" "Arial" "Heiti TC")))
 '(ecb-options-version "2.40")
 '(el-get-git-shallow-clone t)
 '(elpy-mode-hook (quote (subword-mode hl-line-mode)))
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-highlight-indentation elpy-module-yasnippet elpy-module-sane-defaults)))
 '(ensime-auto-connect (quote ask))
 '(exec-path
   (quote
    ("/usr/local/bin" "/Users/joe/.virtualenvs/linggle-flask/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/usr/local/Cellar/emacs/HEAD/libexec/emacs/24.3.50/i386-apple-darwin12.4.0")))
 '(flx-ido-mode t)
 '(global-auto-revert-mode t)
 '(global-diff-hl-mode t)
 '(global-dired-hide-details-mode nil)
 '(global-discover-mode nil)
 '(global-hl-line-mode nil)
 '(global-linum-mode t)
 '(global-semantic-decoration-mode t)
 '(global-semantic-highlight-func-mode t)
 '(global-semantic-idle-summary-mode t)
 '(global-semantic-mru-bookmark-mode t)
 '(global-semantic-stickyfunc-mode t)
 '(global-subword-mode t)
 '(global-undo-tree-mode t)
 '(global-visual-line-mode t)
 '(guide-key-mode t)
 '(guide-key/guide-key-sequence (quote ("C-x" "M-s" "C-c")))
 '(guide-key/recursive-key-sequence-flag t)
 '(guru-global-mode t)
 '(helm-adaptive-mode t nil (helm-adaptive))
 '(helm-apropos-fuzzy-match t)
 '(helm-autoresize-mode t)
 '(helm-buffers-favorite-modes
   (quote
    (lisp-interaction-mode emacs-lisp-mode text-mode org-mode python-mode lua-mode)))
 '(helm-buffers-fuzzy-matching t)
 '(helm-descbinds-mode t)
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
 '(ido-everywhere nil)
 '(ido-mode nil nil (ido))
 '(ido-use-faces nil)
 '(ido-vertical-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(insert-shebang-custom-headers
   (quote
    (("py" . "#!/usr/bin/env python
# -*- coding: utf-8 -*-")
     ("" . ""))))
 '(keyfreq-mode t)
 '(line-number-mode t)
 '(line-spacing nil)
 '(magit-use-overlays nil)
 '(markdown-command "multimarkdown")
 '(markdown-open-command "/Applications/Marked.app/Contents/MacOS/Marked")
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
 '(org-startup-indented t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/")
     ("org" . "http://orgmode.org/elpa/")
     ("elpy" . "http://jorgenschaefer.github.io/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(package-selected-packages
   (quote
    (ace-window change-inner auto-complete persistent-soft cython-mode perspective bind-key anaconda-mode company helm load-relative projectile guru-mode diff-hl volatile-highlights zenburn-theme yaml-mode yagist xterm-color xcscope wgrep-ack web-mode vlf virtualenv undo-tree tabbar ssh-config-mode sr-speedbar solarized-theme smex smartparens smart-operator smart-mode-line-powerline-theme slime realgud rainbow-mode rainbow-delimiters py-autopep8 project-explorer pig-snippets pig-mode phi-search phi-autopair pdf-tools paradox palette osx-plist org-trello org-pandoc org nose nginx-mode neotree multiple-cursors monokai-theme minimap markdown-mode malabar-mode makey magit lua-mode linum-relative latex-preview-pane latex-pretty-symbols latex-extra keyfreq key-chord js2-mode jinja2-mode jedi-direx insert-shebang iedit idomenu ido-vertical-mode htmlize highlight-symbol highlight-stages help-fns+ helm-swoop helm-spotify helm-projectile helm-ls-hg helm-ls-git helm-gtags helm-descbinds helm-ag helm-ack haskell-mode guide-key gtags god-mode gitignore-mode gitconfig-mode gist ggtags fuzzy font-utils flycheck flx-ido floobits fancy-narrow expand-region esxml ensime elpy elnode electric-case ein ecb dirtree dired+ diminish cyberpunk-theme css-eldoc company-math company-auctex company-anaconda command-log-mode cdlatex bookmark+ bm autopair auctex-latexmk anzu afternoon-theme ack ace-jump-mode ac-math 2048-game)))
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
 '(py-autopep8-options (quote ("\"--max-line-length=100\"")))
 '(python-check-command "pyflakes")
 '(python-shell-interpreter "ipython")
 '(python-shell-interpreter-args "--matplotlib --pdb --nosep")
 '(recentf-max-saved-items 100)
 '(recentf-mode t)
 '(reftex-plug-into-AUCTeX t)
 '(safe-local-variable-values
   (quote
    ((TeX-command-extra-options . "-shell-escape")
     (TeX-command-extra-options . -shell-escape)
     (TeX-master . master)
     (TeX-engine . XeLaTeX))))
 '(savehist-mode t)
 '(scroll-margin 5)
 '(scroll-step 1)
 '(server-mode t)
 '(server-use-tcp t)
 '(show-paren-delay 0.1)
 '(show-paren-mode nil)
 '(show-paren-ring-bell-on-mismatch t)
 '(show-paren-style (quote mixed))
 '(show-smartparens-global-mode t)
 '(size-indication-mode t)
 '(smartparens-global-strict-mode t)
 '(sml/theme (quote dark))
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
 '(highlight-symbol-face ((t (:background "gray10")))))

 ;; '(default ((t (:inherit nil :stipple nil :background "#272822" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Monaco"))))

(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
