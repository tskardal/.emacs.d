(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(defun package-require (pkg)
  "Install the package if it's not already installed"
  (when (not (package-installed-p pkg))
    (package-install pkg)))

(provide 'setup-package)
