;; Setup load-path
(setq elisp-dir (expand-file-name "elisp" user-emacs-directory))
(add-to-list 'load-path elisp-dir)

;; No splash screen
(setq inhibit-startup-message t)

(require 'better-defaults)
(require 'setup-package)
(require 'setup-mac)
