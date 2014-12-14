;; Path to dependencies
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path (concat user-emacs-directory "vendor"))
(add-to-list 'load-path (concat user-emacs-directory "custom"))
(add-to-list 'load-path site-lisp-dir)

;; A fresh start
(require 'better-defaults)
