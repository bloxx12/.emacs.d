;;; init-vcs.el --- Version control systems -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package transient
  :ensure t)

(use-package magit
  :ensure t
  :after transient
  :bind
  ("C-x g" . 'magit-status))
(provide 'init-vcs)
;;; init-vcs.el ends here
