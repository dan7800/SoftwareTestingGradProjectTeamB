package com.android.ex.editstyledtext;

import android.widget.*;
import android.graphics.drawable.*;
import java.util.*;
import android.text.style.*;
import android.view.inputmethod.*;
import android.graphics.*;
import android.os.*;
import android.view.*;
import android.text.*;

public final class EditStyledText extends EditText
{
    private static CharSequence afI;
    private static CharSequence afJ;
    private static CharSequence afK;
    private static final NoCopySpan$Concrete afP;
    private ArrayList<c> afL;
    private Drawable afM;
    private i afN;
    private InputConnection afO;
    
    static {
        afP = new NoCopySpan$Concrete();
    }
    
    private void ni() {
        this.afN.by(20);
    }
    
    private void nk() {
        this.afN.by(1);
    }
    
    private void nl() {
        this.afN.by(7);
    }
    
    public final int bx(final int n) {
        if (n < 0 || n > this.getText().length()) {
            return -16777216;
        }
        final ForegroundColorSpan[] array = (ForegroundColorSpan[])this.getText().getSpans(n, n, (Class)ForegroundColorSpan.class);
        if (array.length > 0) {
            return array[0].getForegroundColor();
        }
        return -16777216;
    }
    
    protected final void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.afN != null) {
            this.afN.nt();
        }
    }
    
    public final int getBackgroundColor() {
        return this.afN.getBackgroundColor();
    }
    
    public final boolean nh() {
        boolean b;
        if (this.afL != null) {
            final Iterator<c> iterator = this.afL.iterator();
            b = false;
            while (iterator.hasNext()) {
                b |= iterator.next().nh();
            }
        }
        else {
            b = false;
        }
        return b;
    }
    
    public final void nj() {
        this.afN.by(21);
    }
    
    public final boolean nm() {
        return this.afN.nm();
    }
    
    public final boolean nn() {
        return this.afN.nn();
    }
    
    protected final void onCreateContextMenu(final ContextMenu contextMenu) {
        super.onCreateContextMenu(contextMenu);
        final j onMenuItemClickListener = new j(this, (byte)0);
        if (EditStyledText.afI != null) {
            contextMenu.add(0, 16776961, 0, EditStyledText.afI).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)onMenuItemClickListener);
        }
        if (this.afN.nv() && EditStyledText.afJ != null) {
            contextMenu.add(0, 16776962, 0, EditStyledText.afJ).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)onMenuItemClickListener);
        }
        if (this.afN.ny()) {
            contextMenu.add(0, 16908322, 0, EditStyledText.afK).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)onMenuItemClickListener).setAlphabeticShortcut('v');
        }
    }
    
    public final InputConnection onCreateInputConnection(final EditorInfo editorInfo) {
        return this.afO = (InputConnection)new k(super.onCreateInputConnection(editorInfo), this);
    }
    
    protected final void onFocusChanged(final boolean b, final int n, final Rect rect) {
        super.onFocusChanged(b, n, rect);
        if (b) {
            this.ni();
        }
        else if (!this.nh()) {
            this.nj();
        }
    }
    
    public final void onRestoreInstanceState(final Parcelable parcelable) {
        if (!(parcelable instanceof EditStyledText$SavedStyledTextState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        final EditStyledText$SavedStyledTextState editStyledText$SavedStyledTextState = (EditStyledText$SavedStyledTextState)parcelable;
        super.onRestoreInstanceState(editStyledText$SavedStyledTextState.getSuperState());
        this.setBackgroundColor(editStyledText$SavedStyledTextState.mu);
    }
    
    public final Parcelable onSaveInstanceState() {
        final EditStyledText$SavedStyledTextState editStyledText$SavedStyledTextState = new EditStyledText$SavedStyledTextState(super.onSaveInstanceState());
        editStyledText$SavedStyledTextState.mu = this.afN.getBackgroundColor();
        return (Parcelable)editStyledText$SavedStyledTextState;
    }
    
    protected final void onTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
        if (this.afN != null) {
            this.afN.b(this.getText(), n, n2, n3);
            this.afN.a(this.getText(), n, n2, n3);
            if (n3 > n2) {
                this.afN.I(n, n + n3);
            }
            else if (n2 < n3) {
                this.afN.nu();
            }
            if (this.afN.nw()) {
                if (n3 > n2) {
                    this.afN.nq();
                    this.afN.nr();
                }
                else if (n3 < n2) {
                    this.afN.by(22);
                }
            }
        }
        super.onTextChanged(charSequence, n, n2, n3);
    }
    
    public final boolean onTextContextMenuItem(final int n) {
        final boolean b = this.getSelectionStart() != this.getSelectionEnd();
        switch (n) {
            case 16908319: {
                this.afN.ai(true);
                return true;
            }
            case 16908328: {
                this.afN.np();
                this.afN.nA();
                break;
            }
            case 16908329: {
                this.afN.nr();
                break;
            }
            case 16908322: {
                this.afN.by(2);
                return true;
            }
            case 16908321: {
                if (b) {
                    this.nk();
                    return true;
                }
                this.afN.ai(false);
                this.nk();
                return true;
            }
            case 16908320: {
                if (b) {
                    this.nl();
                    return true;
                }
                this.afN.ai(false);
                this.nl();
                return true;
            }
            case 16776961: {
                this.afN.by(12);
                return true;
            }
            case 16776962: {
                this.afN.ns();
                return true;
            }
            case 16776963: {
                this.ni();
                return true;
            }
            case 16776964: {
                this.nj();
                return true;
            }
        }
        return super.onTextContextMenuItem(n);
    }
    
    public final boolean onTouchEvent(final MotionEvent motionEvent) {
        boolean b;
        if (motionEvent.getAction() == 1) {
            this.cancelLongPress();
            final boolean nm = this.afN.nm();
            if (!nm) {
                this.ni();
            }
            final int selectionStart = Selection.getSelectionStart((CharSequence)this.getText());
            final int selectionEnd = Selection.getSelectionEnd((CharSequence)this.getText());
            b = super.onTouchEvent(motionEvent);
            if (this.isFocused() && this.afN.nx() == 0) {
                if (nm) {
                    this.afN.J(Selection.getSelectionStart((CharSequence)this.getText()), Selection.getSelectionEnd((CharSequence)this.getText()));
                }
                else {
                    this.afN.J(selectionStart, selectionEnd);
                }
            }
            this.afN.nq();
            this.afN.nu();
        }
        else {
            b = super.onTouchEvent(motionEvent);
        }
        if (this.afL != null) {
            final Iterator<c> iterator = this.afL.iterator();
            while (iterator.hasNext()) {
                iterator.next();
            }
        }
        return b;
    }
    
    public final void setBackgroundColor(final int n) {
        if (n != 16777215) {
            super.setBackgroundColor(n);
        }
        else {
            this.setBackgroundDrawable(this.afM);
        }
        this.afN.setBackgroundColor(n);
        this.afN.nt();
    }
}
