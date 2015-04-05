;;; tty-format-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "tty-format" "tty-format.el" (21780 744 0 0))
;;; Generated autoloads from tty-format.el

(add-to-list 'format-alist '(ansi-colors "ANSI SGR escape sequence colours and fonts." nil ansi-format-decode ansi-format-encode t nil))

(autoload 'ansi-format-encode "tty-format" "\
Sorry, cannot encode `ansi-colors' format.
This function is designed for use in `format-alist'.

There's no support for re-encoding to save a file in
`ansi-colors' format.  (But of course you can copy into another
document with a format that does support saving.)

\(fn BEG END BUFFER)" nil nil)

(autoload 'ansi-format-decode "tty-format" "\
Decode ANSI SGR control sequences between BEG and END into faces.
This function is designed for use in `format-alist'.

ANSI standard \"Esc [ ... m\" terminal control sequences are
turned into corresponding Emacs faces, using `ansi-colours'.

There's no automatic detection of this format, because those
escape sequences could too easily occur in unrelated binary data.
Decode files with an explicit \\[format-decode-buffer], or see
`tty-format-guess' to try automated guessing on text files.

\(fn BEG END)" nil nil)

(add-to-list 'format-alist '(backspace-overstrike "Backspace overstriking for bold and underline." nil backspace-overstrike-decode backspace-overstrike-encode t nil))

(autoload 'backspace-overstrike-encode "tty-format" "\
Sorry, cannot encode `backspace-overstrike' format.
This function is designed for use in `format-alist'.

There's no support for re-encoding to save a file in
`backspace-overstrike' format.  (But of course you can copy into
another document with a format that does support saving.)

\(fn BEG END BUFFER)" nil nil)

(autoload 'backspace-overstrike-decode "tty-format" "\
Decode backspace overstrike sequences between BEG and END into faces.
This function is designed for use in `format-alist'.

The sequences recognised are:

    X backspace X       -- bold
    _ backspace X       -- underline
    U+203E backspace X  -- overline (when unicode available)
    + backspace o       -- bullet point (latin-1 middle dot,
                           as per groff \\=\\[bu]])

Character overstriking like this was used in the past on line
printers and is still sometimes found in text files.

There's no automatic detection of this format in `format-alist',
because backspace sequences could too easily occur in unrelated
binary data.  Decode with an explicit \\[format-decode-buffer] or
see `tty-format-guess' to try automated guessing on text files.

\(fn BEG END)" nil nil)

(autoload 'tty-format-guess "tty-format" "\
Decode text files containing ANSI SGR or backspace sequences.
This is designed for use from `find-file-hook' (or
`find-file-hooks').

If the buffer filename is \".txt\" or \"README\" and there's any
ANSI SGR escapes or backspace overstriking then call
`format-decode-buffer' to decode with `ansi-colors' and/or
`backspace-overstrike' formats respectively.

It'd be too dangerous to look at every file for escape and
backspace sequences, they could too easily occur in binary data
like an image file.  The idea of this function is to check just
text files, presuming you're confident all \".txt\" files should
be ordinary text.

If you normally use this guess but found it didn't notice then
remember the formats can always be decoded explicitly with

    \\[format-decode-buffer] backspace-overstrike
and/or
    \\[format-decode-buffer] ansi-colors

\(fn)" nil nil)

(if (eval-when-compile (boundp 'find-file-hook)) (custom-add-option 'find-file-hook 'tty-format-guess) (custom-add-option 'find-file-hooks 'tty-format-guess))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; tty-format-autoloads.el ends here