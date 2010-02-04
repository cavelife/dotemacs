(defun color-theme-midnight ()
  "Color theme by Gordon Messmer, created 2001-02-07.
A color theme inspired by a certain IDE for Windows.  It's all from memory,
since I only used that software in college.

If you want to modify the font as well, you should customize variable
`color-theme-legal-frame-parameters' to \"\\(color\\|mode\\|font\\|height\\|width\\)$\".
The default setting will prevent color themes from installing specific
fonts."
  (interactive)
  (color-theme-install
   '(color-theme-midnight
     ((font . "fixed")
      (width . 130)
      (height . 50)
      (background-color . "black")
      (foreground-color . "grey85")
      (background-mode . dark)
      (mouse-color . "grey85")
      (cursor-color . "grey85"))
     (default ((t (nil))))
     (font-lock-comment-face ((t (:italic t :foreground "grey60"))))
     (font-lock-string-face ((t (:foreground "Magenta"))))
     (font-lock-keyword-face ((t (:foreground "Cyan"))))
     (font-lock-warning-face ((t (:bold t :foreground "Pink"))))
     (font-lock-constant-face ((t (:foreground "OliveDrab"))))
     (font-lock-type-face ((t (:foreground "DarkCyan"))))
     (font-lock-variable-name-face ((t (:foreground "DarkGoldenrod"))))
     (font-lock-function-name-face ((t (:foreground "SlateBlue"))))
     (font-lock-builtin-face ((t (:foreground "SkyBlue"))))
     (highline-face ((t (:background "grey12"))))
     (setnu-line-number-face ((t (:background "Grey15" :foreground "White" :bold t))))
     (show-paren-match-face ((t (:background "grey30"))))
     (region ((t (:background "grey15"))))
     (highlight ((t (:background "blue"))))
     (secondary-selection ((t (:background "navy"))))
     (widget-field-face ((t (:background "navy"))))
     (widget-single-line-field-face ((t (:background "royalblue")))))) )

(defun color-theme-midnight-dawn ()
  (interactive)
  (color-theme-install
   '(color-theme-midnight
     (;(font . "fixed")
      (width . 130)
      (height . 50)
      (background-color . "black")
      (foreground-color . "grey85")
      (background-mode . dark)
      (mouse-color . "grey85")
      (cursor-color . "grey85"))
     (default ((t (nil))))
     (font-lock-comment-face ((t (:italic t :foreground "grey60"))))
     (font-lock-string-face ((t (:foreground "LightSalmon3"))))
     (font-lock-function-name-face ((t (:foreground "PaleGreen3"))))
     (font-lock-keyword-face ((t (:foreground "SteelBlue1"))))
     (font-lock-warning-face ((t (:bold t :foreground "LightPink"))))
     (font-lock-constant-face ((t (:foreground "OliveDrab"))))
     (font-lock-type-face ((t (:foreground "DarkCyan"))))
     (font-lock-variable-name-face ((t (:foreground "DarkGoldenrod"))))
     (font-lock-builtin-face ((t (:foreground "SkyBlue"))))
     (highline-face ((t (:background "grey12"))))
     (setnu-line-number-face ((t (:background "Grey15" :foreground "White" :bold t))))
     (show-paren-match-face ((t (:background "grey30"))))
     (region ((t (:background "grey18"))))
     (highlight ((t (:background "blue"))))
     (secondary-selection ((t (:background "navy"))))
     (widget-field-face ((t (:background "navy"))))
     (widget-single-line-field-face ((t (:background "royalblue"))))

     (ecb-analyse-bucket-element-face ((t (:foreground "brown" :height 1.0))))
     (ecb-analyse-bucket-node-face ((t (:bold t :weight bold :height 1.0))))
     (ecb-analyse-face ((t (:background "cornflower blue" :foreground "yellow"))))
     (ecb-analyse-general-face ((t (:height 1.0))))
     (ecb-bucket-node-face ((t (:bold t :weight bold :height 1.0))))
     (ecb-default-general-face ((t (:height 1.0))))
     (ecb-default-highlight-face ((t (:background "Purple4" :foreground "Olive"))))
     (ecb-directories-general-face ((t (:height 1.0))))
     (ecb-directory-face ((t (:background "Purple4" :foreground "Olive"))))
     (ecb-directory-not-accessible-face ((t (:foreground "gray60" :height 1.0))))
     (ecb-history-face ((t (:background "Purple4" :foreground "Olive"))))
     (ecb-history-general-face ((t (:height 1.0))))
     (ecb-method-face ((t (:background "Purple4" :foreground "Olive"))))
     (ecb-method-non-semantic-face ((t (:foreground "brown" :height 1.0))))
     (ecb-methods-general-face ((t (:height 1.0))))
     (ecb-mode-line-data-face ((t (nil))))
     (ecb-mode-line-prefix-face ((t (:foreground "forestgreen"))))
     (ecb-mode-line-win-nr-face ((t (:bold t :weight bold))))
     (ecb-source-face ((t (:background "Purple4" :foreground "Olive"))))
     (ecb-source-in-directories-buffer-face ((t (:foreground "medium blue" :height 1.0))))
     (ecb-source-read-only-face ((t (:italic t :slant italic))))
     (ecb-sources-general-face ((t (:height 1.0))))
     (ecb-tag-header-face ((t (:background "SeaGreen1"))))
     (ecb-tree-guide-line-face ((t (:foreground "grey" :height 1.0))))
     (ecb-type-tag-class-face ((t (:bold t :weight bold))))
     (ecb-type-tag-enum-face ((t (:bold t :weight bold))))
     (ecb-type-tag-group-face ((t (:bold t :foreground "dim gray" :weight bold))))
     (ecb-type-tag-interface-face ((t (:bold t :weight bold))))
     (ecb-type-tag-struct-face ((t (:bold t :weight bold))))
     (ecb-type-tag-typedef-face ((t (:bold t :weight bold))))
     (ecb-type-tag-union-face ((t (:bold t :weight bold))))
  )))
