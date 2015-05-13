(require 'setup-package)

(package-require 'clojure-mode)
(package-require 'clj-refactor)
(package-require 'cider)
(package-require 'smartparens)
(package-require 'rainbow-delimiters)
(package-require 'yasnippet)

(add-hook
 'cider-mode-hook
 (lambda ()
   (eldoc-mode 1)
   (company-mode 1)
   (setq nrepl-hide-special-buffers t)))

(add-hook 'cider-repl-mode-hook #'company-mode)

(add-hook
 'clojure-mode-hook
 (lambda ()
   (clj-refactor-mode 1)
   (cljr-add-keybindings-with-prefix "C-c C-m")
   (smartparens-strict-mode 1)
   (sp-use-smartparens-bindings)
   (rainbow-delimiters-mode 1)
   (yas/minor-mode 1)))

(provide 'setup-clojure)
