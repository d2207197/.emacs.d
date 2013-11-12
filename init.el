(add-to-list 'load-path "~/.emacs.d/local-lisp/")
(package-initialize)
(require 'dired-x)

(require 'comment-dwim-line)

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
 '(ac-use-menu-map t)
 '(ac-use-overriding-local-map t)
 '(autopair-global-mode t)
 '(comint-prompt-read-only t)
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("99cbc2aaa2b77374c2c06091494bd9d2ebfe6dc5f64c7ccdb36c083aff892f7d" "fa189fcf5074d4964f0a53f58d17c7e360bb8f879bd968ec4a56dc36b0013d29" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "3c708b84612872e720796ea1b069cf3c8b3e909a2e1da04131f40e307605b7f9" default)))
 '(exec-path
   (quote
    ("/usr/local/bin" "/Users/joe/.virtualenvs/linggle-flask/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/usr/local/Cellar/emacs/HEAD/libexec/emacs/24.3.50/i386-apple-darwin12.4.0")))
 '(global-linum-mode t)
 '(ido-everywhere nil)
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/projects")
 '(jedi:install-imenu t)
 '(jedi:key-complete [C-/])
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.milkbox.net/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(scroll-margin 3)
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
 )

