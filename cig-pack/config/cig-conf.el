;; Stuart Sierra
;; http://thinkrelevance.com/blog/2013/06/04/clojure-workflow-reloaded
;; https://github.com/stuartsierra/reloaded
(defun nrepl-refresh ()
  (interactive)
  (set-buffer "*nrepl*")
  (goto-char (point-max))
  (insert "(clojure.tools.namespace.repl/refresh)")
  (nrepl-return))

(defun nrepl-reset ()
  (interactive)
  (set-buffer "*nrepl*")
  (goto-char (point-max))
  (insert "(user/reset)")
  (nrepl-return))

;; Custom font, trick from https://github.com/overtone/emacs-live/issues/25

;; (add-to-list 'default-frame-alist '(font . "Inconsolata 12"))
(add-to-list 'default-frame-alist '(font . "Anonymous Pro 11"))
;;(add-to-list 'default-frame-alist '(font . "PragmataPro 10"))
;;(add-to-list 'default-frame-alist '(font . "Consolas 11"))

;; enable strict mode for smartparens (ala paredit)
;;(smartparens-strict-mode t)

;; The REPL buffer name can also display the port on which the nREPL server is running. Buffer name will look like cider-repl project-name:port.
(setq nrepl-buffer-name-show-port t)

;; Make C-c C-z switch to the CIDER REPL buffer in the current window:
(setq cider-repl-display-in-current-window t)

;;The use of paredit when editing Clojure (or any other Lisp) code is highly recommended. You're probably using it already in your clojure-mode buffers (if you're not you probably should). You might also want to enable paredit in the REPL buffer as well:
(add-hook 'cider-repl-mode-hook 'paredit-mode)

;;smartparens is an excellent alternative to paredit. Many Clojure hackers have adopted it recently and you might want to give it a try as well. To enable smartparens in the REPL buffer use the following code:
;;(add-hook 'cider-repl-mode-hook 'smartparens-strict-mode)
