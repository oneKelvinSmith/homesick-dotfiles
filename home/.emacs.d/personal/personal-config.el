;;; personal-config.el -- personal configuration file

;;; Commentary:

;;; Code:

;; disable scroll bars
(scroll-bar-mode -1)

;; set font
(set-face-attribute 'default nil
                    :foundry "apple"
                    :family "Source_Code_Pro"
                    :height 120)

(require 'ace-window)

;; set cursor to bar
(setq cursor-type 'bar)
(setq whitespace-line-column 140)

;; set theme to monokai
(add-to-list 'custom-theme-load-path "~/Code/emacs/monokai-emacs")
(load-theme 'monokai t)

;; swap prelude keybindings to match the rest of the system
(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)

;; multiple cursors mode
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; enable auto-complete mode
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/emacs.d/dict")
(ac-config-default)
(global-auto-complete-mode t)
(setq ac-auto-start )
(ac-set-trigger-key "TAB")
(provide 'personal-config)
;;; personal-config.el ends here
