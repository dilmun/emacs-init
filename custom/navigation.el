;; enki: replace basic buffer list with the more capable ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; enki: enable windmove (shift + arrows to navigate windows)
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; enki: window resize
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; enki: activate Ido mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
