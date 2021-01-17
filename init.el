(require 'package)

(defvar scratch-file
  (expand-file-name "scratch.el" user-emacs-directory))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(setq use-package-always-ensure t)

(setq package-archives nil)

(package-initialize)

(if (file-exists-p custom-file) (load custom-file))

(org-babel-load-file "~/.emacs.d/emacs.org")

(if (file-exists-p scratch-file) (load scratch-file))
