;; Setup load-path
(setq elisp-dir (expand-file-name "elisp" user-emacs-directory))
(add-to-list 'load-path elisp-dir)

;; No splash screen
(setq inhibit-startup-message t)

;; No bells
(setq ring-bell-function 'ignore)

(require 'better-defaults)
(require 'setup-package)
(require 'setup-flycheck)
(require 'setup-git)
(require 'setup-mac)
(package-require 'company)
(require 'company)
(global-company-mode)
(require 'setup-clojure)
(require 'setup-haskell)
(require 'setup-purescript)
(require 'setup-js)

;; I want path from shell on both MacOS and GNU\Linux
(package-require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; Hit C-c <tab> to auto-indent the entire buffer you're in.
(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))
(global-set-key (kbd "C-c <tab>") 'indent-buffer)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("01ce486c3a7c8b37cf13f8c95ca4bb3c11413228b35676025fdf239e77019ea1" default)))
 '(js2-basic-offset 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'yasnippet)
(yas-global-mode 1)

(load-theme 'adwaita)
