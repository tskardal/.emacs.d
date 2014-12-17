(add-hook 'clojure-mode-hook
          (lambda ()
            (require 'smartparens)
            (require 'smartparens-config)
            (smartparens-mode)
            (sp-use-smartparens-bindings)))
