;;(defun run-main-py(filename)
;;  "Runs the python file in the given directory"
;;  (interactive)
;;  (shell-command (concat "python" filename)))

;;buffer-file-name
;;(python-pytest-file FILE &optional ARGS)

(defun a-test-save-hook()
  "Test of save hook"
  (when (equal major-mode 'org-mode)
    (message "hello")))

(add-hook 'after-save-hook 'a-test-save-hook)

(setq user-full-name "iScreaMan23"
      user-mail-address "scream@theScreamTeam.xyz")

(setq doom-theme 'doom-tomorrow-night)
(setq doom-font (font-spec :family "monospace" :size 14))

(setq org-directory "~/.config/doom/org")

(setq display-line-numbers-type 'relative)
(menu-bar-mode -1)

;; (map! "C-i" 'better-jumper-jump-forward)

(map! :leader
      :n "h" 'evil-window-left
      :n "j" 'evil-window-down
      :n "k" 'evil-window-up
      :n "l" 'evil-window-right)

(map! :leader :n "SPC" 'next-buffer)

(map! :leader "g" 'magit)
