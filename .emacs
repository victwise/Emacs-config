(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 	
;; Las siguiente l�neas son siempre necesarias. Elige
;; tus propias claves
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(setq visible-bell t)
(setq c-default-style "bsd")
(setq c-basic-offset 6)	


(global-set-key [(shift f1)] 'call-last-kbd-macro)



					; start package.el with emacs
(require 'package)

				       ;add MELPA to repository list
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
					; initialize package.el
(package-initialize)
					; start auto-complete with emacs
(require 'auto-complete)
					;do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)
					;start yasnippet with emacs
(require 'yasnippet)
(yas-global-mode 1)

					;let's define a function which initializes auto-complete-c-headers and gets called  for c/c++ hooks
(defun my:ac-c-header-init()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers))
					;now let's call this function from c/c++hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode 'my:ac-c-header-init)
