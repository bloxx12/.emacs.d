;;; init-vcs.el --- Version control systems -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(use-package transient
  :ensure t)

(use-package magit
  :ensure t
  :after transient
  :bind
  (("C-c m s" . 'magit-status))
   ("C-c m l" . 'magit-log))

(provide 'init-vcs)
;;; init-vcs.el ends here
