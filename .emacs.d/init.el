;; theme and fonts
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
(load-theme 'gotham t)
(set-face-attribute 'default nil :height 130)
(global-linum-mode t)

;; hide toolbar 
(tool-bar-mode -1)

;; tab width
(setq-default tab-width 2) 
(setq tab-width 2)
;(defvaralias 'c-basic-offset 'tab-width)
;(defvaralias 'cperl-indent-level 'tab-width)

;; make tab key do indent first then completion.
(setq-default tab-always-indent 'complete)
