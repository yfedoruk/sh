(require 'tabbar nil t)
(tabbar-mode)


; ++++++++++++++++++ Define Functions


(defun force-mode-line-update (&optional all)
   "Force the mode-line of the current buffer to be redisplayed. With optional non-nil ALL, force redisplay of all mode-lines."
   (if all (save-excursion (set-buffer (other-buffer))))
   (set-buffer-modified-p (buffer-modified-p))
   (setq tabbar-current-tabset-default-list (tabbar-tabs tabbar-current-tabset)) ;; 追加
   (setq tabbar-current-tabset-default (tabbar-current-tabset)) ;; 追加
   )
(defun tabbar-goto-nth-buffer (num)
  (interactive)
  (setq tabbar-current-tabset-default-list (tabbar-tabs tabbar-current-tabset)) 
  (princ tabbar-current-tabset-default-list);
  (switch-to-buffer (car (nth num tabbar-current-tabset-default-list)))
)
;;Ignore を無視する
(defun tabbar-change-group (&optional backward)
  (interactive)
  (let ((conf t) tab tabs (ctabset (tabbar-current-tabset t)) selected setlist)
    (setq selected (tabbar-selected-tab ctabset))
    (while conf 
      (when tab (setq selected tab))
      (setq setlist (tabbar-get-tabsets-tabset)
	    tab (tabbar-tab-next setlist selected backward))
      (unless tab
          (setq tabs (tabbar-tabs setlist)
                tab (car (if backward (last tabs 1) tabs)))
	)
; 判定
      (unless (member tab (tabbar-ignore-group-tabs tabbar-ignore-group-depth)) (setq conf nil))
      )
      (tabbar-click-on-tab tab)
      (setq tabbar-current-tabset-default-list (tabbar-tabs (tabbar-current-tabset t)))
))

(defun tabbar-ignore-group-tabs (depth)
  (interactive)
  (let ((tablist nil))
    (if depth 
	(progn 	(and 
		 (not (<= depth 1))
		 (>= depth 2) (setq tablist (tabbar-tabs (tabbar-get-tabset "Ignore")))
		 (>= depth 3) (setq tablist (append tablist 
						    (tabbar-tabs (tabbar-get-tabset "Lisp-Sh"))
						    (tabbar-tabs (tabbar-get-tabset "Common"))))
		 )
		)
      (setq tablist (tabbar-tabs (tabbar-get-tabset "Ignore"))))
    tablist
    ))

(defun tabbar-buffer-groups ()
  "Return the list of group names BUFFER belongs to.
Return only one group for each buffer."
  (list
   (cond
    ((string-equal "*" (substring (buffer-name) 0 1))
     "Emacs Buffer"
     )
    ((eq major-mode 'dired-mode)
     "Dired"
     )
    (t
     "User Buffer"
     )
    )))
(setq tabbar-buffer-groups-function 'tabbar-buffer-groups)


; +++++++++++++ Define Variables


(defvar tabbar-ignore-group-depth 2)
(defvar tabbar-current-tabset-default-list nil)
(defvar tabbar-current-tabset-default (tabbar-current-tabset))


; ++++++++++++++++ Key Binds


(global-set-key [(control tab)] 'tabbar-change-group)					; C-t
; (global-set-key [(S-iso-lefttab)] '(lambda () (interactive) (tabbar-change-group t)))					; Don't use it! Shift + tab need for moving text in select mode. 
(global-set-key "\261" '(lambda () (interactive) (tabbar-goto-nth-buffer 0)))
(global-set-key "\262" '(lambda () (interactive) (tabbar-goto-nth-buffer 1)))
(global-set-key "\263" '(lambda () (interactive) (tabbar-goto-nth-buffer 2)))
(global-set-key "\264" '(lambda () (interactive) (tabbar-goto-nth-buffer 3)))
(global-set-key "\265" '(lambda () (interactive) (tabbar-goto-nth-buffer 4)))
(global-set-key "\266" '(lambda () (interactive) (tabbar-goto-nth-buffer 5)))
(global-set-key "\267" '(lambda () (interactive) (tabbar-goto-nth-buffer 6)))
(global-set-key "\M-8" '(lambda () (interactive) (tabbar-goto-nth-buffer 7)))
(global-set-key "\M-9" '(lambda () (interactive) (tabbar-goto-nth-buffer 8)))

;; F4 で tabbar-mode
;(global-set-key [f4] 'tabbar-mode)
