;;; init-editor.el --- sane settings for the editor -*- lexical-binding: t -*-
;;
;; Copyright @ 2024 Charlie Root
;;
;; Author Charlie Root <charlie@charlieroot.dev>
;; URL: https://charlieroot.dev

;;; Commentary:

;; This file sets sane settings for the Emacs core editor.

;;; Licence:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code

(setq-default intent-tabs-mode nil)
(setq-default tab-width 4)

;; delete the current selection with a keypress
(delete-selection-mode t)

;; save any backup files in /tmp/ to keep projects clean
 (setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))
    (setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))

;; revert buffers automatically when the corresponding files change in the backgound
(global-auto-revert-mode t)

;; disable highlighting the current line.
;; this is a matter of preference, I prefer keeping it off.
(global-hl-line-mode -1)

(use-package editorconfig
  :diminish
  :config
  (editorconfig-mode 1))



(provide 'init-editor)
;;; init-editor.el ends here
