;; Helper script for CI testing
(require 'package)
(package-initialize);; t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(package-refresh-contents)
(package-install 'htmlize)
(package-install 'org-plus-contrib) ; for whatever reason can't install org :(
(load-file "ox-twbs.el")
(find-file "example/eg0.org")
(org-twbs-export-to-html)
