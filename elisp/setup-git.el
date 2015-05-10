(require 'setup-package)

(package-require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

(provide 'setup-git)
