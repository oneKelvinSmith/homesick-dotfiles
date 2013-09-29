;;; rails-config.el -- ruby on rails configuration
;;
;;; Commentary:
;;  personal rails environment for Emacs using Github repositories I've forked
;;  as well as packages included via the ELPA.
;;
;;; Code:

;; superfluous (possibly) requirement of ruby mode
(require 'ruby-mode)

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

;; enable inf-ruby with pry irb
(add-to-list 'inf-ruby-implementations '("pry" . "pry -f"))
(setq inf-ruby-default-implementation "pry")
(setq inf-ruby-first-prompt-pattern "^\\[[0-9]+\\] pry\\((.*)\\)> *")
(setq inf-ruby-prompt-pattern "^\\[[0-9]+\\] pry\\((.*)\\)[>*\"'] *")

;; enable ido for rinari
(require 'ido)
(ido-mode t)

;; enable rinari
;; (add-to-list 'load-path "~/.emacs.d/vendor/rinari")
(require 'rinari)
(global-rinari-mode)

;;; rhtml mode
;; (add-to-list 'load-path "~/.emacs.d/vendor/rhtml")
(require 'rhtml-mode)

;; enable rspec mode
;; (add-to-list 'load-path "~/.emacs.d/vendor/rspec")
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
