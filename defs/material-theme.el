;;; material-theme.el --- Emacs material-inspired dark theme
;;; Commentary:
;;; Based on ample theme by Jordon Biondo <jordonbiondo@gmail.com>
;;; Code:
(deftheme material "Material-inspired dark theme.")

;; Set faces
(custom-theme-set-faces
 `material ;; you must use the same theme name here...
 `(default ((t (:foreground "[material:view-tx]" :background "[material:view-bg]"))))
 `(fringe  ((t (:background "[material:window-bg]"))))
 `(vertical-border ((t ( :foreground "[material:window-title-active-bg]" :background "[material:window-title-active-bg]"))))

 ;; Cursor
 `(cursor  ((t (:foreground "[material:view-bg]" :background "[material:cursor-normal-bg]"))))
 `(cua-global-mark ((t (:foreground "[material:view-bg]" :background "[material:cursor-normal-bg]"))))
 `(hl-line ((t (:background "[material:window-title-inactive-bg]"))))

 ;; Basic
 `(region               ((t (:background "[material:view-selected-bg]"))))
 `(secondary-selection  ((t (:background "[material:view-selected-inactive-bg]"))))
 `(cua-rectangle        ((t (:inherit region))))
 `(highlight            ((t (:foreground "[material:view-highlighted-tx]" :background "[material:view-highlighted-bg]"))))
 `(link                 ((t ( :foreground "[material:text-link-tx]"))))

 ;; Errors and warnings
 `(error                ((t (:foreground "[material:error-tx]"))))
 `(warning              ((t (:foreground "[material:warning-tx]"))))
 `(success              ((t (:foreground "[material:success-tx]"))))
 `(compilation-error    ((t (:foreground "[material:error-tx]" :bold t))))
 `(compilation-warning  ((t (:foreground "[material:warning-tx]" :bold t))))
 `(compilation-info     ((t (:foreground "[material:success-tx]" :bold t))))

 ;; Mini buff
 `(minibuffer-prompt ((t (:foreground "[material:accent2-normal]" :bold t :background nil))))

 ;; Mode line & header line & powerline
 `(mode-line-buffer-id ((t (:foreground "[material:accent2-normal]"))))
 `(mode-line-inactive  ((t (:box (:line-width 1 :color "[material:window-title-active-bg]") :foreground "[material:window-title-inactive-tx]" :background "[material:window-title-inactive-bg]" :slant italic))))
 `(mode-line           ((t (:box (:line-width 1 :color "[material:window-title-active-bg]") :foreground "[material:window-title-active-tx]" :background "[material:window-title-active-bg]" :weight bold))))
 `(header-line         ((t (:box (:line-width 1 :color "[material:window-title-active-bg]") :foreground "[material:view-header-tx]" :background "[material:view-header-bg]" :bold t))))
 `(popup-tip-face      ((t (:foreground "[material:tooltip-tx]" :background "[material:tooltip-bg]"))))
 `(powerline-active1   ((t (:foreground "[material:window-title-active-tx]" :background "[material:window-title-active-bg]"))))
 `(powerline-active2   ((t (:foreground "[material:window-title-active-tx]" :background "[material:primary-normal]"))))

 ;; Search
 `(isearch		((t (:foreground "[material:view-highlighted-tx]" :background "[material:view-highlighted-bg]" :bold t))))
 `(lazy-highlight	((t (:foreground "[material:view-highlighted-inactive-tx]" :background "[material:view-highlighted-inactive-bg]" :bold t))))
 `(isearch-fail         ((t (:foreground "[material:view-tx]" :background "[material:error-dark]"))))

 ;; Standard font lock
 `(font-lock-builtin-face           ((t (:foreground "[material:source-builtin-tx]"))))
 `(font-lock-comment-face           ((t (:foreground "[material:source-comment-tx]"))))
 `(font-lock-comment-delimiter-face ((t (:foreground "[material:source-comment-delim-tx]"))))
 `(font-lock-function-name-face     ((t (:foreground "[material:source-function-tx]"))))
 `(font-lock-keyword-face           ((t (:foreground "[material:source-keyword-tx]"))))
 `(font-lock-string-face            ((t (:foreground "[material:source-string-tx]"))))
 `(font-lock-preprocessor-face      ((t (:foreground "[material:source-preprocessor-tx]"))))
 `(font-lock-type-face              ((t (:foreground "[material:source-type-tx]"))))
 `(font-lock-constant-face          ((t (:foreground "[material:source-constant-tx]"))))
 `(font-lock-warning-face           ((t (:foreground "[material:warning-tx]" :bold t))))
 `(font-lock-variable-name-face     ((t (:foreground "[material:source-variable-tx]"))))
 `(font-lock-doc-face               ((t (:foreground "[material:source-doc-tx]"))))
 `(font-lock-negation-face          ((t (:foreground "[material:warning-tx]" :bold t))))

 ;; Which func
 `(which-func ((t (:inherit font-lock-function-name-face :bold t))))

 ;; Latex
 `(font-latex-sectioning-5-face  ((t (:foreground "[material:text-section1-tx]" :weight bold ))))
 `(font-latex-warning-face       ((t (:inherit warning ))))
 `(font-latex-bold-face          ((t (:inherit default :weight bold))))
 `(font-latex-italic-face        ((t (:inherit default :slant italic))))
 `(font-latex-string-face        ((t (:inherit font-lock-string-face))))
 `(font-latex-math-face          ((t (:inherit font-lock-string-face))))
 `(font-latex-verbatim-face      ((t (:inherit font-lock-preprocessor-face))))
 `(font-latex-sedate-face        ((t (:inherit font-lock-keyword-face))))
 `(TeX-error-description-error   ((t (:inherit error :weight bold))))
 `(TeX-error-description-warning ((t (:inherit warning :weight bold))))
 `(preview-face                  ((t (:inherit secondary-selection))))

 ;; Markdown
 `(markdown-bold-face    ((t (:inherit default :weight bold))))
 `(markdown-italic-face  ((t (:inherit default :slant italic))))
 `(markdown-link-face    ((t (:inherit link))))
 `(markdown-url-face     ((t (:inherit font-lock-string-face))))
 `(markdown-header-face  ((t (:foreground "[material:text-section1-tx]" :weight bold))))
 `(markdown-math-face    ((t (:inherit font-lock-string-face))))
 `(markdown-pre-face     ((t (:inherit font-lock-preprocessor-face))))

 ;; Diff
 `(diff-added             ((t (:foreground nil                          :background "[material:diff-add-bg]"))))
 `(diff-changed           ((t (:foreground nil                          :background "[material:diff-change-bg]"))))
 `(diff-removed           ((t (:foreground nil                          :background "[material:diff-delete-bg]"))))
 `(diff-context           ((t (:foreground "[material:diff-context-tx]" :background "[material:diff-context-bg]"))))

 ;; Flyspell
 '(flyspell-duplicate   ((t (:underline (:color "[material:warning-tx]" :style line)))))
 '(flyspell-incorrect   ((t (:underline (:color "[material:error-tx]" :style line)))))

 ;; Flyckeck
 '(flycheck-info       ((t (:underline (:color "[material:success-tx]" :style wave)))))
 '(flycheck-error      ((t (:underline (:color "[material:error-tx]"   :style wave)))))
 '(flycheck-warning    ((t (:underline (:color "[material:warning-tx]" :style wave)))))

 ;; RTags outlines
 '(rtags-errline       ((t (:underline (:color "[material:error-tx]"   :style wave)))))
 '(rtags-warnline      ((t (:underline (:color "[material:warning-tx]" :style wave)))))
 '(rtags-fixitline     ((t (:underline (:color "[material:success-tx]" :style wave)))))

 ;; Helm
 `(helm-M-x-key              ((t (:foreground "[material:text-link-tx]" :underline nil))))
 `(helm-candidate-number     ((t (:foreground "[material:window-title-active-tx]" :background "[material:window-title-active-bg]"))))
 `(helm-ff-directory         ((t (:foreground "[material:file-directory-tx]" :background "[material:view-bg]" :bold t))))
 `(helm-ff-executable        ((t (:foreground "[material:file-executable-tx]"))))
 `(helm-ff-file              ((t (:foreground "[material:file-normal-tx]"))))
 `(helm-ff-invalid-symlink   ((t (:foreground "[material:file-broken-tx]"))))
 `(helm-ff-prefix            ((t (:foreground "[material:accent-normal]"))))
 `(helm-ff-symlink           ((t (:foreground "[material:file-link-tx]"))))
 `(helm-ff-dotted-directory  ((t (:foreground "[material:semantic8]" :bold t))))
 `(helm-header               ((t (:foreground "[material:window-title-active-tx]" :background "[material:window-title-active-bg]"))))
 `(helm-match                ((t (:foreground "[material:accent-normal]" :background "[material:view-bg]"))))
 `(helm-selection            ((t (:foreground "[material:view-selected-tx]" :background "[material:view-selected-bg]" :bold t))))
 `(helm-selection-line       ((t (:foreground "[material:view-selected-tx]" :background "[material:view-selected-bg]"))))
 `(helm-source-header        ((t (:foreground "[material:view-header-tx]" :background "[material:view-header-bg]" :bold t))))
 `(helm-visible-mark         ((t (:foreground "[material:view-marked-tx]" :background nil :bold t))))
 `(helm-buffer-directory     ((t (:inherit helm-ff-directory ))))
 `(helm-buffer-file          ((t (:inherit default))))
 `(helm-buffer-not-saved     ((t (:foreground "[material:file-modified-tx]"))))
 `(helm-buffer-process       ((t (:foreground "[material:file-executable-tx]"))))
 `(helm-buffer-saved-out     ((t (:inherit error))))
 `(helm-buffer-size          ((t (:inherit font-lock-comment-face))))

 ;;`(helm-action			((t ())))
 ;;`(helm-bookmark-addressbook	((t ())))
 ;;`(helm-bookmark-file		((t ())))
 ;;`(helm-bookmark-gnus		((t ())))
 ;;`(helm-bookmark-info		((t ())))
 ;;`(helm-bookmark-man		((t ())))
 ;;`(helm-bookmark-w3m		((t ())))
 ;;`(helm-grep-cmd-line		((t ())))
 ;;`(helm-grep-file			((t ())))
 ;;`(helm-grep-finish			((t ())))
 ;;`(helm-grep-lineno			((t ())))
 ;;`(helm-grep-match			((t ())))
 ;;`(helm-grep-running		((t ())))
 ;;`(helm-helper			((t ())))
 ;;`(helm-history-deleted		((t ())))
 ;;`(helm-history-remote		((t ())))
 ;;`(helm-lisp-completion-info	((t ())))
 ;;`(helm-lisp-show-completion	((t ())))
 ;;`(helm-moccur-buffer		((t ())))
 ;;`(helm-separator			((t ())))

 ;; Company Mode
 `(company-preview-common            ((t (:foreground "[material:accent-normal]"                                             ))))
 `(company-scrollbar-bg              ((t (:foreground nil                           :background "[material:scrollbar-bg]"    ))))
 `(company-scrollbar-fg              ((t (:foreground nil                           :background "[material:scrollbar-fg]"    ))))
 `(company-tooltip                   ((t (:foreground "[material:menu-tx]"          :background "[material:menu-bg]"          :bold t))))
 `(company-tooltip-common            ((t (:foreground "[material:accent-normal]"    :background "[material:menu-bg]"          :bold t))))
 `(company-tooltip-common-selection  ((t (:foreground "[material:accent-normal]"    :background "[material:menu-selected-bg]" :bold t))))
 `(company-tooltip-mouse             ((t (:foreground "[material:menu-selected-tx]" :background "[material:menu-selected-bg]" :bold t))))
 `(company-tooltip-selection         ((t (:foreground "[material:menu-selected-tx]" :background "[material:menu-selected-bg]" :bold t))))
 `(company-tooltip-search            ((t (:foreground "[material:view-highlighted-tx]" :background "[material:view-highlighted-bg]" :bold t))))
 `(company-tooltip-annotation        ((t (:foreground "[material:yellow]"           :background "[material:menu-bg]"         ))))
 `(company-template-field            ((t (:foreground "[material:view-highlighted-tx]" :background "[material:view-highlighted-bg]"))))
 ;;`(company-echo               ((t (:foreground nil :background nil))))
 ;;`(company-echo-common ((t (:foreground nil :background "firebrick4"))))
 ;;`(company-preview ((t (:foreground "wheat" :background "blue4"))))
 ;;`(company-preview-search ((t (:foreground "wheat" :background "blue1"))))

 ;; Yasnippet
 `(yas-field-highlight-face            ((t (:foreground "[material:view-highlighted-tx]" :background "[material:view-highlighted-bg]"))))

 ;; Rainbow delim
 `(rainbow-delimiters-depth-1-face ((t (:foreground "[material:distinct1]" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "[material:view-tx]"))))
 `(rainbow-delimiters-depth-2-face ((t (:foreground "[material:distinct2]" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "[material:view-tx]"))))
 `(rainbow-delimiters-depth-3-face ((t (:foreground "[material:distinct3]" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "[material:view-tx]"))))
 `(rainbow-delimiters-depth-4-face ((t (:foreground "[material:distinct4]" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "[material:view-tx]"))))
 `(rainbow-delimiters-depth-5-face ((t (:foreground "[material:distinct5]" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "[material:view-tx]"))))
 `(rainbow-delimiters-depth-6-face ((t (:foreground "[material:distinct6]" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "[material:view-tx]"))))
 `(rainbow-delimiters-depth-7-face ((t (:foreground "[material:distinct7]" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "[material:view-tx]"))))
 `(rainbow-delimiters-depth-8-face ((t (:foreground "[material:distinct8]" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "[material:view-tx]"))))
 `(rainbow-delimiters-depth-9-face ((t (:foreground "[material:distinct9]" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "[material:view-tx]"))))
 `(rainbow-delimiters-unmatched-face ((t (:inherit error))))

 ;; Show paren
 `(show-paren-match    ((t (:foreground nil :background "[material:secondary-normal]" :bold t))))
 `(show-paren-mismatch ((t (:foreground nil :background "[material:error-normal]" :bold t))))

 ;; Smartparens
 '(sp-show-pair-match-face    ((t (:inherit show-paren-match))))
 '(sp-show-pair-mismatch-face ((t (:inherit show-paren-mismatch))))
 '(sp-pair-overlay-face       ((t (:inherit secondary-selection))))

 ;; Whitespace Mode
 `(whitespace-empty            ((t (:foreground "[material:source-whitespace-tx]" :background "[material:source-whitespace-bg]"))))
 `(whitespace-hspace           ((t (:foreground "[material:source-whitespace-tx]" :background "[material:source-whitespace-bg]"))))
 `(whitespace-indentation      ((t (:foreground "[material:source-whitespace-tx]" :background "[material:source-whitespace-bg]"))))
 `(whitespace-line             ((t (:foreground nil                               :background nil
                                                :underline (:color "[material:source-whitespace-tx]" :style wave)))))
 `(whitespace-newline          ((t (:foreground nil                               :background nil))))
 `(whitespace-space            ((t (:foreground nil                               :background "[material:source-whitespace-bg]"))))
 `(whitespace-space-after-tab  ((t (:foreground "[material:source-whitespace-tx]" :background "[material:source-whitespace-bg]"))))
 `(whitespace-space-before-tab ((t (:foreground "[material:source-whitespace-tx]" :background "[material:source-whitespace-bg]"))))
 `(whitespace-tab              ((t (:foreground "[material:source-whitespace-tx]" :background "[material:source-whitespace-bg]"))))
 `(whitespace-trailing         ((t (:foreground "[material:source-whitespace-tx]" :background "[material:source-whitespace-bg]"))))
 `(trailing-whitespace         ((t (:foreground "[material:source-whitespace-tx]" :background "[material:source-whitespace-bg]"))))

 ;;Undo-tree
 `(undo-tree-visualizer-active-branch-face ((t (:inherit default))))
 `(undo-tree-visualizer-default-face ((t (:inherit font-lock-comment-face))))
 `(undo-tree-visualizer-register-face ((t (:foreground "[material:semantic10]" :background nil))))
 `(undo-tree-visualizer-current-face ((t (:foreground "[material:view-selected-tx]" :box (:line-width 3 :color "[material:view-selected-bg]" :style released-button) :weight bold))))
 `(undo-tree-visualizer-unmodified-face ((t (:foreground "[material:semantic9]" :background nil))))

 ;; Outline
 `(outline-1 ((t (:foreground "[material:text-section1-tx]" :background nil))))
 `(outline-2 ((t (:foreground "[material:text-section2-tx]" :background nil))))
 `(outline-3 ((t (:foreground "[material:text-section3-tx]" :background nil))))
 `(outline-4 ((t (:foreground "[material:text-section4-tx]" :background nil))))
 `(outline-5 ((t (:foreground "[material:text-section5-tx]" :background nil))))
 `(outline-6 ((t (:foreground "[material:text-section5-tx]" :background nil))))
 `(outline-7 ((t (:foreground "[material:text-section5-tx]" :background nil))))
 `(outline-8 ((t (:foreground "[material:text-section5-tx]" :background nil))))

 ;; Org-mode
 `(org-done ((t (:foreground "[material:success-tx]" :background nil))))
 `(org-todo ((t (:foreground "[material:warning-tx]" :background nil))))
 `(org-date ((t (:foreground "[material:text-tag-tx]" :weight bold))))
 ;; `(org-hide ((t (:foreground "[material:view-bg]" :background nil))))
 ;;`(org-agenda-calendar-event ((t (:foreground nil :background nil))))
 ;;`(org-agenda-calendar-sexp ((t (:foreground nil :background nil))))
 ;;`(org-agenda-clocking ((t (:foreground nil :background nil))))
 ;;`(org-agenda-column-dateline ((t (:foreground nil :background nil))))
 ;;`(org-agenda-current-time ((t (:foreground nil :background nil))))
 ;;`(org-agenda-date ((t (:foreground nil :background nil))))
 ;;`(org-agenda-date-today ((t (:foreground nil :background nil))))
 ;;`(org-agenda-date-weekend ((t (:foreground nil :background nil))))
 ;;`(org-agenda-diary ((t (:foreground nil :background nil))))
 ;;`(org-agenda-dimmed-todo-face ((t (:foreground nil :background nil))))
 ;;`(org-agenda-done ((t (:foreground nil :background nil))))
 ;;`(org-agenda-filter-category ((t (:foreground nil :background nil))))
 ;;`(org-agenda-filter-tags ((t (:foreground nil :background nil))))
 ;;`(org-agenda-restriction-lock ((t (:foreground nil :background nil))))
 ;;`(org-agenda-structure ((t (:foreground nil :background nil))))
 ;;`(org-archived ((t (:foreground nil :background nil))))
 ;;`(org-beamer-tag ((t (:foreground nil :background nil))))
 ;;`(org-block ((t (:foreground nil :background nil))))
 ;;`(org-block-background ((t (:foreground nil :background nil))))
 ;;`(org-block-begin-line ((t (:foreground nil :background nil))))
 ;;`(org-block-end-line ((t (:foreground nil :background nil))))
 ;;`(org-checkbox ((t (:foreground nil :background nil))))
 ;;`(org-checkbox-statistics-done ((t (:foreground nil :background nil))))
 ;;`(org-checkbox-statistics-todo ((t (:foreground nil :background nil))))
 ;;`(org-clock-overlay ((t (:foreground nil :background nil))))
 ;;`(org-code ((t (:foreground nil :background nil))))
 ;;`(org-column ((t (:foreground nil :background nil))))
 ;;`(org-column-title ((t (:foreground nil :background nil))))
 ;;`(org-date ((t (:foreground nil :background nil))))
 ;;`(org-date-selected ((t (:foreground nil :background nil))))
 ;;`(org-default ((t (:foreground nil :background nil))))
 ;;`(org-document-info ((t (:foreground nil :background nil))))
 ;;`(org-document-info-keyword ((t (:foreground nil :background nil))))
 ;;`(org-document-title ((t (:foreground nil :background nil))))
 ;;`(org-drawer ((t (:foreground nil :background nil))))
 ;;`(org-ellipsis ((t (:foreground nil :background nil))))
 ;;`(org-footnote ((t (:foreground nil :background nil))))
 ;;`(org-formula ((t (:foreground nil :background nil))))
 ;;`(org-headline-done ((t (:foreground nil :background nil))))
 ;;`(org-latex-and-export-specials ((t (:foreground nil :background nil))))
 ;;`(org-level-1 ((t (:foreground nil :background nil))))
 ;;`(org-level-2 ((t (:foreground nil :background nil))))
 ;;`(org-level-3 ((t (:foreground nil :background nil))))
 ;;`(org-level-4 ((t (:foreground nil :background nil))))
 ;;`(org-level-5 ((t (:foreground nil :background nil))))
 ;;`(org-level-6 ((t (:foreground nil :background nil))))
 ;;`(org-level-7 ((t (:foreground nil :background nil))))
 ;;`(org-level-8 ((t (:foreground nil :background nil))))
 ;;`(org-link ((t (:foreground nil :background nil))))
 ;;`(org-list-dt ((t (:foreground nil :background nil))))
 ;;`(org-meta-line ((t (:foreground nil :background nil))))
 ;;`(org-mode-line-clock ((t (:foreground nil :background nil))))
 ;;`(org-mode-line-clock-overrun ((t (:foreground nil :background nil))))
 ;;`(org-property-value ((t (:foreground nil :background nil))))
 ;;`(org-quote ((t (:foreground nil :background nil))))
 ;;`(org-scheduled ((t (:foreground nil :background nil))))
 ;;`(org-scheduled-previously ((t (:foreground nil :background nil))))
 ;;`(org-scheduled-today ((t (:foreground nil :background nil))))
 ;;`(org-sexp-date ((t (:foreground nil :background nil))))
 ;;`(org-special-keyword ((t (:foreground nil :background nil))))
 ;;`(org-table ((t (:foreground nil :background nil))))
 ;;`(org-tag ((t (:foreground nil :background nil))))
 ;;`(org-target ((t (:foreground nil :background nil))))
 ;;`(org-time-grid ((t (:foreground nil :background nil))))
 ;;`(org-upcoming-deadline ((t (:foreground nil :background nil))))
 ;;`(org-verbatim ((t (:foreground nil :background nil))))
 ;;`(org-verse ((t (:foreground nil :background nil))))
 ;;`(org-warning ((t (:foreground nil :background nil))))

 ;; Calendar
 `(calendar-weekday-header ((t (:foreground "[material:green]" :background nil))))
 `(calendar-weekend-header ((t (:foreground "[material:red]" :background nil))))

 ;; VC
 `(diff-hl-insert  ((t (:foreground "[material:diff-add-tx]"        :background "[material:diff-add-bg]"))))
 `(diff-hl-delete  ((t (:foreground "[material:diff-delete-tx]"     :background "[material:diff-delete-bg]"))))
 `(diff-hl-change  ((t (:foreground "[material:diff-change-tx]"     :background "[material:diff-change-bg]"))))

 ;;Magit
 `(magit-section-title			((t (:foreground "[material:view-header-tx]"   :background "[material:view-header-bg]" :weight bold))))
 `(magit-tag					((t (:foreground "[material:vc-tag-tx]"        :background nil))))
 `(magit-branch				((t (:foreground "[material:vc-branch-tx]"     :background nil))))
 `(magit-log-sha1				((t (:foreground "[material:vc-sha-tx]"        :background nil))))

 `(magit-item-highlight			((t (:foreground "[material:view-selected-tx]" :background "[material:view-selected-bg]"))))
 `(magit-item-mark				((t (:foreground "[material:view-marked-tx]"   :background "[material:view-marked-bg]"))))

 `(magit-diff-add				((t (:foreground "[material:diff-add-tx]"        :background "[material:diff-add-bg]"))))
 `(magit-diff-del				((t (:foreground "[material:diff-delete-tx]"     :background "[material:diff-delete-bg]"))))
 `(magit-diff-none				((t (:foreground "[material:diff-context-tx]"    ))))
 `(magit-diff-file-header			((t (:foreground "[material:source-function-tx]" :bold t        ))))
 `(magit-diff-hunk-header			((t (:foreground "[material:source-function-tx]"                ))))

 ;; `(magit-diff-merge-current			((t (:foreground ,material/orange :background nil))))
 ;; `(magit-diff-merge-diff3-separator		((t (:foreground ,material/orange :background nil))))
 ;; `(magit-diff-merge-proposed			((t (:foreground ,material/orange :background nil))))
 ;; `(magit-diff-merge-separator		((t (:foreground ,material/orange :background nil))))

 ;;`(magit-key-mode-args-face			((t (:foreground "black" :background "yellow3"))))
 ;; `(magit-key-mode-button-face			((t (:foreground ,material/light-blue :background nil))))
 ;; `(magit-key-mode-header-face			((t (:foreground ,material/blue :background nil))))
 ;;`(magit-key-mode-switch-face		((t (:foreground "red" :background nil :bold t))))

 ;; `(magit-log-author				((t (:foreground ,material/red :background nil))))
 ;; `(magit-log-author-date-cutoff		((t (:foreground ,material/red :background nil :bold t))))
 ;; `(magit-log-date				((t (:foreground nil :background nil))))
 ;; `(magit-log-graph				((t (:foreground "grey80" :background nil))))
 ;;`(magit-log-head-label-bisect-bad		((t (:foreground "IndianRed4" :background "IndianRed1"))))
 ;;`(magit-log-head-label-bisect-good		((t (:foreground "dark olive green" :background "light green"))))
 ;;`(magit-log-head-label-default		((t (:foreground nil :background "Grey50"))))
 ;;`(magit-log-head-label-head		((t (:foreground "White" :background "Grey20"))))
 ;;`(magit-log-head-label-local		((t (:foreground "LightSkyBlue1" :background "Grey13"))))
 ;;`(magit-log-head-label-patches		((t (:foreground "IndianRed4" :background "IndianRed1"))))
 ;;`(magit-log-head-label-remote		((t (:foreground "DarkSeaGreen2" :background "Grey11"))))
 ;;`(magit-log-head-label-tags		((t (:foreground "goldenrod4" :background "LemonChiffon1"))))
 ;;`(magit-log-message			((t (:foreground nil :background nil))))
 ;;`(magit-log-reflog-label-amend		((t (:foreground "goldenrod4" :background "LemonChiffon1"))))
 ;;`(magit-log-reflog-label-checkout		((t (:foreground "LightSkyBlue1" :background "Grey13"))))
 ;;`(magit-log-reflog-label-cherry-pick	((t (:foreground "dark olive green" :background "light green"))))
 ;;`(magit-log-reflog-label-commit		((t (:foreground "goldenrod4" :background "LemonChiffon1"))))
 ;;`(magit-log-reflog-label-merge		((t (:foreground "goldenrod4" :background "LemonChiffon1"))))
 ;;`(magit-log-reflog-label-other		((t (:foreground nil :background "Grey50"))))
 ;;`(magit-log-reflog-label-rebase		((t (:foreground "DarkSeaGreen2" :background "Grey11"))))
 ;;`(magit-log-reflog-label-remote		((t (:foreground nil :background "Grey50"))))
 ;;`(magit-log-reflog-label-reset		((t (:foreground "IndianRed4" :background "IndianRed1"))))

 ;;`(magit-valid-signature			((t (:foreground "PaleTurquoise" :background nil :bold t))))

 ;;`(magit-cherry-equivalent			((t (:foreground "cyan" :background nil))))
 ;;`(magit-cherry-unmatched			((t (:foreground "magenta" :background nil))))

 `(magit-whitespace-warning-face		((t (:foreground "[material:source-whitespace-tx]" :background "[material:source-whitespace-bg]"))))

 ;; Dired
 `(dired-header      ((t (:foreground "[material:view-header-tx]"    :background "[material:view-header-bg]" :bold t))))
 `(dired-directory   ((t (:foreground "[material:file-directory-tx]" :background "[material:view-bg]" :bold t))))
 `(dired-symlink     ((t (:foreground "[material:file-link-tx]"      :background "[material:view-bg]"))))
 `(dired-perm-write  ((t (:foreground "[material:accent-normal]"     :background "[material:view-bg]" :bold t))))



 ;; ----------------------------
 ;; NOT YET CUSTOMIZED
 ;; ----------------------------
 ;; `(button  ((t (:foreground ,material/lighter-blue :background nil :underline t))))
 ;; `(linum ((t (:foreground ,material/gray :background nil))))

 ;; `(git-gutter:deleted   ((t (:foreground ,material/red :background nil :bold t))))
 ;; `(git-gutter:modified  ((t (:foreground ,material/purple :background nil :bold t))))
 ;; `(git-gutter:separator ((t (:foreground ,material/orange :background nil :bold t))))
 ;; `(git-gutter:unchanged ((t (:foreground ,material/yellow :background nil))))

 ;; ;; ace-jump
 ;; `(ace-jump-face-background ((t (:inherit font-lock-comment-face))))
 ;; `(ace-jump-face-foreground ((t (:foreground ,material/orange))))



 ;; `(highlight-indentation-face ((t (:background ,material/darkest-gray))))


 ;; ;; eshell
 ;; `(eshell-prompt ((t (:foreground ,material/purple))))
 ;; `(eshell-ls-directory ((t (:foreground ,material/blue))))
 ;; `(eshell-ls-product ((t (:foreground ,material/orange))))
 ;; `(eshell-ls-backup ((t (:foreground ,material/darker-gray))))
 ;; `(eshell-ls-executable ((t (:foreground ,material/green))))

 ;; ;; shell
 ;; `(comint-highlight-prompt ((t (:foreground ,material/green))))

 ;; ;; erc
 ;; `(erc-nick-default-face ((t (:foreground ,material/blue))))
 ;; `(erc-my-nick-face ((t (:foreground ,material/yellow))))
 ;; `(erc-current-nick-face ((t (:foreground ,material/light-blue))))
 ;; `(erc-notice-face ((t (:foreground ,material/green))))
 ;; `(erc-input-face ((t (:foreground "white"))))
 ;; `(erc-timestamp-face ((t (:foreground ,material/darker-gray))))
 ;; `(erc-prompt-face ((t (:foreground "#191919" :background ,material/purple))))

 ;; ;; ido
 ;; `(ido-only-match		((t (:foreground ,material/green))))
 ;; `(ido-first-match		((t (:foreground ,material/blue))))
 ;; `(ido-incomplete-regexp	((t (:foreground ,material/red))))
 ;; `(ido-subdir			((t (:foreground ,material/yellow))))
 ;; ;; flx-ido
 ;; `(flx-highlight-face         ((t (:foreground ,material/lighter-blue :background nil :underline nil :bold t))))

 ;; ;;js2
 ;; `(js2-external-variable		((t (:foreground ,material/orange :background nil))))
 ;; `(js2-function-param			((t (:foreground ,material/dark-green :background nil))))
 ;; `(js2-instance-member		((t (:foreground ,material/purple :background nil))))
 ;; `(js2-jsdoc-html-tag-delimiter	((t (:foreground ,material/dark-gray :background nil))))
 ;; `(js2-jsdoc-html-tag-name		((t (:foreground ,material/darkest-gray :background nil))))
 ;; `(js2-jsdoc-tag			((t (:foreground ,material/dark-red :background nil))))
 ;; `(js2-jsdoc-type			((t (:foreground ,material/red :background nil))))
 ;; `(js2-jsdoc-value			((t (:foreground ,material/tan :background nil))))
 ;; `(js2-private-function-call		((t (:foreground ,material/dark-green :background nil))))
 ;; `(js2-private-member			((t (:foreground ,material/dark-tan :background nil))))
 ;; `(js2-warning			((t (:foreground nil :background nil :underline ,material/orange))))

 ;; ;;web-mode
 ;; `(web-mode-block-attr-name-face		((t (:foreground "#8fbc8f" :background nil))))
 ;; `(web-mode-block-attr-value-face		((t (:inherit font-lock-string-face))))
 ;; `(web-mode-block-comment-face		((t (:inherit font-lock-comment-face))))
 ;; `(web-mode-block-control-face		((t (:inherit font-lock-preprocessor-face))))
 ;; `(web-mode-block-delimiter-face		((t (:inherit font-lock-preprocessor-face))))
 ;; `(web-mode-block-face			((t (:foreground nil :background "LightYellow1"))))
 ;; `(web-mode-block-string-face			((t (:inherit font-lock-string-face))))
 ;; `(web-mode-builtin-face			((t (:inherit font-lock-builtin-face))))
 ;; `(web-mode-comment-face			((t (:inherit font-lock-comment-face))))
 ;; `(web-mode-comment-keyword-face		((t (:foreground nil :background nil :bold t))))
 ;; `(web-mode-constant-face			((t (:foreground ,material/purple :background nil))))
 ;; `(web-mode-css-at-rule-face			((t (:foreground ,material/purple :background nil))))
 ;; `(web-mode-css-color-face			((t (:foreground ,material/light-blue :background nil))))
 ;; `(web-mode-css-comment-face			((t (:inherit font-lock-comment-face))))
 ;; `(web-mode-css-function-face			((t (:foreground ,material/light-blue :background nil))))
 ;; `(web-mode-css-priority-face			((t (:foreground ,material/light-blue :background nil))))
 ;; `(web-mode-css-property-name-face		((t (:inherit font-lock-variable-name-face))))
 ;; `(web-mode-css-pseudo-class-face		((t (:foreground ,material/light-blue :background nil))))
 ;; `(web-mode-css-selector-face			((t (:foreground ,material/blue :background nil))))
 ;; `(web-mode-css-string-face			((t (:foreground ,material/tan :background nil))))
 ;; `(web-mode-current-element-highlight-face	((t (:foreground nil :background "#000000"))))
 ;; `(web-mode-doctype-face			((t (:inherit font-lock-doc-face))))
 ;; `(web-mode-error-face			((t (:inherit error))))
 ;; `(web-mode-folded-face			((t (:foreground nil :background nil :underline t))))
 ;; `(web-mode-function-call-face		((t (:inherit font-lock-function-name-face))))
 ;; `(web-mode-function-name-face		((t (:inherit font-lock-function-name-face))))
 ;; `(web-mode-html-attr-custom-face		((t (:inherit font-lock-comment-face))))
 ;; `(web-mode-html-attr-equal-face		((t (:inherit font-lock-comment-face))))
 ;; `(web-mode-html-attr-name-face		((t (:inherit font-lock-comment-face))))
 ;; `(web-mode-html-attr-value-face		((t (:inherit font-lock-string-face))))
 ;; `(web-mode-html-tag-bracket-face		((t (:inherit font-lock-comment-face))))
 ;; `(web-mode-html-tag-custom-face		((t (:inherit font-lock-comment-face))))
 ;; `(web-mode-html-tag-face			((t (:inherit font-lock-comment-face))))
 ;; `(web-mode-javascript-comment-face		((t (:inherit font-lock-comment-face))))
 ;; `(web-mode-javascript-string-face		((t (:inherit font-lock-string-face))))
 ;; `(web-mode-json-comment-face			((t (:inherit font-lock-comment-face))))
 ;; `(web-mode-json-context-face			((t (:foreground "orchid3" :background nil))))
 ;; `(web-mode-json-key-face			((t (:foreground "plum" :background nil))))
 ;; `(web-mode-json-string-face			((t (:inherit font-lock-string-face))))
 ;; `(web-mode-keyword-face			((t (:inherit font-lock-keyword-face))))
 ;; `(web-mode-param-name-face			((t (:foreground "Snow3" :background nil))))
 ;; `(web-mode-part-comment-face			((t (:inherit font-lock-comment-face))))
 ;; `(web-mode-part-face				((t (:foreground nil :background "LightYellow1"))))
 ;; `(web-mode-part-string-face			((t (:inherit font-lock-string-face))))
 ;; `(web-mode-preprocessor-face			((t (:inherit font-lock-preprocessor-face))))
 ;; `(web-mode-string-face			((t (:inherit font-lock-string-face))))
 ;; `(web-mode-symbol-face			((t (:foreground "gold" :background nil))))
 ;; `(web-mode-type-face				((t (:inherit font-lock-type-face))))
 ;; `(web-mode-variable-name-face		((t (:inherit font-lock-variable-name-face))))
 ;; `(web-mode-warning-face			((t (:inherit font-lock-warning-face))))
 ;; `(web-mode-whitespace-face			((t (:foreground nil :background "DarkOrchid4"))))

 ;; ;; jabber
 ;; `(jabber-activity-face		((t (:inherit font-lock-variable-name-face :bold t))))
 ;; `(jabber-activity-personal-face	((t (:inherit font-lock-function-name-face :bold t))))
 ;; `(jabber-chat-error			((t (:inherit error :bold t))))
 ;; `(jabber-chat-prompt-foreign		((t (:foreground ,material/green  :background nil :underline nil :bold t))))
 ;; `(jabber-chat-prompt-local		((t (:foreground ,material/light-blue   :background nil :underline nil :bold t))))
 ;; `(jabber-chat-prompt-system		((t (:foreground ,material/yellow :background nil :underline nil :bold t))))
 ;; `(jabber-chat-text-foreign		((t (:inherit default :background nil))))
 ;; `(jabber-chat-text-local		((t (:inherit default :bold t))))
 ;; `(jabber-rare-time-face		((t (:foreground ,material/purple :background nil :underline t))))
 ;; `(jabber-roster-user-away		((t (:inherit font-lock-string-face))))
 ;; `(jabber-roster-user-chatty		((t (:foreground ,material/orange :background nil :bold t))))
 ;; ;;`(jabber-roster-user-dnd		((t (:foreground "red" :background nil))))
 ;; `(jabber-roster-user-error		((t (:inherit error))))
 ;; `(jabber-roster-user-offline		((t (:inherit font-lock-comment-face))))
 ;; `(jabber-roster-user-online		((t (:inherit font-lock-keyword-face :bold t))))
 ;; `(jabber-roster-user-xa		((t (:inherit font-lock-doc-face))))
 ;; ;;`(jabber-title-large		((t (:foreground nil :background nil :bold t))))
 ;; ;;`(jabber-title-medium		((t (:foreground nil :background nil :bold t))))
 ;; ;;`(jabber-title-small		((t (:foreground nil :background nil :bold t))))


 ;; ;; auto complete
 ;; `(ac-candidate-face			((t (:foreground "black" :background "[material:view-tx]"))))
 ;; `(ac-selection-face			((t (:foreground "[material:view-tx]" :background ,material/blue))))
 ;; `(ac-candidate-mouse-face		((t (:inherit ac-selection-face))))
 ;; `(ac-clang-candidate-face		((t (:inherit ac-candidate-face))))
 ;; `(ac-clang-selection-face		((t (:inherit ac-selection-face))))
 ;; `(ac-completion-face			((t (:inherit font-lock-comment-face :underline t))))
 ;; `(ac-gtags-candidate-face		((t (:inherit ac-candidate-face))))
 ;; `(ac-gtags-selection-face		((t (:inherit ac-selection-face))))
 ;; `(ac-slime-menu-face			((t (:inherit ac-candidate-face))))
 ;; `(ac-slime-selection-face		((t (:inherit ac-selection-face))))
 ;; `(ac-yasnippet-candidate-face	((t (:inherit ac-candidate-face))))
 ;; `(ac-yasnippet-selection-face	((t (:inherit ac-selection-face))))


 ;; ;; w3m
 ;; ;;`(w3m-anchor			((t (:foreground "cyan" :background nil))))
 ;; ;;`(w3m-arrived-anchor		((t (:foreground "LightSkyBlue" :background nil))))
 ;; `(w3m-bold				((t (:foreground ,material/blue :background nil :bold t))))
 ;; `(w3m-current-anchor			((t (:foreground nil :background nil :underline t :bold t))))
 ;; ;;`(w3m-form				((t (:foreground "red" :background nil :underline t))))
 ;; ;;`(w3m-form-button			((t (:foreground "red" :background nil :underline t))))
 ;; ;;`(w3m-form-button-mouse		((t (:foreground "red" :background nil :underline t))))
 ;; ;;`(w3m-form-button-pressed		((t (:foreground "red" :background nil :underline t))))
 ;; ;;`(w3m-form-inactive		((t (:foreground "grey70" :background nil :underline t))))
 ;; ;;`(w3m-header-line-location-content ((t (:foreground "LightGoldenrod" :background "Gray20"))))
 ;; ;;`(w3m-header-line-location-title	((t (:foreground "Cyan" :background "Gray20"))))
 ;; ;;`(w3m-history-current-url		((t (:foreground "LightSkyBlue" :background "SkyBlue4"))))
 ;; ;;`(w3m-image			((t (:foreground "PaleGreen" :background nil))))
 ;; ;;`(w3m-image-anchor			((t (:foreground nil :background "dark green"))))
 ;; ;;`(w3m-insert			((t (:foreground "orchid" :background nil))))
 ;; `(w3m-italic				((t (:foreground ,material/orange :background nil :underline t))))
 ;; ;;`(w3m-session-select		((t (:foreground "cyan" :background nil))))
 ;; ;;`(w3m-session-selected		((t (:foreground "cyan" :background nil :underline t :bold t))))
 ;; ;;`(w3m-strike-through		((t (:foreground nil :background nil))))
 ;; ;;`(w3m-tab-background		((t (:foreground "black" :background "white"))))
 ;; ;;`(w3m-tab-mouse			((t (:foreground nil :background nil))))
 ;; ;;`(w3m-tab-selected			((t (:foreground "black" :background "cyan"))))
 ;; ;;`(w3m-tab-selected-background	((t (:foreground "black" :background "white"))))
 ;; ;;`(w3m-tab-selected-retrieving	((t (:foreground "red" :background "cyan"))))
 ;; ;;`(w3m-tab-unselected		((t (:foreground "black" :background "blue"))))
 ;; ;;`(w3m-tab-unselected-retrieving	((t (:foreground "OrangeRed" :background "blue"))))
 ;; ;;`(w3m-tab-unselected-unseen	((t (:foreground "gray60" :background "blue"))))
 ;; `(w3m-underline			((t (:foreground ,material/green :background nil :underline t))))


 ;; ;; ediff
 ;; `(ediff-current-diff-A((t (:foreground nil :background "#482828"))))
 ;; `(ediff-current-diff-B((t (:foreground nil :background "#284828"))))
 ;; `(ediff-current-diff-C((t (:foreground nil :background "#484828"))))
 ;; ;;`(ediff-current-diff-Ancestor((t ())))
 ;; `(ediff-even-diff-A			((t (:foreground nil :background "#191925"))))
 ;; `(ediff-even-diff-B			((t (:foreground nil :background "#191925"))))
 ;; `(ediff-even-diff-C			((t (:foreground nil :background "#191925"))))
 ;; ;;`(ediff-even-diff-Ancestor		((t ())))

 ;; `(diff-file-header       ((t (:foreground "[material:view-bg]" :background "grey60" :bold t))))
 ;; `(diff-function          ((t (:foreground "[material:view-bg]" :background "grey50"))))
 ;; `(diff-header            ((t (:foreground "[material:view-bg]" :background "grey50"))))
 ;; `(diff-hunk-header       ((t (:foreground "[material:view-bg]" :background "grey50"))))
 ;; `(diff-index             ((t (:foreground "[material:view-bg]" :background "grey50"))))
 ;; `(diff-indicator-added   ((t (:inherit diff-added))))
 ;; `(diff-indicator-changed ((t (:inherit diff-changed))))
 ;; `(diff-indicator-removed ((t (:inherit diff-removed))))
 ;; `(diff-nonexistent       ((t (:foreground nil :background "grey70"))))
 ;; `(diff-refine-added      ((t (:foreground nil :background "#649694"))))
 ;; `(diff-refine-changed    ((t (:foreground nil :background "#8f8f40"))))
 ;; `(diff-refine-removed    ((t (:foreground nil :background "#694949"))))

 ;; `(ediff-fine-diff-A			((t (:foreground "[material:view-tx]" :background "#694949"))))
 ;; `(ediff-fine-diff-B			((t (:foreground "[material:view-tx]" :background "#496949"))))
 ;; `(ediff-fine-diff-C			((t (:foreground "[material:view-tx]" :background "#696949"))))
 ;; ;;`(ediff-fine-diff-Ancestor		((t ())))

 ;; `(ediff-odd-diff-A			((t (:foreground nil :background "#171723"))))
 ;; `(ediff-odd-diff-B			((t (:foreground nil :background "#171723"))))
 ;; `(ediff-odd-diff-C			((t (:foreground nil :background "#171723"))))
 ;;`(ediff-odd-diff-Ancestor		((t ())))

 ;; ;; man pages
 ;; `(Man-overstrike ((t (:foreground ,material/blue))))
 ;; `(Man-underline ((t (:foreground ,material/yellow))))



 ;; ;; message-mode
 ;; `(message-cited-text  ((t (:inherit font-lock-comment-face))))
 ;; `(message-header-cc  ((t (:foreground ,material/light-blue :background nil :bold t))))
 ;; `(message-header-name  ((t (:foreground ,material/orange :background nil))))
 ;; `(message-header-newsgroups  ((t (:foreground ,material/dark-tan :background nil :bold t))))
 ;; `(message-header-other  ((t (:foreground ,material/blue :background nil))))
 ;; `(message-header-subject  ((t (:foreground ,material/tan :background nil))))
 ;; `(message-header-to  ((t (:foreground ,material/yellow :background nil :bold t))))
 ;; `(message-header-xheader  ((t (:foreground ,material/purple :background nil))))
 ;; `(message-mml  ((t (:foreground ,material/dark-tan :background nil))))

 ;; gnus
 ;; `(gnus-button				((t (:foreground nil :background nil :bold t))))
 ;; `(gnus-cite-1				((t (:foreground "light blue" :background nil))))
 ;; `(gnus-cite-10				((t (:foreground "plum1" :background nil))))
 ;; `(gnus-cite-11				((t (:foreground "turquoise" :background nil))))
 ;; `(gnus-cite-2				((t (:foreground "light cyan" :background nil))))
 ;; `(gnus-cite-3				((t (:foreground "light yellow" :background nil))))
 ;; `(gnus-cite-4				((t (:foreground "light pink" :background nil))))
 ;; `(gnus-cite-5				((t (:foreground "pale green" :background nil))))
 ;; `(gnus-cite-6				((t (:foreground "beige" :background nil))))
 ;; `(gnus-cite-7				((t (:foreground "orange" :background nil))))
 ;; `(gnus-cite-8				((t (:foreground "magenta" :background nil))))
 ;; `(gnus-cite-9				((t (:foreground "violet" :background nil))))
 ;; `(gnus-cite-attribution			((t (:foreground nil :background nil))))
 ;; `(gnus-emphasis-bold				((t (:foreground nil :background nil :bold t))))
 ;; `(gnus-emphasis-bold-italic			((t (:foreground nil :background nil :bold t))))
 ;; `(gnus-emphasis-highlight-words		((t (:foreground "yellow" :background "black"))))
 ;; `(gnus-emphasis-italic			((t (:foreground nil :background nil))))
 ;; `(gnus-emphasis-strikethru			((t (:foreground nil :background nil))))
 ;; `(gnus-emphasis-underline			((t (:foreground nil :background nil :underline t))))
 ;; `(gnus-emphasis-underline-bold		((t (:foreground nil :background nil :underline t :bold t))))
 ;; `(gnus-emphasis-underline-bold-italic	((t (:foreground nil :background nil :underline t :bold t))))
 ;; `(gnus-emphasis-underline-italic		((t (:foreground nil :background nil :underline t))))
 ;; `(gnus-group-mail-1				((t (:foreground ,material/blue :background nil :bold t))))
 ;; `(gnus-group-mail-1-empty			((t (:foreground ,material/blue :background nil))))
 ;; `(gnus-group-mail-2				((t (:foreground ,material/lighter-blue :background nil :bold t))))
 ;; `(gnus-group-mail-2-empty			((t (:foreground ,material/lighter-blue :background nil))))
 ;; `(gnus-group-mail-3				((t (:foreground ,material/light-blue :background nil :bold t))))
 ;; `(gnus-group-mail-3-empty			((t (:foreground ,material/light-blue :background nil))))
 ;; `(gnus-group-mail-low			((t (:foreground ,material/yellow :background nil :bold t))))
 ;; `(gnus-group-mail-low-empty			((t (:foreground ,material/yellow :background nil))))
 ;; `(gnus-group-news-1				((t (:foreground "PaleTurquoise" :background nil :bold t))))
 ;; `(gnus-group-news-1-empty			((t (:foreground "PaleTurquoise" :background nil))))
 ;; `(gnus-group-news-2				((t (:foreground "turquoise" :background nil :bold t))))
 ;; `(gnus-group-news-2-empty			((t (:foreground "turquoise" :background nil))))
 ;; `(gnus-group-news-3				((t (:foreground nil :background nil :bold t))))
 ;; `(gnus-group-news-3-empty			((t (:foreground nil :background nil))))
 ;; `(gnus-group-news-4				((t (:foreground nil :background nil :bold t))))
 ;; `(gnus-group-news-4-empty			((t (:foreground nil :background nil))))
 ;; `(gnus-group-news-5				((t (:foreground nil :background nil :bold t))))
 ;; `(gnus-group-news-5-empty			((t (:foreground nil :background nil))))
 ;; `(gnus-group-news-6				((t (:foreground nil :background nil :bold t))))
 ;; `(gnus-group-news-6-empty			((t (:foreground nil :background nil))))
 ;; `(gnus-group-news-low			((t (:foreground "DarkTurquoise" :background nil :bold t))))
 ;; `(gnus-group-news-low-empty			((t (:foreground "DarkTurquoise" :background nil))))
 ;; `(gnus-header-content			((t (:inherit message-header-other))))
 ;; `(gnus-header-from				((t (:inherit message-header-other))))
 ;; `(gnus-header-name				((t (:inherit message-header-name))))
 ;; `(gnus-header-newsgroups			((t (:inherit message-header-newsgroups))))
 ;; `(gnus-header-subject			((t (:inherit message-header-subject))))
 ;; `(gnus-server-agent				((t (:foreground "PaleTurquoise" :background nil :bold t))))
 ;; `(gnus-server-closed				((t (:foreground "LightBlue" :background nil))))
 ;; `(gnus-server-denied				((t (:foreground "pink" :background nil :bold t))))
 ;; `(gnus-server-offline			((t (:foreground "yellow" :background nil :bold t))))
 ;; `(gnus-server-opened				((t (:foreground "green1" :background nil :bold t))))
 ;; `(gnus-signature				((t (:foreground nil :background nil))))
 ;; `(gnus-splash				((t (:foreground "#cccccc" :background nil))))
 ;; `(gnus-summary-cancelled			((t (:foreground "yellow" :background "black"))))
 ;; `(gnus-summary-high-ancient			((t (:foreground "SkyBlue" :background nil :bold t))))
 ;; `(gnus-summary-high-read			((t (:foreground "PaleGreen" :background nil :bold t))))
 ;; `(gnus-summary-high-ticked			((t (:foreground "pink" :background nil :bold t))))
 ;; `(gnus-summary-high-undownloaded		((t (:foreground "LightGray" :background nil :bold t))))
 ;; `(gnus-summary-high-unread			((t (:foreground nil :background nil :bold t))))
 ;; `(gnus-summary-low-ancient			((t (:foreground "SkyBlue" :background nil))))
 ;; `(gnus-summary-low-read			((t (:foreground "PaleGreen" :background nil))))
 ;; `(gnus-summary-low-ticked			((t (:foreground "pink" :background nil))))
 ;; `(gnus-summary-low-undownloaded		((t (:foreground "LightGray" :background nil))))
 ;; `(gnus-summary-low-unread			((t (:foreground nil :background nil))))
 ;; `(gnus-summary-normal-ancient		((t (:inherit default))))
 ;; `(gnus-summary-normal-read			((t (:foreground ,material/green :background nil))))
 ;; `(gnus-summary-normal-ticked			((t (:foreground ,material/orange :background nil))))
 ;; `(gnus-summary-normal-undownloaded		((t (:foreground ,material/dark-gray :background nil))))
 ;; `(gnus-summary-normal-unread			((t (:foreground ,material/light-blue :background nil))))
 ;; `(gnus-summary-selected			((t (:foreground nil :background nil :underline t))))

 ;; `(twittering-timeline-footer-face	((t (:foreground nil :background nil :inherit font-lock-function-name-face))))
 ;; `(twittering-timeline-header-face	((t (:foreground nil :background nil :inherit font-lock-function-name-face))))
 ;; `(twittering-uri-face		((t (:foreground nil :background nil :underline t))))
 ;; `(twittering-username-face		((t (:foreground nil :background nil :inherit font-lock-keyword-face :underline t))))

 ;; `(highlight-indentation-current-column-face ((t (:foreground nil :background ,material/gray))))
 ;; `(highlight-indentation-face                ((t (:foreground nil :background ,material/darkest-gray))))

 )

(custom-theme-set-variables
 'material
 ;; IBuffer
 `(ibuffer-title-face 'helm-source-header)
 `(ibuffer-filter-group-name-face 'helm-source-header)
 `(ibuffer-deletion-face 'error)
 `(ibuffer-marked-face 'helm-visible-mark)

 ;; CUA
 `(cua-global-mark-cursor-color "[material:cursor-special-bg]")
 `(cua-normal-cursor-color "[material:cursor-normal-bg]")
 `(cua-overwrite-cursor-color "[material:cursor-overwrite-bg]")
 `(cua-read-only-cursor-color "[material:cursor-read-only-bg]")
 ;; ANSI
 `(ansi-color-names-vector
   ["[material:black]" "[material:red]" "[material:green]" "[material:yellow]" "[material:blue]" "[material:magenta]" "[material:cyan]" "[material:white]"])
 )


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;;;###autoload
(defun material-theme()
  "Apply the material-theme."
  (interactive)
  (load-theme 'material t))


(provide-theme 'material)
;;; material-theme.el ends here
