;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")

;; load dot-mode File
;; see: http://wyrick.org/source/elisp/dot-mode/
;;      https://github.com/wyrickre/dot-mode
(live-add-pack-lib "dot-mode")
(require 'dot-mode)
(add-hook 'find-file-hooks 'dot-mode-on)
