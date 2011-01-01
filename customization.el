(defun save-buffers-and-shell-check()
  "Save unsaved buffers and shell out"
  (interactive)
  (if (string= (buffer-name) "*shell*")
      (switch-to-buffer (other-buffer))
    `(,(save-some-buffers)
      ,(shell))))

(provide 'customization)