(require 'setup-package)

(package-require 'haskell-mode)
(package-require 'flycheck-haskell)

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

(provide 'setup-haskell)
