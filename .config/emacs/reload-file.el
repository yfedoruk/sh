; refresh file f5
(defun refresh-file ()
  (interactive)
  ;;(revert-buffer t t t)
  (revert-buffer t (not (buffer-modified-p)) t)
)
(global-set-key [f5] 'refresh-file)