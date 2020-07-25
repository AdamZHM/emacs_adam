(require 'org)
(setq org-src-fontify-natively 1)

;; 设置默认 Org Agenda 文件目录
;; 需要去这个文件夹下写org文件,进入时候是用Meta-x org-mode切换模式
(setq org-agenda-files '("~/org"))

;; 设置 org-agenda 打开快捷键
;; C-c C-s start a item  C-c C-s set the ddl
(global-set-key (kbd "C-c a") 'org-agenda)

(provide 'init-org)
