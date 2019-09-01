
;;; Use Python mode for bazel magic files.
(setq magic-mode-alist
      '(("BUILD" . python-mode)
	("WORKSPACE" . python-mode)))
