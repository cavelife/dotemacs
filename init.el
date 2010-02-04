;;;###########################################################################
;;; 기본 el 파일 경로 지정
;;;###########################################################################
(setq load-path (cons (expand-file-name "~/.emacs.d/") load-path))

;;;###########################################################################
;;; 단축키
;;;###########################################################################
(global-set-key [(control c) ?c] 'mode-compile)
(global-set-key [(control c) ?k] 'mode-compile-kill)
(global-set-key [(meta ?{)] 'beginning-of-defun)
(global-set-key [(meta ?})] 'end-of-defun)
(global-set-key [(control c) ?d] 'shell)
(global-set-key [(control c) (control l)] 'goto-line)
(global-set-key "\C-cw" 'delete-trailing-whitespace)
(global-set-key "\C-ct" 'toggle-truncate-lines)

(global-set-key "\C-a" 'mark-whole-buffer)
(global-set-key [home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)
(global-set-key [\C-home] 'beginning-of-buffer)
(global-set-key [\C-end] 'end-of-buffer)


(setq x-select-enable-clipboard t)
(global-set-key [(shift delete)] 'clipboard-kill-region)
(global-set-key [(control insert)] 'clipboard-kill-ring-save)
(global-set-key [(shift insert)] 'clipboard-yank)

; 이늠 어캐쓰는지 잘모르겠음
(global-set-key "\M-RET" 'slime-fuzzy-complete-symbol)

;; 블럭단위 들여쓰기, 내어쓰기를 단축키로 잡어야하는데 몰라서 못잡고있...
;; (global-set-key [(control c) (control ?>)] 'indent-region)

;; whitespace-mode 토글키 필요

;;;###########################################################################
;;; compile-mode
;;;###########################################################################
(autoload 'mode-compile      "mode-compile" t)
(autoload 'mode-compile-kill "mode-compile" t)

;;;###########################################################################
;;; 자동완성
;;;###########################################################################

;; 관련 mode를 좀 파야할듯..
;; html, css에서도 자동완성 안되면 답답..

;;;###########################################################################
;;; yasnippet
;;;###########################################################################
(add-to-list 'load-path
             "~/.emacs.d/yasnippet-0.6.1c")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet-0.6.1c/snippets")

;;;###########################################################################
;;; cperl, perltidy
;;;###########################################################################
(defalias 'perl-mode 'cperl-mode)
'(cperl-close-paren-offset -4)
'(cperl-continued-statement-offset 4)
'(cperl-indent-level 4)
'(cperl-indent-parens-as-block t)
'(cperl-tab-always-indent t)
(setq-default indent-tabs-mode nil)
(setq cperl-auto-newline t)

(custom-set-faces
 '(cperl-array-face ((t (:foreground "green" :weight bold))))
 '(cperl-hash-face ((t (:foreground "Red" :slant italic :weight bold)))))

(require 'perltidy)
(defun perltidy-region ()
  "Run perltidy on the current region."
  (interactive)
  (save-excursion
    (shell-command-on-region (point) (mark) "perltidy -q" nil t)))
(defun perltidy-defun ()
  "Run perltidy on the current defun."
  (interactive)
  (save-excursion (mark-defun)
                  (perltidy-region)))

;;;###########################################################################
;;; slime & paren-mode
;;;###########################################################################
(add-to-list 'load-path "~/.emacs.d/slime/")
(setq inferior-lisp-program "/usr/bin/sbcl"
      lisp-indent-function 'common-lisp-indent-function
      slime-complete-symbol-function 'slime-fuzzy-complete-symbol
      slime-startup-animation nil
      slime-enable-evaluate-in-emacs t
      slime-log-events t
      slime-outline-mode-in-events-buffer nil
      slime-repl-return-behaviour :send-only-if-after-complete
      slime-autodoc-use-multiline-p t
      slime-highlight-compiler-notes t)
(require 'slime)
(slime-setup '(slime-fancy))
(set-language-environment "UTF-8")
(setq slime-net-coding-system 'utf-8-unix)

; ftp://ftp.lispworks.com/pub/software_tools/reference/HyperSpec-7-0.tar.gz
(setq common-lisp-hyperspec-root "~/.emacs.d/HyperSpec/"
      browse-url-browser-function 'w3m-browse-url)

(show-paren-mode t)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)
(set-face-background 'show-paren-match-face "#003333")
(set-face-attribute 'show-paren-match-face nil
        :weight 'bold :underline nil :overline nil :slant 'normal)

;;;###########################################################################
;;; 버퍼이동 ido-mode
;;;###########################################################################
(ido-mode 'buffer)
(global-set-key [(ctrl tab)] 'ido-switch-buffer)
(global-set-key [(ctrl shift tab)] 'ido-switch-buffer)
(add-hook
  'ido-setup-hook
  (lambda ()
    (define-key ido-buffer-completion-map [(ctrl tab)] 'ido-next-match)
    (define-key ido-buffer-completion-map [(ctrl shift tab)] 'ido-prev-match)))

;;;###########################################################################
;;; shell-mode
;;;###########################################################################
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook 'eshell-preoutput-filter-functions 'ansi-color-apply)

;;;###########################################################################
;;; 한국어 사용을 위한 설정
;;;###########################################################################
(require 'hangul)
(setq default-input-method "korean-hangul")
(set-language-environment "Korean")
(prefer-coding-system 'utf-8)

;;;###########################################################################
;;; 폰트 설정
;;;###########################################################################
(set-face-font 'default "NanumGothicCoding-9")
(set-fontset-font "fontset-default" 'hangul '("NanumGothicCoding" . "unicode-bmp"))

;;;###########################################################################
;;; color-theme 설정
;;;##########################################################################
(load-file "~/.emacs.d/themes/color-theme-sunburst.el")
(load-file "~/.emacs.d/themes/color-theme-inkpot.el")
(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-tm)
;; (color-theme-inkpot)
;;;###########################################################################
;;; 잡스런 함수들
;;;###########################################################################
(defun reload-dotemacs ()
  "Reload .emacs"
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(defun fullscreen (&optional f)
  (interactive)
  (set-frame-parameter f 'fullscreen
    (if (frame-parameter f 'fullscreen) nil 'fullboth)))
(global-set-key [f11] 'fullscreen)
(add-hook 'after-make-frame-functions 'fullscreen)

;;;###########################################################################
;;; 잡스런 설정들
;;;###########################################################################
(windmove-default-keybindings 'meta)      ;; 윈도우 이동시 meta+방향키로 직관적으로 이동
(open-dribble-file nil)                   ;;

(global-hl-line-mode t)                   ;; 현재 줄강조, 색깔은 테마의 hl-line part
(global-font-lock-mode 1)                 ;; turn on syntax coloring
(global-linum-mode 1)                     ;; always show line numbers
(global-font-lock-mode t)                 ;; 모든 모드 닥치고 구문강조

(menu-bar-mode t)                         ;; 매뉴바 봄
(scroll-bar-mode -1)                     ;; 스크롤바 안봄
(tool-bar-mode -1)                        ;; 툴바 안봄
(transient-mark-mode 1)                   ;; highlight text selection
(transient-mark-mode t)                   ;;
(delete-selection-mode 1)                 ;; 블럭잡고 Del, BackSpace 키 누르면 블럭 내용삭제
(line-number-mode 1)                      ;; status-bar의 라인번호 출력
(column-number-mode 1)                    ;; status-bar의 컬럼번호 출력
(display-time-mode t)                     ;; 시간 출력

(fset 'yes-or-no-p 'y-or-n-p)             ;; 뭐 물어볼대 귀찮게 yes,no 하지말고 y,n 해라
(setq inhibit-startup-message t)          ;; 초기화면 닥침
(setq initial-scratch-message nil)        ;; 스크래치 깨끗
(setq-default scroll-step 1)              ;;
(setq-default show-trailing-whitespace t) ;; 줄끝 공백 보여주기
(setq require-final-newline t)            ;; end files with a newline
(setq make-backup-files nil)              ;; 백업파일 미생성
(setq auto-save-default nil)              ;; stop creating those #auto-save# files
(setq indicate-empty-lines t)             ;; vi의 접근하지 않은 영역의 ~ 비슷한 효과 출력
(setq next-line-add-newlines nil)         ;; C-k 후 C-y 했을때 개행처리
(setq kill-whole-line t)                  ;; C-k시 개행까지 삭제
(setq display-time-day-and-date t         ;; status-bar의 시간포맷
      display-time-24hr-format  t)
(setq frame-title-format                  ;; title bar set
  (list '(buffer-file-name "%f" "%b")))
(setq icon-title-format frame-title-format)

; (font-lock-mode 'font)                    ;; (global-font-lock-mode t) 이것과 치이점 알수없음

(require 'w3m)

(global-unset-key [(control v)])
;; (require 'dokuwiki)
;; (setq dokuwiki-username "username"
;;       dokuwiki-password "password"
;;       dokuwiki-base-url "http://url"
