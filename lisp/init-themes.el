;;; init-themes.el --- settings for languages -*- lexical-binding: t -*-
;;
;; Copyright @ 2024 Charlie Root
;;
;; Author: Charlie Root <charlie@charlieroot.dev>
;; URL: https://charlieroot.dev

;;; Commentary:

;; This file manages the theme(s) I use for emacs.

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

(use-package nano-theme)
(use-package modus-themes)
(use-package color-theme-sanityinc-tomorrow)
(use-package moe-theme
  :config
  (load-theme 'nano-light t))

(provide 'init-themes)
;;; init-themes.el ends here

