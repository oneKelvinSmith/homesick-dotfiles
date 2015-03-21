;;; personal.el -- personal configuration file

;;; Commentary:
;;; Intended for use with emacs prelude (http://batsov.com/prelude/)

;;; Code:

(scroll-bar-mode -1)

(set-face-attribute 'default nil
                    :foundry "apple"
                    :family "DejaVu Sans Mono"
                    :height 120)

(add-to-list 'custom-theme-load-path "~/Code/monokai-emacs")
(load-theme 'monokai t)

(setq cursor-type 'bar)
(setq tab-width 2)
(setq whitespace-line-column 140)

(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)

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

; (defadvice ruby-indent-line (after unindent-closing-paren activate)
;   "1TBS Closing Parenthesis.
; This function cause closing parenthesis to use the K&R indent style in 'ruby-mode'."
;   (let ((column (current-column))
;         indent offset)
;     (save-excursion
;       (back-to-indentation)
;       (let ((state (syntax-ppss)))
;         (setq offset (- column (current-column)))
;         (when (and (eq (char-after) ?\))
;                    (not (zerop (car state))))
;           (goto-char (cadr state))
;           (setq indent (current-indentation)))))
;     (when indent
;       (indent-line-to indent)
;       (when (> offset 0) (forward-char offset)))))

(provide 'personal)
;;; personal.el ends here
