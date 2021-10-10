;; Emacs Configuration
;; Paolo Anzani

;; Set minibuffer size
(setq inhibit-startup-message t)

(defun my-minibuffer-setup ()
       (set (make-local-variable 'face-remapping-alist)
          '((default :height 1.5))))

(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup)

;; Force horizontal split

(setq split-width-threshold 1 )
(setq split-width-threshold nil)

;; Set deafult font
(add-to-list 'default-frame-alist
             '(font . "Menlo-14"))

;; Disable UI elements
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)

(set-fringe-mode 10)

;; Maximize window
(toggle-frame-maximized)

;; Disable backup files

(setq make-backup-files nil)

;; Load Theme

(load-theme 'tango-dark)
;;(load-theme 'greiner t)

;; Afternoon
;;(load-theme 'afternoon t)
;;(enable-theme 'afternoon)

;; Ample
;;(load-theme 'ample t t)
;;(enable-theme 'ample)

;; Enable relative line numbers

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

;; Brackets colorizing

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; Enable visual bell

(setq visible-bell 1)

;; Evil Mode

(require 'evil)
(evil-mode 1)

;; Disable Evil mode in shell

(evil-set-initial-state 'eshell-mode 'emacs)

;; MELPA repo config

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; Other

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("cf861f5603b7d22cb3545a7c63b2ee424c34d8ed3b3aa52d13abfea4765cffe7" "e6e07c74bee845f48da5f46843a241d71d4ee3bf945fb506c05a08e5c872df3e" default))
 '(package-selected-packages
   '(auto-virtualenv vscode-dark-plus-theme markdown-mode afternoon-theme magit rainbow-delimiters ample-theme exec-path-from-shell evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dired-directory ((t (:inherit font-lock-function-name-face))))
 '(mode-line ((t (:background "#d3d7cf" :foreground "#2e3436" :box (:line-width -1 :style released-button) :height 1.5)))))

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
