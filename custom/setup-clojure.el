(add-hook 'clojure-mode-hook
          (lambda ()
            (smartparens-strict-mode)
            (sp-use-smartparens-bindings)))

(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
