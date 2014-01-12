;;; rails-config.el -- ruby on rails configuration
;;
;;; Commentary:
;;  personal rails environment for Emacs using Github repositories I've forked
;;  as well as packages included via the ELPA.
;;
;;; Code:

;; superfluous (possibly) requirement of ruby mode
(require 'ruby-mode)

;; enhanced ruby mode
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
(remove-hook 'enh-ruby-mode-hook 'erm-define-faces)

;; use 1TBS for ruby code
(defadvice ruby-indent-line (after unindent-closing-paren activate)
  "1TBS Closing Parenthesis.
This function cause closing parenthesis to use the K&R indent style in 'ruby-mode'."
  (let ((column (current-column))
        indent offset)
    (save-excursion
      (back-to-indentation)
      (let ((state (syntax-ppss)))
        (setq offset (- column (current-column)))
        (when (and (eq (char-after) ?\))
                   (not (zerop (car state))))
          (goto-char (cadr state))
          (setq indent (current-indentation)))))
    (when indent
      (indent-line-to indent)
      (when (> offset 0) (forward-char offset)))))

;; enable ido for rinari
(require 'ido)
(ido-mode t)

;; enable rinari
(require 'rinari)
(global-rinari-mode)

;;; rhtml mode
(require 'rhtml-mode)

;; enable rspec mode
(require 'rspec-mode)

;; enable haml mode
(require 'haml-mode)

;; enable yaml mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; enable sass mode
(require 'sass-mode)

(provide 'rails-config)
;;; rails-config.el ends here
