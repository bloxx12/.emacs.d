;;; init-god.el --- God mode for emacs -*- lexical-binding: t -*-
;;; Commentary:


;;; Code

(use-package god-mode
  :ensure t
  :config
  (defun my-god-mode-update-cursor-type ()
  (setq cursor-type (if (or god-local-mode buffer-read-only) 'box 'bar)))
  (add-hook 'post-command-hook #'my-god-mode-update-cursor-type)
  (god-mode)
  (define-key god-local-mode-map (kbd "i") #'god-local-mode)
  (define-key god-local-mode-map (kbd ".") #'repeat)
  :bind
  ("<escape>" . #'god-local-mode)  )

(provide 'init-god)
