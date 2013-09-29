;;; personal-config.el -- personal configuration file

;;; Commentary:

;;; Code:

(defun in-terminal ()
  "Return true if in a terminal."
  (not (display-graphic-p)))

;; disable scroll bars
(scroll-bar-mode -1)

;; set cursor to bar
(setq cursor-type 'bar)
(setq whitespace-line-column 140)

;; set theme to monokai
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/monokai-emacs")
(load-theme 'monokai t)

;; swap prelude keybindings to match the rest of the system
(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)

;; enable auto-complete mode
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/emacs.d/dict")
(ac-config-default)
(global-auto-complete-mode t)
(setq ac-auto-start nil)
(ac-set-trigger-key "TAB")

;; multiple cursors mode
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(provide 'personal-config)
;;; personal-config.el ends here
