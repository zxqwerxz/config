(add-to-list 'load-path "~/.emacs.d")
(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))

(package-initialize)
(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-initialize)
(color-theme-jsc-dark)

(setq-default truncate-lines 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (wheatgrass)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set 'yes-or-no-p 'y-or-no-p)
(setq-default c-basic-offset 4)
(setq sgml-basic-offset 4)

(require 'linum)
(line-number-mode 1)
(column-number-mode 1)
(global-linum-mode 1)


