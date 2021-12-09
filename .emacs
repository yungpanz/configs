;;;; Emacs Configuration File
;;;; Paolo Anzani <p.anzani@campus.unimib.it>

;; Disable backup files
(setq make-backup-files nil)

;; Disable scroll bar
(scroll-bar-mode -1)

;; Set deafult font
(add-to-list 'default-frame-alist
             '(font . "Menlo-18"))

;; Default shell
(setq-default explicit-shell-file-name "/bin/bash")

;; Load prolog-mode library
(load-library "prolog")
(setq prolog-program-name "/usr/local/bin/swipl")

;; Switch to dark theme
(defun switch-dark ()
  (interactive)
  (load-theme 'tango-dark))
(global-set-key (kbd "<f5>") 'switch-dark)

;; Switch to light theme
(defun switch-light ()
  (interactive)
  (disable-theme 'tango-dark))
(global-set-key (kbd "<f6>") 'switch-light)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

