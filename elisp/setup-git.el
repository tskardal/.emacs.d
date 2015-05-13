(require 'setup-package)

(package-require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

;; avoid displaying release note warning
(setq magit-last-seen-setup-instructions "1.4.0")

(provide 'setup-git)
