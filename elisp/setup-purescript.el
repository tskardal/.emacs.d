;;; setup-purescript.el --- Settings for editing PureScript
;;; Code:

(package-require 'flycheck)
(package-require 'purescript-mode)
(package-require 'flycheck-purescript)

(require 'flycheck)

(flycheck-define-checker purs-check
  "Use pulp to flycheck PureScript code."
  :command ("pulp" "--monochrome" "build")
  :error-patterns
  ((error line-start
          (or (and "Error found:\n"
                   "at " (file-name) " line " line ", column " column
                       (one-or-more not-newline)
                       (message (one-or-more (not (in "*")))))
                  (and "Error at " (file-name) " line " line ", column " column
                       (one-or-more not-newline)
                       (message (one-or-more (not (in "*")))))

                  (and "psc: " (one-or-more not-newline) "\n"
                       (message (one-or-more not-newline) "\n")
                       "at \"" (file-name) "\" (line " line ", column " column ")")
                  (and "Unable to parse module:\n"
                       "  \"" (file-name) "\" (line " line ", column " column "):\n"
                       (message (one-or-more not-newline) "\n"
                                (one-or-more not-newline) "\n"
                                (one-or-more not-newline) "\n"))
                  )

              line-end
              ))
      :modes purescript-mode)

(add-to-list 'flycheck-checkers 'purs-check)

(add-hook 'purescript-mode-hook 'turn-on-purescript-indentation)
(add-hook 'purescript-mode-hook 'flycheck-mode)


(provide 'setup-purescript)
;;; setup-purescript.el ends here
