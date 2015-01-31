;; Some packages would be handy
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(clojure-mode
    clj-refactor
    clojure-mode-extra-font-locking
    cider
    ido-ubiquitous
    smex
    rainbow-delimiters
    rainbow-identifiers
    smartparens
    magit
    yasnippet
    company))

(when (member system-type '(darwin gnu/linux))
  (add-to-list 'my-packages 'exec-path-from-shell))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(when (member system-type '(darwin gnu/linux))
  (exec-path-from-shell-initialize))

;; Path to dependencies
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path (concat user-emacs-directory "vendor"))
(add-to-list 'load-path (concat user-emacs-directory "custom"))
(add-to-list 'load-path site-lisp-dir)

;; A fresh start
(require 'better-defaults)

;; Disable splash screen
(setq inhibit-startup-message t)

;; MacOS specific key bindings
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char)) ;; sets fn-delete to be right-delete

;; Use home dir as default dir
(setq default-directory (concat (getenv "HOME") "/"))

(load "setup-clojure.el")

;; Nice theme plx
(load "themes.el")

;; Load some snippets
(when (require 'yasnippet nil 'noerror)
  (progn
    (yas/load-directory "~/.emacs.d/snippets")
    (yas-global-mode t)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1a85b8ade3d7cf76897b338ff3b20409cb5a5fbed4e45c6f38c98eee7b025ad4" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
