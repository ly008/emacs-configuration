;; global key for org-mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; color-theme
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/")
(require 'color-theme)
(color-theme-initialize)
(color-theme-pok-wog)

;; disable default C-SPC key
(global-set-key (kbd "C-SPC") nil)

;; use default gnu style, set indent to 4
(setq c-default-style "linux"
      c-basic-offset 4
      tab-width 4
      indent-tabs-mode t)
;; see the syntax at point use "C-c C-o"
;; automatic indentation
;; newline will be inserted automatically
(add-hook 'c-mode-common-hook '(lambda () (c-toggle-auto-state 1)))
;; delete all characters until next non-whitespace when delete whitespace
(add-hook 'c-mode-common-hook '(lambda () (c-toggle-hungry-state 1)))
;; from www.emacswiki.org/emacs/IndentingC

;; global set key
(global-set-key [f5] 'shell)

;; org mode, truncate line
(add-hook 'org-mode-hook '(lambda () (setq truncate-lines nil)))

;; linum-mode
(global-linum-mode 1)

;; built-in backup settings
(setq backup-by-copying t
      delete-old-versions nil
      kept-new-versions 6
      kept-old-versions 2
      version-control t)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote ((".*" . "~/.saves"))))
 '(buffer-offer-save nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
