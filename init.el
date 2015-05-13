;; Setup load-path
(setq elisp-dir (expand-file-name "elisp" user-emacs-directory))
(add-to-list 'load-path elisp-dir)

;; No splash screen
(setq inhibit-startup-message t)

(require 'better-defaults)
(require 'setup-package)
(require 'setup-git)
(require 'setup-mac)
(package-require 'company)
(require 'setup-clojure)

;; I want path from shell on both MacOS and GNU\Linux
(package-require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; Hit C-c <tab> to auto-indent the entire buffer you're in.
(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))
(global-set-key (kbd "C-c <tab>") 'indent-buffer)
