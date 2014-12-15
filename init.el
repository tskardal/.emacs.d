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
