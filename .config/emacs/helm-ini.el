(quelpa '(helm :repo "emacs-helm/helm" :fetcher github :files ("*.el" "emacs-helm.sh")))
(quelpa '(helm-descbinds :repo "emacs-helm/helm-descbinds" :fetcher github))
(quelpa '(helm-gtags :repo "syohex/emacs-helm-gtags" :fetcher github :files ("helm-gtags.el")))
(quelpa '(helm-projectile :repo "bbatsov/projectile" :fetcher github :files ("helm-projectile.el")))
(require 'helm-config)
(setq helm-mode-handle-completion-in-region nil) ; don't use helm for `completion-at-point'
(helm-mode 1)
(helm-gtags-mode 1)
(helm-descbinds-mode)
(setq helm-idle-delay 0.1)
(setq helm-input-idle-delay 0.1)
(setq helm-buffer-max-length 50)
(setq helm-M-x-always-save-history t)
(setq helm-buffer-details-flag nil)
(add-to-list 'helm-completing-read-handlers-alist '(org-refile)) ; helm-mode does not do org-refile well
(add-to-list 'helm-completing-read-handlers-alist '(org-agenda-refile)) ; same goes for org-agenda-refile