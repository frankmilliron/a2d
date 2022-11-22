;;; ============================================================
;;; Accelerator (speed) control
;;;
;;; Not as full featured as lib/normfast.s - just used for
;;; *temporary* speed changes e.g. around alert sounds.
;;;
;;; Currently handles:
;;; * IIgs built-in accelerator
;;; * Mac IIe Option Card built-in accelerator
;;; ============================================================
;;; Exposes two procs:
;;; * `SlowSpeed` - slows system down to 1MHz
;;; * `ResumeSpeed` - restores accelerator to previous state
;;; ============================================================
;;; Required definitions:
;;; * `is_iigs_flag` - high bit set if on IIgs
;;; * `is_iiecard_flag` - high bit set if on Mac IIe Option Card
;;; ============================================================

;;; Assert: Aux LC is banked in; interrupts are inhibited
;;; NOTE: Must be called after `SlowSpeed`
.proc ResumeSpeed
        ;; Restore speed on IIgs
        bit     is_iigs_flag
    IF_NS
        ResumeSpeed::saved_cyareg := *+1
        lda     #SELF_MODIFIED_BYTE
        sta     CYAREG
    END_IF

        ;; Restore speed on Mac IIe Option Card
        bit     is_iiecard_flag
    IF_NS
        ResumeSpeed::saved_maciie := *+1
        lda     #SELF_MODIFIED_BYTE
        sta     MACIIE
    END_IF

        rts
.endproc

;;; Assert: Aux LC is banked in; interrupts are inhibited
;;; NOTE: Must be followed by a call to `ResumeSpeed`
.proc SlowSpeed
        ;; Slow down on IIgs
        bit     is_iigs_flag
    IF_NS
        lda     CYAREG
        sta     ResumeSpeed::saved_cyareg
        and     #%01111111      ; clear bit 7
        sta     CYAREG
    END_IF

        ;; Slow down on Mac IIe Option Card
        ;; Per Technical Note: Apple IIe #10: The Apple IIe Card for the Macintosh LC
        ;; http://www.1000bit.it/support/manuali/apple/technotes/aiie/tn.aiie.10.html
        bit     is_iiecard_flag
    IF_NS
        lda     MACIIE
        sta     ResumeSpeed::saved_maciie
        and     #%11111011      ; clear bit 2
        sta     MACIIE
    END_IF

        rts
.endproc