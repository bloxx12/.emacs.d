

(use-package lsp-mode
  :hook (c-mode . lsp-mode))
(use-package lsp-ui
  :commands lsp-ui-mode
  :custom (lsp-ui-sideline-show-diagnostics))

(provide 'init-lsp)
