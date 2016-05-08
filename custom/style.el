;; enki: line numbers
(add-hook 'emacs-lisp-mode-hook #'linum-mode)
(add-hook 'c-mode-common-hook #'linum-mode)

;; enki: enable parentheses highlighting when in elisp mode
(add-hook 'emacs-lisp-mode-hook
	  (lambda () (show-paren-mode 1) ))
(add-hook 'c-mode-common-hook
	  (lambda () (show-paren-mode 1) ))

;; enki: dabbrev completion seems to consider newlines as word parts, force our own
(require 'dabbrev)
(setq dabbrev-abbrev-char-regexp "[a-zA-Z#_-1-9]")

;; set style to "linux"
;(setq c-default-style "linux")
;; show unncessary whitespace that can mess up your diff
;(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))
;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)
;; use space to indent by default
(setq-default indent-tabs-mode nil)
;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 4)
