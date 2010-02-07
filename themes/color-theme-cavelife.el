(defun color-theme-cavelife ()
  (interactive)
  (color-theme-install
   '(color-theme-cavelife
     ((background-color . "black")
      (foreground-color . "#E4E4E4")
      (background-mode . "black")
      (mouse-color . "green")
      (cursor-color . "green"))
     (default ((t (nil))))
     (font-lock-builtin-face ((t (:foreground "#f0e68c"))))                  ;; 빌트인 함수
     (font-lock-comment-delimiter-face ((t (:foreground "#green"))))
     (font-lock-comment-face ((t (:foreground "DarkGray" ))))
     (font-lock-constant-face ((t (:foreground "red"))))
     (font-lock-doc-face ((t (:foreground "#green"))))
     (font-lock-doc-string-face ((t (:foreground "#9b859d"))))
     (font-lock-function-name-face ((t (:foreground "#ff7070" :bold t)))) ;; 사용자 함수명
     (font-lock-keyword-face ((t (:foreground "yellow" :bold t))))                ;; use, for 등등 예약어
     (font-lock-negation-char-face ((t (:foreground "#green"))))
     (font-lock-preprocessor-face ((t (:foreground "red"))))
     (font-lock-reference-face ((t (:foreground "8b98ab"))))
     (font-lock-regexp-grouping-backslash ((t (:foreground "#green"))))
     (font-lock-regexp-grouping-construct ((t (:foreground "#green"))))
     (font-lock-string-face ((t (:foreground "#ffa0a0"))))         ;; 문자열
     (font-lock-type-face ((t (:foreground "#F8F8F2"))))               ;; eq
     (font-lock-variable-name-face ((t (:foreground "#98fb98"))))  ;; 변수명
     (font-lock-warning-face ((t (:bold t :background "#420e09" :foreground "#eeeeee"))))

     (cperl-array-face ((t (:foreground "medium sea green"))))
     (cperl-hash-face ((t (:foreground "chocolate1"))))
     (cperl-nonoverridable-face ((t (:foreground "deep pink"))))


     (highline-face ((t (:background "grey12"))))
     (setnu-line-number-face ((t (:background "black" :foreground "#E4E4E4" :bold t))))
     (show-paren-match-face ((t (:background "grey30"))))
     (region ((t (:background "#404040"))))
     (highlight ((t (:bold t :slant italic))))
     (hl-line ((t (:background "#2D2D2D"))))
     (highline-face ((t (:background "#4a410d"))))
     (linum  ((t (:background "black" :foreground "gray80"))))
     (mode-line ((t (:background "Royal Blue" :foreground "white"))))

     (secondary-selection ((t (:background "navy"))))
     (widget-field-face ((t (:background "navy"))))
     (widget-single-line-field-face ((t (:background "royalblue")))))) )

