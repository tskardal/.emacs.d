(setq is-mac (equal system-type 'darwin))

(when is-mac
  (package-require 'exec-path-from-shell)
  (exec-path-from-shell-initialize)

  ;; change command to meta, and ignore option to use weird Norwegian keyboard
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta)
  (setq ns-function-modifier 'hyper)
  
  ;; Norwegian mac-keyboard alt-keys)
  (define-key key-translation-map (kbd "s-8") (kbd "["))
  (define-key key-translation-map (kbd "s-(") (kbd "{"))
  (define-key key-translation-map (kbd "s-9") (kbd "]"))
  (define-key key-translation-map (kbd "s-)") (kbd "}"))
  (define-key key-translation-map (kbd "s-7") (kbd "|"))
  (define-key key-translation-map (kbd "s-/") (kbd "\\"))
  (define-key key-translation-map (kbd "M-s-7") (kbd "M-|")))

(provide 'setup-mac)
