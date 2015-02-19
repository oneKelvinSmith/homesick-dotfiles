;;; personal.el -- personal configuration file

;;; Commentary:

;;; Code:

(scroll-bar-mode -1)

(set-face-attribute 'default nil
                    :foundry "apple"
                    :family "Source_Code_Pro"
                    :height 120)

(require 'ace-window)

(setq cursor-type 'bar)
(setq whitespace-line-column 140)

;; (add-to-list 'custom-theme-load-path "~/Code/emacs/monokai-emacs")
;; (load-theme 'monokai t)

;; (setq mac-command-modifier 'super)
;; (setq mac-option-modifier 'meta)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/emacs.d/dict")
(ac-config-default)
(global-auto-complete-mode t)
(setq ac-auto-start )
(ac-set-trigger-key "TAB")

; (autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
; (add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
; (add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
; (remove-hook 'enh-ruby-mode-hook 'erm-define-faces)

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
