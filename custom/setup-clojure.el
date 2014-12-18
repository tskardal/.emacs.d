(add-hook 'clojure-mode-hook
          (lambda ()
            (smartparens-strict-mode)
            (sp-use-smartparens-bindings)))

(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

(require 'clj-refactor)
(add-hook 'clojure-mode-hook (lambda ()
                               (clj-refactor-mode 1)
                               (cljr-add-keybindings-with-prefix "C-c C-m")))
