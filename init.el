;; Setup load-path
(setq elisp-dir (expand-file-name "elisp" user-emacs-directory))
(add-to-list 'load-path elisp-dir)

;; No splash screen
(setq inhibit-startup-message t)

(require 'better-defaults)
(require 'setup-package)
(require 'setup-mac)

;; I want path from shell on both MacOS and GNU\Linux
(package-require 'exec-path-from-shell)
(exec-path-from-shell-initialize)
