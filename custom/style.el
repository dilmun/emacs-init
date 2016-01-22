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
