(add-to-list 'load-path "~/.emacs.d/local-lisp/")

;; (getenv "PATH")
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))
(setenv "PATH" (concat "/usr/texbin" ":" (getenv "PATH")))
(setq org-directory "~/Google Drive/Org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Google Drive/Org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")


(package-initialize)
(require 'dired-x)

(require 'comment-dwim-line)


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




(defun qiang-font-existsp (font)
  (if (null (x-list-fonts font))
      nil
    t))

(defun qiang-make-font-string (font-name font-size)
  (if (and (stringp font-size)
           (equal ":" (string (elt font-size 0))))
      (format "%s%s" font-name font-size)
    (format "%s %s" font-name font-size)))

(defun qiang-set-font (english-fonts
                       english-font-size
                       chinese-fonts
                       &optional chinese-font-size)

  "english-font-size could be set to \":pixelsize=18\" or a integer.
If set/leave chinese-font-size to nil, it will follow english-font-size"
  (require 'cl) ; for find if
  (let ((en-font (qiang-make-font-string
                  (find-if #'qiang-font-existsp english-fonts)
                  english-font-size))
        (zh-font (font-spec :family (find-if #'qiang-font-existsp chinese-fonts)
                            :size chinese-font-size)))

    ;; Set the default English font
    ;;
    ;; The following 2 method cannot make the font settig work in new frames.
    ;; (set-default-font "Consolas:pixelsize=18")
    ;; (add-to-list 'default-frame-alist '(font . "Consolas:pixelsize=18"))
    ;; We have to use set-face-attribute
    (message "Set English Font to %s" en-font)
    (set-face-attribute 'default nil :font en-font)

    ;; Set Chinese font
    ;; Do not use 'unicode charset, it will cause the English font setting invalid
    (message "Set Chinese Font to %s" zh-font)
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset zh-font))))





(defun markdown-regexp-right (beg end)
  (interactive "r")
  (replace-regexp "-\|[^-]" "-:|\n" nil beg end)    
  (replace-regexp "-\\+-" "-|-" nil beg end)
)


; (setq default-frame-alist (font . "Apple LiGothic Medium 12")) 



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
(add-hook 'python-mode-hook 'insert-shebang)


;;;;;;;;;;
;; Jedi ;;
;;;;;;;;;;
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)                 ; optional

;;;;;;;;;;;;;;;
;; Yasnippet ;;
;;;;;;;;;;;;;;;
(require 'yasnippet)
(yas-global-mode 1)
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
(slime-setup '(slime-fancy slime-asdf slime-tramp)) 



;;;;;;;;;;;;;;;;
;; keybinding ;;
;;;;;;;;;;;;;;;;
(global-unset-key (kbd "C-\\"))
(define-key global-map (kbd "C-\\") 'set-mark-command)

(global-unset-key (kbd "C-x C-b"))
(define-key global-map (kbd "C-x C-b") 'ibuffer)

(global-unset-key (kbd "M-RET"))
(define-key global-map (kbd "M-RET") 'view-mode)

(global-unset-key (kbd "C-x C-\\"))
(define-key global-map (kbd "C-x C-\\") 'pop-global-mark)

(global-unset-key (kbd "M-;"))
(define-key global-map (kbd "M-;") 'comment-dwim-line)

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

;;;;;;;;;;;;;;;
;; Customize ;;
;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-PDF-mode t)
 '(TeX-command-list (quote (("TeX" "%(PDF)%(tex) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil (plain-tex-mode texinfo-mode ams-tex-mode) :help "Run plain TeX") ("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t) ("LaTeX" "%`%l%(mode)%' %t" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run LaTeX") ("Makeinfo" "makeinfo %t" TeX-run-compile nil (texinfo-mode) :help "Run Makeinfo with Info output") ("Makeinfo HTML" "makeinfo --html %t" TeX-run-compile nil (texinfo-mode) :help "Run Makeinfo with HTML output") ("AmSTeX" "%(PDF)amstex %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil (ams-tex-mode) :help "Run AMSTeX") ("ConTeXt" "texexec --once --texutil %(execopts)%t" TeX-run-TeX nil (context-mode) :help "Run ConTeXt once") ("ConTeXt Full" "texexec %(execopts)%t" TeX-run-TeX nil (context-mode) :help "Run ConTeXt until completion") ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX") ("Biber" "biber %s" TeX-run-Biber nil t :help "Run Biber") ("View" "%V" TeX-run-discard-or-function t t :help "Run Viewer") ("Print" "%p" TeX-run-command t t :help "Print the file") ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command) ("File" "%(o?)dvips %d -o %f " TeX-run-command t t :help "Generate PostScript file") ("Index" "makeindex %s" TeX-run-command nil t :help "Create index file") ("Check" "lacheck %s" TeX-run-compile nil (latex-mode) :help "Check LaTeX file for correctness") ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document") ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files") ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files") ("Other" "" TeX-run-command t t :help "Run an arbitrary command"))))
 '(ack-and-a-half-executable "ack")
 '(autopair-global-mode t)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes (quote ("e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "99cbc2aaa2b77374c2c06091494bd9d2ebfe6dc5f64c7ccdb36c083aff892f7d" "fa189fcf5074d4964f0a53f58d17c7e360bb8f879bd968ec4a56dc36b0013d29" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "3c708b84612872e720796ea1b069cf3c8b3e909a2e1da04131f40e307605b7f9" default)))
 '(exec-path (quote ("/usr/local/bin" "/Users/joe/.virtualenvs/linggle-flask/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/usr/local/Cellar/emacs/HEAD/libexec/emacs/24.3.50/i386-apple-darwin12.4.0")))
 '(global-linum-mode t)
 '(ido-everywhere nil)
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/Coding")
 '(insert-shebang-custom-headers (quote (("py" . "#/usr/bin/env python
# -*- coding: utf-8 -*-") ("" . ""))))
 '(line-number-mode t)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(org-agenda-files (quote ("~/Google Drive/Org/joe-org/notes/writeAhead/writeAhead.org")))
 '(org-export-latex-default-packages-alist (quote (("T1" "fontenc" t) ("" "fixltx2e" nil) ("" "graphicx" t) ("" "longtable" nil) ("" "float" nil) ("" "wrapfig" nil) ("" "soul" t) ("" "textcomp" t) ("" "marvosym" t) ("" "wasysym" t) ("" "latexsym" t) ("" "amssymb" t) ("" "hyperref" nil) "\\tolerance=1000")))
 '(org-latex-to-pdf-process (quote ("xelatex -interaction nonstopmode -output-directory %o %f" "xelatex -interaction nonstopmode -output-directory %o %f" "xelatex -interaction nonstopmode -output-directory %o %f")))
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/") ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(recentf-mode t)
 '(safe-local-variable-values (quote ((TeX-engine . XeLaTeX))))
 '(scroll-margin 5)
 '(scroll-step 1)
 '(show-paren-delay 0.1)
 '(show-paren-mode t)
 '(show-paren-ring-bell-on-mismatch t)
 '(show-paren-style (quote mixed))
 '(tool-bar-mode nil)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#272822" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :family "儷黑")))))



(qiang-set-font
 '("Menlo"  "Consolas" "Monaco" "DejaVu Sans Mono" "Monospace" "Courier New") ":pixelsize=14"
 '("Heiti TC" "LiHei Pro"  "SimHei" "文泉驿等宽微米黑" "黑体" "新宋体" "宋体"))
