;;; init.el --- The core of my configuration -*- lexical-binding: t -*-
;;
;; Copyright @ 2024 Charlie Root
;;
;; Author Charlie Root <charlie@charlieroot.dev>
;; URL: https://charlieroot.dev

;;; Commentary:

;; Welcome, dear traveler! This is my personal emacs configuration,
;; made from scratch and with love. Feel free to check things out,
;; you can also take code of course as long as you respect my license.

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

;; The entrypoint for all of my configuration files
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; set the garbage collection threshold higher, this makes startup a lot faster.
(setq gc-cons-threshold (* 128 1024 1024))

(setq custom-file (locate-user-emacs-file "custom.el"))



;; Initialize elpaca, my main package manager.
(require 'init-elpaca)

;; I use diminish to make my packages shut up, I load it here to ensure it's available.
(use-package diminish)

;; Packages
(require 'init-god)
(require 'init-ui)
(require 'init-vcs)
(require 'init-themes)
(require 'init-corfu)
(require 'init-editor)
(require 'init-programming)
(require 'init-global-keybindings)
(require 'init-vertico)
(require 'init-languages)
(require 'init-org)

;; use gmch to fix startup
(use-package gcmh
  :diminish gcmh-mode
  :init (setq gc-cons-threshold most-positive-fixnum)
  :hook (emacs-startup . gcmh-mode)
  :custom
  (gcmh-idle-delay 'auto)
  (gcmh-auto-idle-delay-factor 10)
  (gcmh-high-cons-threshold (* 16 1024 1024)))
;;; init.el ends here
