;;; packages.el -- include packages

;;; Commentary:
;;;

;;; Code:

(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

(use-package ag
  :ensure t)

(use-package dash-at-point
  :bind (("s-C-h" . dash-at-point))
  :ensure t)

(use-package multiple-cursors
  :ensure t
  :bind (("C-S-c C-S-c" . mc/edit-lines)
         ("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-c C-<" . mc/mark-all-like-this)))

(use-package robe
  :ensure t)

(use-package enh-ruby-mode
  :ensure t
  :mode ("\\.rb$" . enh-ruby-mode)
  :interpreter ("ruby" . enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook 'robe-mode)
(remove-hook 'enh-ruby-mode-hook 'erm-define-faces)

(use-package rspec-mode
  :ensure t)

(use-package sass-mode
  :ensure t)

(provide 'packages)
;;; packages.el ends here
