;; Some packages would be handy
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

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

(if (eq system-type 'darwin)
    (add-to-list 'my-packages 'exec-path-from-shell))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

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
