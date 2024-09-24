;;; init-corfu.el --- autocompletion in Emacs -*- lexical-binding: t -*-
;; Author:
;; URL: 
;;; Commentary:


;;; License:


;;; Code:

(use-package corfu
  :init
  (global-corfu-mode)
   ;; TAB-and-Go customizations
  :custom
  (corfu-auto t)
  (corfu-auto-delay 0.2)
  (corfu-cycle t)           ;; Enable cycling for `corfu-next/previous'
  (corfu-preselect 'prompt) ;; Always preselect the prompt

  ;; Use TAB for cycling, default is `corfu-complete'.
  :bind
  (:map corfu-map
        ("TAB" . corfu-next)
        ([tab] . corfu-next)
        ("S-TAB" . corfu-previous)
        ([backtab] . corfu-previous)))

(provide 'init-corfu)
