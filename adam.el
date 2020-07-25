
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(require 'init-package)
(require 'init-ui.el)
(require 'init-better-defaults)
(require 'init-keybindings.el)
(require 'org) 


(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(load-file custom-file)

;; delete what you have chosen
(delete-selection-mode 1)
