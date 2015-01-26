;;; material-theme.el --- Emacs material-inspired dark theme
;;; Commentary:
;;; Based on ample theme by Jordon Biondo <jordonbiondo@gmail.com>
;;; Code:
(deftheme material "Material-inspired dark theme.")

;; Set faces
(custom-theme-set-faces
 `material ;; you must use the same theme name here...
 `(default ((t (:foreground "#dadada" :background "#121212"))))
 `(fringe  ((t (:background "#1f1f1f"))))
 `(vertical-border ((t ( :foreground "#3f51b5" :background "#3f51b5"))))

 ;; Cursor
 `(cursor  ((t (:foreground "#121212" :background "#ffc400"))))
 `(cua-global-mark ((t (:foreground "#121212" :background "#ffc400"))))
 `(hl-line ((t (:background "#1f1f1f"))))

 ;; Basic
 `(region               ((t (:background "#303f9f"))))
 `(secondary-selection  ((t (:background "#263238"))))
 `(cua-rectangle        ((t (:inherit region))))
 `(highlight            ((t (:foreground "#121212" :background "#ff2d6f"))))
 `(link                 ((t ( :foreground "#738ffe"))))

 ;; Errors and warnings
 `(error                ((t (:foreground "#e84e40"))))
 `(warning              ((t (:foreground "#ffa726"))))
 `(success              ((t (:foreground "#2baf2b"))))
 `(compilation-error    ((t (:foreground "#e84e40" :bold t))))
 `(compilation-warning  ((t (:foreground "#ffa726" :bold t))))
 `(compilation-info     ((t (:foreground "#2baf2b" :bold t))))

 ;; Mini buff
 `(minibuffer-prompt ((t (:foreground "#ffc400" :bold t :background nil))))

 ;; Mode line & header line & powerline
 `(mode-line-buffer-id ((t (:foreground "#ffc400"))))
 `(mode-line-inactive  ((t (:box (:line-width 1 :color "#3f51b5") :foreground "#969696" :background "#1f1f1f" :slant italic))))
 `(mode-line           ((t (:box (:line-width 1 :color "#3f51b5") :foreground "#ffffff" :background "#3f51b5" :weight bold))))
 `(header-line         ((t (:box (:line-width 1 :color "#3f51b5") :foreground "#7986cb" :background "#292929" :bold t))))
 `(popup-tip-face      ((t (:foreground "#1f1f1f" :background "#dadada"))))
 `(powerline-active1   ((t (:foreground "#ffffff" :background "#3f51b5"))))
 `(powerline-active2   ((t (:foreground "#ffffff" :background "#3f51b5"))))

 ;; Search
 `(isearch		((t (:foreground "#121212" :background "#ff2d6f" :bold t))))
 `(lazy-highlight	((t (:foreground "#121212" :background "#ffc400" :bold t))))
 `(isearch-fail         ((t (:foreground "#dadada" :background "#851414"))))

 ;; Standard font lock
 `(font-lock-builtin-face           ((t (:foreground "#26c6da"))))
 `(font-lock-comment-face           ((t (:foreground "#757575"))))
 `(font-lock-comment-delimiter-face ((t (:foreground "#424242"))))
 `(font-lock-function-name-face     ((t (:foreground "#d4e157"))))
 `(font-lock-keyword-face           ((t (:foreground "#738ffe"))))
 `(font-lock-string-face            ((t (:foreground "#26a69a"))))
 `(font-lock-preprocessor-face      ((t (:foreground "#ba68c8"))))
 `(font-lock-type-face              ((t (:foreground "#ec407a"))))
 `(font-lock-constant-face          ((t (:foreground "#2baf2b"))))
 `(font-lock-warning-face           ((t (:foreground "#ffa726" :bold t))))
 `(font-lock-variable-name-face     ((t (:foreground "#9ccc65"))))
 `(font-lock-doc-face               ((t (:foreground "#8d6e63"))))
 `(font-lock-negation-face          ((t (:foreground "#ffa726" :bold t))))

 ;; Which func
 `(which-func ((t (:inherit font-lock-function-name-face :bold t))))

 ;; Latex
 `(font-latex-sectioning-5-face  ((t (:foreground "#d4e157" :weight bold ))))
 `(font-latex-warning-face       ((t (:inherit warning ))))
 `(font-latex-bold-face          ((t (:inherit default :weight bold))))
 `(font-latex-italic-face        ((t (:inherit default :slant italic))))
 `(font-latex-string-face        ((t (:inherit font-lock-string-face))))
 `(font-latex-math-face          ((t (:inherit font-lock-string-face))))
 `(font-latex-verbatim-face      ((t (:inherit font-lock-preprocessor-face))))
 `(font-latex-sedate-face        ((t (:inherit font-lock-keyword-face))))

 ;; Markdown
 `(markdown-bold-face    ((t (:inherit default :weight bold))))
 `(markdown-italic-face  ((t (:inherit default :slant italic))))
 `(markdown-link-face    ((t (:inherit link))))
 `(markdown-url-face     ((t (:inherit font-lock-string-face))))
 `(markdown-header-face  ((t (:foreground "#d4e157" :weight bold))))
 `(markdown-math-face    ((t (:inherit font-lock-string-face))))
 `(markdown-pre-face     ((t (:inherit font-lock-preprocessor-face))))

 ;; Diff
 `(diff-added             ((t (:foreground nil                          :background "#144517"))))
 `(diff-changed           ((t (:foreground nil                          :background "#994300"))))
 `(diff-removed           ((t (:foreground nil                          :background "#851414"))))
 `(diff-context           ((t (:foreground "#969696" :background "#121212"))))

 ;; Flyspell
 '(flyspell-duplicate   ((t (:underline (:color "#ffa726" :style line)))))
 '(flyspell-incorrect   ((t (:underline (:color "#e84e40" :style line)))))

 ;; Flyckeck
 '(flycheck-info       ((t (:underline (:color "#2baf2b" :style wave)))))
 '(flycheck-error      ((t (:underline (:color "#e84e40"   :style wave)))))
 '(flycheck-warning    ((t (:underline (:color "#ffa726" :style wave)))))

 ;; RTags outlines
 '(rtags-errline       ((t (:underline (:color "#e84e40"   :style wave)))))
 '(rtags-warnline      ((t (:underline (:color "#ffa726" :style wave)))))
 '(rtags-fixitline     ((t (:underline (:color "#2baf2b" :style wave)))))

 ;; Helm
 `(helm-M-x-key              ((t (:foreground "#738ffe" :underline nil))))
 `(helm-candidate-number     ((t (:foreground "#ffffff" :background "#3f51b5"))))
 `(helm-ff-directory         ((t (:foreground "#ffffff" :background "#121212" :bold t))))
 `(helm-ff-executable        ((t (:foreground "#d4e157"))))
 `(helm-ff-file              ((t (:foreground "#dadada"))))
 `(helm-ff-invalid-symlink   ((t (:foreground "#ff2d6f"))))
 `(helm-ff-prefix            ((t (:foreground "#ff2d6f"))))
 `(helm-ff-symlink           ((t (:foreground "#9ccc65"))))
 `(helm-ff-dotted-directory  ((t (:foreground "#738ffe" :bold t))))
 `(helm-header               ((t (:foreground "#ffffff" :background "#3f51b5"))))
 `(helm-match                ((t (:foreground "#ff2d6f" :background "#121212"))))
 `(helm-selection            ((t (:foreground "#dadada" :background "#303f9f" :bold t))))
 `(helm-selection-line       ((t (:foreground "#dadada" :background "#303f9f"))))
 `(helm-source-header        ((t (:foreground "#7986cb" :background "#292929" :bold t))))
 `(helm-visible-mark         ((t (:foreground "#ffc400" :background nil :bold t))))
 `(helm-buffer-directory     ((t (:inherit helm-ff-directory ))))
 `(helm-buffer-file          ((t (:inherit default))))
 `(helm-buffer-not-saved     ((t (:foreground "#ff2d6f"))))
 `(helm-buffer-process       ((t (:foreground "#d4e157"))))
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
 `(company-preview-common            ((t (:foreground "#ff2d6f"                                             ))))
 `(company-scrollbar-bg              ((t (:foreground nil                           :background "#1f1f1f"    ))))
 `(company-scrollbar-fg              ((t (:foreground nil                           :background "#303f9f"    ))))
 `(company-tooltip                   ((t (:foreground "#dadada"          :background "#292929"          :bold t))))
 `(company-tooltip-common            ((t (:foreground "#ff2d6f"    :background "#292929"          :bold t))))
 `(company-tooltip-common-selection  ((t (:foreground "#ff2d6f"    :background "#303f9f" :bold t))))
 `(company-tooltip-mouse             ((t (:foreground "#dadada" :background "#303f9f" :bold t))))
 `(company-tooltip-selection         ((t (:foreground "#dadada" :background "#303f9f" :bold t))))
 `(company-tooltip-search            ((t (:foreground "#121212" :background "#ff2d6f" :bold t))))
 `(company-tooltip-annotation        ((t (:foreground "#d4e157"           :background "#292929"         ))))
 `(company-template-field            ((t (:foreground "#121212" :background "#ff2d6f"))))
 ;;`(company-echo               ((t (:foreground nil :background nil))))
 ;;`(company-echo-common ((t (:foreground nil :background "firebrick4"))))
 ;;`(company-preview ((t (:foreground "wheat" :background "blue4"))))
 ;;`(company-preview-search ((t (:foreground "wheat" :background "blue1"))))

 ;; Yasnippet
 `(yas-field-highlight-face            ((t (:foreground "#121212" :background "#ff2d6f"))))

 ;; Rainbow delim
 `(rainbow-delimiters-depth-1-face ((t (:foreground "#d4e157" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "#dadada"))))
 `(rainbow-delimiters-depth-2-face ((t (:foreground "#738ffe" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "#dadada"))))
 `(rainbow-delimiters-depth-3-face ((t (:foreground "#ec407a" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "#dadada"))))
 `(rainbow-delimiters-depth-4-face ((t (:foreground "#26a69a" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "#dadada"))))
 `(rainbow-delimiters-depth-5-face ((t (:foreground "#8d6e63" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "#dadada"))))
 `(rainbow-delimiters-depth-6-face ((t (:foreground "#9ccc65" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "#dadada"))))
 `(rainbow-delimiters-depth-7-face ((t (:foreground "#ab47bc" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "#dadada"))))
 `(rainbow-delimiters-depth-8-face ((t (:foreground "#26c6da" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "#dadada"))))
 `(rainbow-delimiters-depth-9-face ((t (:foreground "#2baf2b" :background nil :weight ultra-bold :width ultra-expanded :distant-foreground "#dadada"))))
 `(rainbow-delimiters-unmatched-face ((t (:inherit error))))

 ;; Show paren
 `(show-paren-match    ((t (:foreground nil :background "#607d8b" :bold t))))
 `(show-paren-mismatch ((t (:foreground nil :background "#e84e40" :bold t))))

 ;; Smartparens
 '(sp-show-pair-match-face    ((t (:inherit show-paren-match))))
 '(sp-show-pair-mismatch-face ((t (:inherit show-paren-mismatch))))
 '(sp-pair-overlay-face       ((t (:inherit secondary-selection))))

 ;; Whitespace Mode
 `(whitespace-empty            ((t (:foreground "#757575" :background "#1f1f1f"))))
 `(whitespace-hspace           ((t (:foreground "#757575" :background "#1f1f1f"))))
 `(whitespace-indentation      ((t (:foreground "#757575" :background "#1f1f1f"))))
 `(whitespace-line             ((t (:foreground nil                               :background nil
                                                :underline (:color "#757575" :style wave)))))
 `(whitespace-newline          ((t (:foreground nil                               :background nil))))
 `(whitespace-space            ((t (:foreground nil                               :background "#1f1f1f"))))
 `(whitespace-space-after-tab  ((t (:foreground "#757575" :background "#1f1f1f"))))
 `(whitespace-space-before-tab ((t (:foreground "#757575" :background "#1f1f1f"))))
 `(whitespace-tab              ((t (:foreground "#757575" :background "#1f1f1f"))))
 `(whitespace-trailing         ((t (:foreground "#757575" :background "#1f1f1f"))))
 `(trailing-whitespace         ((t (:foreground "#757575" :background "#1f1f1f"))))

 ;;Undo-tree
 `(undo-tree-visualizer-active-branch-face ((t (:inherit default))))
 `(undo-tree-visualizer-default-face ((t (:inherit font-lock-comment-face))))
 `(undo-tree-visualizer-register-face ((t (:foreground "#ec407a" :background nil))))
 `(undo-tree-visualizer-current-face ((t (:foreground "#dadada" :box (:line-width 3 :color "#303f9f" :style released-button) :weight bold))))
 `(undo-tree-visualizer-unmodified-face ((t (:foreground "#2baf2b" :background nil))))

 ;; Outline
 `(outline-1 ((t (:foreground "#d4e157" :background nil))))
 `(outline-2 ((t (:foreground "#2baf2b" :background nil))))
 `(outline-3 ((t (:foreground "#738ffe" :background nil))))
 `(outline-4 ((t (:foreground "#ec407a" :background nil))))
 `(outline-5 ((t (:foreground "#8d6e63" :background nil))))
 `(outline-6 ((t (:foreground "#8d6e63" :background nil))))
 `(outline-7 ((t (:foreground "#8d6e63" :background nil))))
 `(outline-8 ((t (:foreground "#8d6e63" :background nil))))

 ;; Org-mode
 `(org-done ((t (:foreground "#2baf2b" :background nil))))
 `(org-todo ((t (:foreground "#ffa726" :background nil))))
 `(org-date ((t (:foreground "#26c6da" :weight bold))))
 ;; `(org-hide ((t (:foreground "#121212" :background nil))))
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


 ;; VC
 `(diff-hl-insert  ((t (:foreground "#72d572"        :background "#144517"))))
 `(diff-hl-delete  ((t (:foreground "#f69988"     :background "#851414"))))
 `(diff-hl-change  ((t (:foreground "#ffcc80"     :background "#994300"))))

 ;;Magit
 `(magit-section-title			((t (:foreground "#7986cb"   :background "#292929" :weight bold))))
 `(magit-tag					((t (:foreground "#9ccc65"        :background nil))))
 `(magit-branch				((t (:foreground "#26a69a"     :background nil))))
 `(magit-log-sha1				((t (:foreground "#ec407a"        :background nil))))

 `(magit-item-highlight			((t (:foreground "#dadada" :background "#303f9f"))))
 `(magit-item-mark				((t (:foreground "#ffc400"   :background "#121212"))))

 `(magit-diff-add				((t (:foreground "#72d572"        :background "#144517"))))
 `(magit-diff-del				((t (:foreground "#f69988"     :background "#851414"))))
 `(magit-diff-none				((t (:foreground "#969696"    ))))
 `(magit-diff-file-header			((t (:foreground "#d4e157" :bold t        ))))
 `(magit-diff-hunk-header			((t (:foreground "#d4e157"                ))))

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

 `(magit-whitespace-warning-face		((t (:foreground "#757575" :background "#1f1f1f"))))

 ;; Dired
 `(dired-header      ((t (:foreground "#7986cb"    :background "#292929" :bold t))))
 `(dired-directory   ((t (:foreground "#ffffff" :background "#121212" :bold t))))
 `(dired-symlink     ((t (:foreground "#9ccc65"      :background "#121212"))))
 `(dired-perm-write  ((t (:foreground "#ff2d6f"     :background "#121212" :bold t))))



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
 ;; `(ac-candidate-face			((t (:foreground "black" :background "#dadada"))))
 ;; `(ac-selection-face			((t (:foreground "#dadada" :background ,material/blue))))
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

 ;; `(diff-file-header       ((t (:foreground "#121212" :background "grey60" :bold t))))
 ;; `(diff-function          ((t (:foreground "#121212" :background "grey50"))))
 ;; `(diff-header            ((t (:foreground "#121212" :background "grey50"))))
 ;; `(diff-hunk-header       ((t (:foreground "#121212" :background "grey50"))))
 ;; `(diff-index             ((t (:foreground "#121212" :background "grey50"))))
 ;; `(diff-indicator-added   ((t (:inherit diff-added))))
 ;; `(diff-indicator-changed ((t (:inherit diff-changed))))
 ;; `(diff-indicator-removed ((t (:inherit diff-removed))))
 ;; `(diff-nonexistent       ((t (:foreground nil :background "grey70"))))
 ;; `(diff-refine-added      ((t (:foreground nil :background "#649694"))))
 ;; `(diff-refine-changed    ((t (:foreground nil :background "#8f8f40"))))
 ;; `(diff-refine-removed    ((t (:foreground nil :background "#694949"))))

 ;; `(ediff-fine-diff-A			((t (:foreground "#dadada" :background "#694949"))))
 ;; `(ediff-fine-diff-B			((t (:foreground "#dadada" :background "#496949"))))
 ;; `(ediff-fine-diff-C			((t (:foreground "#dadada" :background "#696949"))))
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
 `(cua-global-mark-cursor-color "#738ffe")
 `(cua-normal-cursor-color "#ffc400")
 `(cua-overwrite-cursor-color "#ff2d6f")
 `(cua-read-only-cursor-color "#2baf2b")
 ;; ANSI
 `(ansi-color-names-vector
   ["#121212" "#e84e40" "#2baf2b" "#d4e157" "#738ffe" "#ec407a" "#26c6da" "#dadada"])
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
