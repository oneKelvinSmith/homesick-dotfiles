;;; personal.el -- personal configuration file

;;; Commentary:
;;; Intended for use with emacs prelude (http://batsov.com/prelude/)

;;; Code:

(add-to-list 'default-frame-alist '(height . 60))
(add-to-list 'default-frame-alist '(width . 100))

(scroll-bar-mode -1)

(add-to-list 'custom-theme-load-path "~/Code/monokai-emacs")
(load-theme 'monokai t)

(set-face-attribute 'default nil
                    :family "DejaVu Sans Mono"
                    :height 120)

(setq-default mac-command-modifier 'super)
(setq-default mac-option-modifier 'meta)

(setq-default tab-width 2)
(setq-default cursor-type 'bar)
(setq-default whitespace-line-column 140)

(provide 'personal)
;;; personal.el ends here
