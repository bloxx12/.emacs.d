

;; use ace-window to move through windows
(use-package ace-window
  :bind
  ("M-o" . 'ace-window))

;; Crux
(use-package crux
  :bind
  (([remap move-beginning-of-line] . #'crux-move-beginning-of-line)
   ("C-c D" . #'crux-delete-file-and-buffer)
   ("C-c d" . #'crux-duplicate-current-line-or-region)
   ("C-c k" . #'crux-kill-other-buffers)
   ("C-c i" . #'crux-find-user-init-file)
   ("C-<backspace>" . #'crux-kill-whole-line


)
   ("S-RET" . #'crux-smart-open-line )))
  


(provide 'init-global-keybindings)
