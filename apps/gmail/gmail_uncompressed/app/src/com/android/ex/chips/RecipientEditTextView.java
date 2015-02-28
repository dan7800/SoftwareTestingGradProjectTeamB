package com.android.ex.chips;

import java.util.regex.*;
import android.app.*;
import android.content.res.*;
import android.text.method.*;
import android.util.*;
import android.graphics.*;
import android.text.util.*;
import android.text.*;
import android.graphics.drawable.*;
import com.android.ex.chips.a.*;
import android.view.inputmethod.*;
import android.content.*;
import java.util.*;
import android.view.accessibility.*;
import android.view.*;
import android.widget.*;
import android.os.*;

public class RecipientEditTextView extends MultiAutoCompleteTextView implements DialogInterface$OnDismissListener, ActionMode$Callback, GestureDetector$OnGestureListener, View$OnClickListener, AdapterView$OnItemClickListener, TextView$OnEditorActionListener, G, o
{
    private static final String adW;
    private static final Pattern adX;
    private static final int adY;
    private static int adZ;
    private DropdownChipLayouter acb;
    private d aeA;
    private TextView aeB;
    private boolean aeC;
    private int aeD;
    final ArrayList<String> aeE;
    private int aeF;
    private int aeG;
    private boolean aeH;
    private boolean aeI;
    ArrayList<b> aeJ;
    private ArrayList<b> aeK;
    private GestureDetector aeL;
    private Dialog aeM;
    private String aeN;
    private ScrollView aeO;
    private boolean aeP;
    private boolean aeQ;
    private boolean aeR;
    private final Runnable aeS;
    private U aeT;
    private Runnable aeU;
    private Runnable aeV;
    private Z aeW;
    private final Rect aea;
    private final int[] aeb;
    private Drawable aec;
    private Drawable aed;
    private Drawable aee;
    private Drawable aef;
    private float aeg;
    private float aeh;
    private float aei;
    private int aej;
    private int aek;
    private final int ael;
    private boolean aem;
    private int aen;
    private int aeo;
    private Paint aep;
    private MultiAutoCompleteTextView$Tokenizer aeq;
    private AutoCompleteTextView$Validator aer;
    private TextWatcher aes;
    private View aet;
    private ListPopupWindow aeu;
    private ListPopupWindow aev;
    private View aew;
    private AdapterView$OnItemClickListener aex;
    private b aey;
    private Bitmap aez;
    private Handler mHandler;
    
    static {
        adW = "," + " ";
        adX = Pattern.compile("(\\+[0-9]+[\\- \\.]*)?(1?[ ]*\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.][0-9\\- \\.]+[0-9])");
        adY = "dismiss".hashCode();
        RecipientEditTextView.adZ = -1;
    }
    
    public RecipientEditTextView(final Context context, final AttributeSet set) {
        super(context, set);
        this.aea = new Rect();
        this.aeb = new int[2];
        this.aec = null;
        this.aed = null;
        this.aep = new Paint();
        this.aet = (View)this;
        this.aeE = new ArrayList<String>();
        this.aeF = 0;
        this.aeH = false;
        this.aeI = true;
        this.aeQ = false;
        this.aeS = new I(this);
        this.aeU = new K(this);
        this.aeV = new L(this);
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, E.sT, 0, 0);
        final Resources resources = this.getContext().getResources();
        this.aec = obtainStyledAttributes.getDrawable(E.adI);
        this.aef = obtainStyledAttributes.getDrawable(E.adJ);
        this.aee = obtainStyledAttributes.getDrawable(E.adP);
        this.aed = obtainStyledAttributes.getDrawable(E.adK);
        if (this.aed == null) {
            this.aed = resources.getDrawable(z.adv);
        }
        final int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(E.adN, -1);
        this.aek = dimensionPixelSize;
        this.aej = dimensionPixelSize;
        if (this.aej == -1) {
            final int n = (int)resources.getDimension(y.adq);
            this.aek = n;
            this.aej = n;
        }
        final int aej = (int)resources.getDimension(y.ads);
        if (aej >= 0) {
            this.aej = aej;
        }
        final int aek = (int)resources.getDimension(y.adr);
        if (aek >= 0) {
            this.aek = aek;
        }
        this.aez = BitmapFactory.decodeResource(resources, z.adw);
        this.aeB = (TextView)LayoutInflater.from(this.getContext()).inflate(C.adC, (ViewGroup)null);
        this.aeg = obtainStyledAttributes.getDimensionPixelSize(E.adM, -1);
        if (this.aeg == -1.0f) {
            this.aeg = resources.getDimension(y.adp);
        }
        this.aeh = obtainStyledAttributes.getDimensionPixelSize(E.adL, -1);
        if (this.aeh == -1.0f) {
            this.aeh = resources.getDimension(y.adt);
        }
        this.aeo = obtainStyledAttributes.getInt(E.adH, 1);
        this.aem = obtainStyledAttributes.getBoolean(E.adO, false);
        this.aen = resources.getInteger(B.ady);
        this.aei = resources.getDimensionPixelOffset(y.adu);
        obtainStyledAttributes.recycle();
        final TextPaint paint = this.getPaint();
        this.aea.setEmpty();
        paint.getTextBounds("a", 0, 1, this.aea);
        this.aea.left = 0;
        this.aea.right = 0;
        this.ael = this.aea.height();
        if (RecipientEditTextView.adZ == -1) {
            RecipientEditTextView.adZ = context.getResources().getColor(17170443);
        }
        (this.aeu = new ListPopupWindow(context)).setBackgroundDrawable((Drawable)null);
        (this.aev = new ListPopupWindow(context)).setBackgroundDrawable((Drawable)null);
        this.aeM = new Dialog(context);
        this.aex = (AdapterView$OnItemClickListener)new M(this);
        this.setInputType(0x80000 | this.getInputType());
        this.setOnItemClickListener((AdapterView$OnItemClickListener)this);
        this.setCustomSelectionActionModeCallback((ActionMode$Callback)this);
        this.mHandler = new N(this);
        this.addTextChangedListener(this.aes = (TextWatcher)new ad(this, (byte)0));
        this.aeL = new GestureDetector(context, (GestureDetector$OnGestureListener)this);
        this.setOnEditorActionListener((TextView$OnEditorActionListener)this);
        this.a(new DropdownChipLayouter(LayoutInflater.from(context), context));
    }
    
    private boolean E(final int n, final int n2) {
        return !this.aeH && this.hasFocus() && this.enoughToFilter() && !this.F(n, n2);
    }
    
    private boolean F(final int n, final int n2) {
        if (this.aeH) {
            return true;
        }
        final b[] array = (b[])((Spannable)this.getText()).getSpans(n, n2, (Class)b.class);
        return array != null && array.length != 0;
    }
    
    private void G(final int n, final int selection) {
        if (n == -1 || selection == -1) {
            this.dismissDropDown();
            return;
        }
        final Editable text = this.getText();
        this.setSelection(selection);
        final String substring = this.getText().toString().substring(n, selection);
        if (!TextUtils.isEmpty((CharSequence)substring)) {
            final ae i = ae.i(substring, this.aL(substring));
            QwertyKeyListener.markAsReplaced((Spannable)text, n, selection, "");
            final CharSequence b = this.b(i);
            final int selectionEnd = this.getSelectionEnd();
            if (b != null && n >= 0 && selectionEnd >= 0) {
                text.replace(n, selectionEnd, b);
            }
        }
        this.dismissDropDown();
    }
    
    private int a(final b b) {
        return ((Spannable)this.getText()).getSpanStart((Object)b);
    }
    
    private T a(final ae ae, final TextPaint textPaint, final Drawable drawable, final int color) {
        final T t = new T((byte)0);
        final Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        final int n = (int)this.aeg;
        int n2;
        if (ae.isValid()) {
            n2 = n - rect.top - rect.bottom;
        }
        else {
            n2 = 0;
        }
        final float[] array = { 0.0f };
        textPaint.getTextWidths(" ", array);
        String s = ae.getDisplayName();
        final String mu = ae.mU();
        if (TextUtils.isEmpty((CharSequence)s) || TextUtils.equals((CharSequence)s, (CharSequence)mu)) {
            s = null;
        }
        if (TextUtils.isEmpty((CharSequence)s)) {
            if (!TextUtils.isEmpty((CharSequence)mu)) {
                s = mu;
            }
            else {
                s = new Rfc822Token(s, mu, (String)null).toString();
            }
        }
        final float n3 = this.getWidth() - this.getPaddingLeft() - this.getPaddingRight() - this.aej - this.aek - n2 - array[0] - rect.left - rect.right;
        textPaint.setTextSize(this.aeh);
        if (n3 <= 0.0f && Log.isLoggable("RecipientEditTextView", 3)) {
            Log.d("RecipientEditTextView", "Max width is negative: " + n3);
        }
        final CharSequence ellipsize = TextUtils.ellipsize((CharSequence)s, textPaint, n3, TextUtils$TruncateAt.END);
        final int n4 = (int)textPaint.measureText(ellipsize, 0, ellipsize.length());
        int n5;
        if (ae.isValid()) {
            n5 = this.aej;
        }
        else {
            n5 = this.aek;
        }
        final int max = Math.max(n2 * 2, n2 + (n5 + n4 + this.aek) + rect.left + rect.right);
        t.afe = Bitmap.createBitmap(max, n, Bitmap$Config.ARGB_8888);
        final Canvas canvas = new Canvas(t.afe);
        if (drawable != null) {
            drawable.setBounds(0, 0, max, n);
            drawable.draw(canvas);
        }
        else {
            this.aep.reset();
            this.aep.setColor(color);
            this.aep.setAntiAlias(true);
            final float n6 = n / 2;
            canvas.drawRoundRect(new RectF(0.0f, 0.0f, (float)max, (float)n), n6, n6, this.aep);
        }
        int n7;
        if (this.mF()) {
            n7 = this.aek + rect.left;
        }
        else {
            n7 = max - rect.right - this.aek - n4;
        }
        canvas.drawText(ellipsize, 0, ellipsize.length(), (float)n7, (float)(n - (n - this.ael) / 2), (Paint)textPaint);
        int left;
        if (this.mF()) {
            left = max - rect.right - n2;
        }
        else {
            left = rect.left;
        }
        t.left = left;
        t.top = rect.top;
        t.right = left + n2;
        t.bottom = n - rect.bottom;
        return t;
    }
    
    private b a(final ae ae, final boolean b) {
        final TextPaint paint = this.getPaint();
        final float textSize = paint.getTextSize();
        final int color = paint.getColor();
        Bitmap bitmap;
        if (b) {
            paint.setColor(RecipientEditTextView.adZ);
            final T a = this.a(ae, paint, this.aef, this.getResources().getColor(x.ado));
            if (a.aff) {
                this.a(ae, a);
            }
            bitmap = a.afe;
        }
        else {
            paint.setColor(this.getContext().getResources().getColor(17170444));
            Drawable drawable;
            if (ae.isValid()) {
                drawable = this.aec;
            }
            else {
                drawable = this.aee;
            }
            final Resources resources = this.getResources();
            int n;
            if (ae.isValid()) {
                n = x.adm;
            }
            else {
                n = x.adn;
            }
            final T a2 = this.a(ae, paint, drawable, resources.getColor(n));
            if (a2.aff) {
                this.a(ae, a2);
            }
            bitmap = a2.afe;
        }
        final BitmapDrawable bitmapDrawable = new BitmapDrawable(this.getResources(), bitmap);
        ((Drawable)bitmapDrawable).setBounds(0, 0, bitmap.getWidth(), bitmap.getHeight());
        final f f = new f((Drawable)bitmapDrawable, ae);
        f.r(this.aei);
        paint.setTextSize(textSize);
        paint.setColor(color);
        return f;
    }
    
    private void a(final ClipData clipData) {
        if (clipData != null) {
            final ClipDescription description = clipData.getDescription();
            int n;
            if (description.hasMimeType("text/plain") || description.hasMimeType("text/html")) {
                n = 1;
            }
            else {
                n = 0;
            }
            if (n != 0) {
                this.removeTextChangedListener(this.aes);
                final ClipDescription description2 = clipData.getDescription();
                for (int i = 0; i < clipData.getItemCount(); ++i) {
                    final String mimeType = description2.getMimeType(i);
                    int n2;
                    if ("text/plain".equals(mimeType) || "text/html".equals(mimeType)) {
                        n2 = 1;
                    }
                    else {
                        n2 = 0;
                    }
                    if (n2 != 0) {
                        final CharSequence text = clipData.getItemAt(i).getText();
                        if (!TextUtils.isEmpty(text)) {
                            final Editable text2 = this.getText();
                            final int selectionStart = this.getSelectionStart();
                            final int selectionEnd = this.getSelectionEnd();
                            if (selectionStart < 0 || selectionEnd <= 0) {
                                text2.append(text);
                            }
                            else if (selectionStart == selectionEnd) {
                                text2.insert(selectionStart, text);
                            }
                            else {
                                text2.append(text, selectionStart, selectionEnd);
                            }
                            final String string = this.getText().toString();
                            final int tokenStart = this.aeq.findTokenStart((CharSequence)string, this.getSelectionEnd());
                            final String substring = string.substring(tokenStart);
                            b bt = null;
                            final ArrayList<b> list = new ArrayList<b>();
                            Label_0426: {
                                if (tokenStart != 0) {
                                    int n3 = 0;
                                    int n4 = tokenStart;
                                    while (true) {
                                        while (n4 != 0 && bt == null && n4 != n3) {
                                            final int tokenStart2 = this.aeq.findTokenStart((CharSequence)string, n4);
                                            bt = this.bt(tokenStart2);
                                            if (tokenStart2 == tokenStart && bt == null) {
                                                final b b = bt;
                                                int j = n4;
                                                n4 = tokenStart2;
                                                final b b2 = b;
                                                if (n4 != tokenStart) {
                                                    if (b2 == null) {
                                                        j = n4;
                                                    }
                                                    while (j < tokenStart) {
                                                        this.a(j, this.bw(this.aeq.findTokenEnd((CharSequence)this.getText().toString(), j)), this.getText());
                                                        final b bt2 = this.bt(j);
                                                        if (bt2 == null) {
                                                            break;
                                                        }
                                                        j = 1 + ((Spannable)this.getText()).getSpanEnd((Object)bt2);
                                                        list.add(bt2);
                                                    }
                                                }
                                                break Label_0426;
                                            }
                                            else {
                                                final int n5 = n4;
                                                n4 = tokenStart2;
                                                n3 = n5;
                                            }
                                        }
                                        final b b3 = bt;
                                        int j = n3;
                                        final b b2 = b3;
                                        continue;
                                    }
                                }
                            }
                            if (this.o(substring)) {
                                final Editable text3 = this.getText();
                                final int index = text3.toString().indexOf(substring, tokenStart);
                                this.a(index, text3.length(), text3);
                                list.add(this.bt(index));
                            }
                            if (list.size() > 0) {
                                new U(this, (byte)0).execute((Object[])new ArrayList[] { list });
                            }
                        }
                    }
                }
                this.mHandler.post(this.aeS);
            }
        }
    }
    
    private void a(final T t, final Bitmap bitmap) {
        final Canvas canvas = new Canvas(t.afe);
        final RectF rectF = new RectF(0.0f, 0.0f, (float)bitmap.getWidth(), (float)bitmap.getHeight());
        final RectF rectF2 = new RectF(t.left, t.top, t.right, t.bottom);
        final Matrix localMatrix = new Matrix();
        final BitmapShader shader = new BitmapShader(bitmap, Shader$TileMode.CLAMP, Shader$TileMode.CLAMP);
        localMatrix.reset();
        localMatrix.setRectToRect(rectF, rectF2, Matrix$ScaleToFit.FILL);
        shader.setLocalMatrix(localMatrix);
        this.aep.reset();
        this.aep.setShader((Shader)shader);
        this.aep.setAntiAlias(true);
        this.aep.setFilterBitmap(true);
        this.aep.setDither(true);
        canvas.drawCircle(rectF2.centerX(), rectF2.centerY(), rectF2.width() / 2.0f, this.aep);
        this.aep.reset();
        this.aep.setColor(0);
        this.aep.setStyle(Paint$Style.STROKE);
        this.aep.setStrokeWidth(1.0f);
        this.aep.setAntiAlias(true);
        canvas.drawCircle(rectF2.centerX(), rectF2.centerY(), rectF2.width() / 2.0f - 0.5f, this.aep);
        this.aep.reset();
    }
    
    private void a(final ae ae, final T t) {
        int n = 1;
        final long mx = ae.mX();
        if (this.mQ()) {
            if (mx == -1L) {
                n = 0;
            }
        }
        else if (mx == -1L || mx == -2L) {
            n = 0;
        }
        if (n != 0) {
            final byte[] nc = ae.nc();
            if (nc != null) {
                this.a(t, BitmapFactory.decodeByteArray(nc, 0, nc.length));
                return;
            }
            ((a)super.getAdapter()).a(ae, new P(this, ae, t));
        }
    }
    
    private boolean a(final int n, final int n2, final Editable editable) {
        final a a = (a)super.getAdapter();
        if (a != null && ((ListAdapter)a).getCount() > 0 && this.enoughToFilter() && n2 == this.getSelectionEnd() && !this.mQ()) {
            if (!this.aM(editable.toString().substring(n, n2).trim())) {
                final int listSelection = this.getListSelection();
                if (listSelection == -1) {
                    this.bu(0);
                }
                else {
                    this.bu(listSelection);
                }
            }
            this.dismissDropDown();
            return true;
        }
        int tokenEnd = this.aeq.findTokenEnd((CharSequence)editable, n);
        if (editable.length() > tokenEnd + 1) {
            final char char1 = editable.charAt(tokenEnd + 1);
            if (char1 == ',' || char1 == ';') {
                ++tokenEnd;
            }
        }
        final String trim = editable.toString().substring(n, tokenEnd).trim();
        this.clearComposingText();
        if (trim != null && trim.length() > 0 && !trim.equals(" ")) {
            final ae ak = this.aK(trim);
            if (ak != null) {
                QwertyKeyListener.markAsReplaced((Spannable)editable, n, n2, "");
                final CharSequence b = this.b(ak);
                if (b != null && n >= 0 && n2 >= 0) {
                    editable.replace(n, n2, b);
                }
            }
            if (n2 == this.getSelectionEnd()) {
                this.dismissDropDown();
            }
            this.mK();
            return true;
        }
        return false;
    }
    
    private static boolean aJ(final String s) {
        return !TextUtils.isEmpty((CharSequence)s) && RecipientEditTextView.adX.matcher(s).matches();
    }
    
    private ae aK(final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            return null;
        }
        if (this.mQ() && aJ(s)) {
            return ae.aO(s);
        }
        final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize((CharSequence)s);
        boolean al = this.aL(s);
        if (al && tokenize != null && tokenize.length > 0) {
            final String name = tokenize[0].getName();
            if (!TextUtils.isEmpty((CharSequence)name)) {
                return ae.a(name, tokenize[0].getAddress(), al);
            }
            final String address = tokenize[0].getAddress();
            if (!TextUtils.isEmpty((CharSequence)address)) {
                return ae.i(address, al);
            }
        }
        String s2;
        if (this.aer != null && !al) {
            s2 = this.aer.fixText((CharSequence)s).toString();
            if (!TextUtils.isEmpty((CharSequence)s2)) {
                if (s2.contains(s)) {
                    final Rfc822Token[] tokenize2 = Rfc822Tokenizer.tokenize((CharSequence)s2);
                    if (tokenize2.length > 0) {
                        s2 = tokenize2[0].getAddress();
                        al = true;
                    }
                }
                else {
                    s2 = null;
                    al = false;
                }
            }
        }
        else {
            s2 = null;
        }
        if (TextUtils.isEmpty((CharSequence)s2)) {
            s2 = s;
        }
        return ae.i(s2, al);
    }
    
    private boolean aL(final String s) {
        return this.aer == null || this.aer.isValid((CharSequence)s);
    }
    
    private boolean aM(final String s) {
        return !TextUtils.isEmpty((CharSequence)s) && this.aer != null && this.aer.isValid((CharSequence)s);
    }
    
    private int b(final b b) {
        return ((Spannable)this.getText()).getSpanEnd((Object)b);
    }
    
    private CharSequence b(final ae ae) {
        final String a = this.a(ae);
        if (TextUtils.isEmpty((CharSequence)a)) {
            return null;
        }
        final int n = -1 + a.length();
        final SpannableString spannableString = new SpannableString((CharSequence)a);
        if (this.aeH) {
            return (CharSequence)spannableString;
        }
        try {
            final b a2 = this.a(ae, false);
            spannableString.setSpan((Object)a2, 0, n, 33);
            a2.aP(spannableString.toString());
            return (CharSequence)spannableString;
        }
        catch (NullPointerException ex) {
            Log.e("RecipientEditTextView", ex.getMessage(), (Throwable)ex);
            return null;
        }
    }
    
    private int bs(final int n) {
        return -(int)((this.aeg + 2.0f * this.aei) * Math.abs(this.getLineCount() - n) + this.getPaddingBottom());
    }
    
    private b bt(final int n) {
        int i = 0;
        for (b[] array = (b[])((Spannable)this.getText()).getSpans(0, this.getText().length(), (Class)b.class); i < array.length; ++i) {
            final b b = array[i];
            final int a = this.a(b);
            final int b2 = this.b(b);
            if (n >= a && n <= b2) {
                return b;
            }
        }
        return null;
    }
    
    private int bu(final int n) {
        final ae c = this.c(((a)super.getAdapter()).bo(n));
        if (c == null) {
            return -1;
        }
        this.clearComposingText();
        final int selectionEnd = this.getSelectionEnd();
        final int tokenStart = this.aeq.findTokenStart((CharSequence)this.getText(), selectionEnd);
        final Editable text = this.getText();
        QwertyKeyListener.markAsReplaced((Spannable)text, tokenStart, selectionEnd, "");
        final CharSequence b = this.b(c);
        if (b != null && tokenStart >= 0 && selectionEnd >= 0) {
            text.replace(tokenStart, selectionEnd, b);
        }
        this.mK();
        return selectionEnd - tokenStart;
    }
    
    private X bv(final int n) {
        final String format = String.format(this.aeB.getText().toString(), n);
        this.aep.set((Paint)this.getPaint());
        this.aep.setTextSize(this.aeB.getTextSize());
        this.aep.setColor(this.aeB.getCurrentTextColor());
        final int n2 = (int)this.aep.measureText(format) + this.aeB.getPaddingLeft() + this.aeB.getPaddingRight();
        final int n3 = (int)this.aeg;
        final Bitmap bitmap = Bitmap.createBitmap(n2, n3, Bitmap$Config.ARGB_8888);
        final Canvas canvas = new Canvas(bitmap);
        final Layout layout = this.getLayout();
        int n4;
        if (layout != null) {
            n4 = n3 - layout.getLineDescent(0);
        }
        else {
            n4 = n3;
        }
        canvas.drawText(format, 0, format.length(), 0.0f, (float)n4, this.aep);
        final BitmapDrawable bitmapDrawable = new BitmapDrawable(this.getResources(), bitmap);
        ((Drawable)bitmapDrawable).setBounds(0, 0, n2, n3);
        return new X(this, (Drawable)bitmapDrawable);
    }
    
    private int bw(int n) {
        if (n < this.length()) {
            final char char1 = this.getText().toString().charAt(n);
            if (char1 == ',' || char1 == ';') {
                ++n;
            }
            if (n < this.length() && this.getText().toString().charAt(n) == ' ') {
                return n + 1;
            }
        }
        return n;
    }
    
    private b c(final b b) {
        if (this.d(b)) {
            final CharSequence ne = b.ne();
            final Editable text = this.getText();
            final Editable text2 = this.getText();
            final int spanStart = ((Spannable)text2).getSpanStart((Object)b);
            int spanEnd = ((Spannable)text2).getSpanEnd((Object)b);
            ((Spannable)text2).removeSpan((Object)b);
            if (spanEnd - spanStart == -1 + text.length()) {
                ++spanEnd;
            }
            text.delete(spanStart, spanEnd);
            this.setCursorVisible(true);
            this.setSelection(text.length());
            text.append(ne);
            return this.a(ae.i((String)ne, this.aL(ne.toString())), true);
        }
        final int a = this.a(b);
        final int b2 = this.b(b);
        ((Spannable)this.getText()).removeSpan((Object)b);
        boolean b3;
        if (b.mX() == -2L || ((a)super.getAdapter()).mn()) {
            b3 = true;
        }
        else {
            b3 = false;
        }
        Label_0204: {
            if (!b3) {
                break Label_0204;
            }
            b a2 = null;
            Editable text3;
            int lineForOffset;
            ListPopupWindow aev;
            int bs;
            Object aew;
            ListView listView;
            Label_0381_Outer:Label_0466_Outer:
            while (true) {
                while (true) {
                Label_0514:
                    while (true) {
                    Label_0508:
                        while (true) {
                            try {
                                if (this.aeH) {
                                    return null;
                                }
                                a2 = this.a(b.nf(), true);
                                text3 = this.getText();
                                QwertyKeyListener.markAsReplaced((Spannable)text3, a, b2, "");
                                if (a == -1 || b2 == -1) {
                                    Log.d("RecipientEditTextView", "The chip being selected no longer exists but should.");
                                    a2.setSelected(true);
                                    if (this.d(a2)) {
                                        lineForOffset = this.getLayout().getLineForOffset(this.a(a2));
                                        if (this.aeO != null) {
                                            this.aeO.smoothScrollBy(0, -((this.getLineCount() - (lineForOffset + 1)) * (int)this.aeg + this.getPaddingBottom() + this.getPaddingTop()) + this.getDropDownVerticalOffset());
                                        }
                                    }
                                    if (b3) {
                                        aev = this.aev;
                                        if (this.aeR) {
                                            bs = this.bs(this.getLayout().getLineForOffset(this.a(a2)));
                                            if (this.aew == null) {
                                                break Label_0508;
                                            }
                                            aew = this.aew;
                                            aev.setAnchorView((View)aew);
                                            aev.setVerticalOffset(bs);
                                            aev.setAdapter((ListAdapter)new af(this.getContext(), a2.nf(), this.acb, this.mN()));
                                            aev.setOnItemClickListener((AdapterView$OnItemClickListener)new J(this, a2));
                                            aev.show();
                                            listView = aev.getListView();
                                            listView.setChoiceMode(1);
                                            listView.setItemChecked(0, true);
                                        }
                                        this.setCursorVisible(false);
                                        return a2;
                                    }
                                    break Label_0514;
                                }
                            }
                            catch (NullPointerException ex) {
                                Log.e("RecipientEditTextView", ex.getMessage(), (Throwable)ex);
                                return null;
                            }
                            text3.setSpan((Object)a2, a, b2, 33);
                            continue Label_0381_Outer;
                        }
                        aew = this;
                        continue Label_0466_Outer;
                    }
                    new R(this, a2, this.aeu).execute((Object[])null);
                    continue;
                }
            }
        }
    }
    
    private ae c(ae ae) {
        if (ae == null) {
            ae = null;
        }
        else {
            final String mu = ae.mU();
            if (!this.mQ() && ae.mX() == -2L) {
                return ae.a(ae.getDisplayName(), mu, ae.isValid());
            }
            if (ae.H(ae.mX()) && (TextUtils.isEmpty((CharSequence)ae.getDisplayName()) || TextUtils.equals((CharSequence)ae.getDisplayName(), (CharSequence)mu) || (this.aer != null && !this.aer.isValid((CharSequence)mu)))) {
                return ae.i(mu, ae.isValid());
            }
        }
        return ae;
    }
    
    private boolean d(final b b) {
        final long mx = b.mX();
        return mx == -1L || (!this.mQ() && mx == -2L);
    }
    
    private void e(final b b) {
        final int a = this.a(b);
        final int b2 = this.b(b);
        final Editable text = this.getText();
        this.aey = null;
        if (a == -1 || b2 == -1) {
            Log.w("RecipientEditTextView", "The chip doesn't exist or may be a chip a user was editing");
            this.setSelection(text.length());
            this.mJ();
        }
        else {
            ((Spannable)this.getText()).removeSpan((Object)b);
            QwertyKeyListener.markAsReplaced((Spannable)text, a, b2, "");
            text.removeSpan((Object)b);
            try {
                if (!this.aeH) {
                    text.setSpan((Object)this.a(b.nf(), false), a, b2, 33);
                }
            }
            catch (NullPointerException ex) {
                Log.e("RecipientEditTextView", ex.getMessage(), (Throwable)ex);
            }
        }
        this.setCursorVisible(true);
        this.setSelection(text.length());
        this.eG();
    }
    
    private void eG() {
        if (this.aeu != null && this.aeu.isShowing()) {
            this.aeu.dismiss();
        }
        if (this.aev != null && this.aev.isShowing()) {
            this.aev.dismiss();
        }
    }
    
    private void f(final b b) {
        final Editable text = this.getText();
        final int spanStart = ((Spannable)text).getSpanStart((Object)b);
        int spanEnd = ((Spannable)text).getSpanEnd((Object)b);
        final Editable text2 = this.getText();
        boolean b2;
        if (b == this.aey) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        if (b2) {
            this.aey = null;
        }
        while (spanEnd >= 0 && spanEnd < text2.length() && text2.charAt(spanEnd) == ' ') {
            ++spanEnd;
        }
        ((Spannable)text).removeSpan((Object)b);
        if (spanStart >= 0 && spanEnd > 0) {
            text2.delete(spanStart, spanEnd);
        }
        if (b2) {
            this.mM();
        }
    }
    
    private int h(final float n, final float n2) {
        int i;
        if (Build$VERSION.SDK_INT >= 14) {
            i = this.getOffsetForPosition(n, n2);
        }
        else if (this.getLayout() == null) {
            i = -1;
        }
        else {
            i = this.getLayout().getOffsetForHorizontal(this.getLayout().getLineForVertical((int)(Math.min(-1 + (this.getHeight() - this.getTotalPaddingBottom()), Math.max(0.0f, n2 - this.getTotalPaddingLeft())) + this.getScrollY())), Math.min(-1 + (this.getWidth() - this.getTotalPaddingRight()), Math.max(0.0f, n - this.getTotalPaddingLeft())) + this.getScrollX());
        }
        final Editable text = this.getText();
        int length = text.length();
        for (int n3 = length - 1; n3 >= 0 && text.charAt(n3) == ' '; --n3) {
            --length;
        }
        if (i < length) {
            final Editable text2 = this.getText();
            while (i >= 0) {
                int n4;
                if (text2.charAt(i) != ' ') {
                    n4 = i;
                }
                else {
                    n4 = -1;
                }
                if (n4 != -1 || this.bt(i) != null) {
                    break;
                }
                --i;
            }
        }
        return i;
    }
    
    private b mC() {
        final b[] mo = this.mO();
        b b = null;
        if (mo != null) {
            final int length = mo.length;
            b = null;
            if (length > 0) {
                b = mo[-1 + mo.length];
            }
        }
        return b;
    }
    
    private void mE() {
        if (this.aeq == null) {
            return;
        }
        long mx;
        if (this.aey != null) {
            mx = this.aey.nf().mX();
        }
        else {
            mx = -1L;
        }
        if (this.aey != null && mx != -1L && !this.mQ() && mx != -2L) {
            this.mM();
        }
        else {
            if (this.getWidth() <= 0) {
                this.mHandler.removeCallbacks(this.aeV);
                this.mHandler.post(this.aeV);
                return;
            }
            if (this.aeF > 0) {
                this.mG();
            }
            else {
                final Editable text = this.getText();
                final int selectionEnd = this.getSelectionEnd();
                final int tokenStart = this.aeq.findTokenStart((CharSequence)text, selectionEnd);
                final b[] array = (b[])((Spannable)this.getText()).getSpans(tokenStart, selectionEnd, (Class)b.class);
                if (array == null || array.length == 0) {
                    final Editable text2 = this.getText();
                    int n = this.aeq.findTokenEnd((CharSequence)text2, tokenStart);
                    if (n < text2.length() && text2.charAt(n) == ',') {
                        n = this.bw(n);
                    }
                    if (n != this.getSelectionEnd()) {
                        this.G(tokenStart, n);
                    }
                    else {
                        this.a(tokenStart, selectionEnd, text);
                    }
                }
            }
            this.mHandler.post(this.aeS);
        }
        this.mP();
    }
    
    private boolean mF() {
        int n;
        if (Build$VERSION.SDK_INT >= 17) {
            if (this.getLayoutDirection() == 1) {
                n = 1;
            }
            else {
                n = 0;
            }
        }
        else {
            n = 0;
        }
        final boolean b = this.aeo == 0;
        if (n != 0) {
            return !b;
        }
        return b;
    }
    
    private void mG() {
        this.mHandler.removeCallbacks(this.aeU);
        this.mHandler.post(this.aeU);
    }
    
    private boolean mI() {
        final View focusSearch = this.focusSearch(130);
        if (focusSearch != null) {
            focusSearch.requestFocus();
            return true;
        }
        return false;
    }
    
    private boolean mJ() {
        if (this.aeq != null) {
            final Editable text = this.getText();
            final int selectionEnd = this.getSelectionEnd();
            final int tokenStart = this.aeq.findTokenStart((CharSequence)text, selectionEnd);
            if (this.E(tokenStart, selectionEnd)) {
                final int bw = this.bw(this.aeq.findTokenEnd((CharSequence)this.getText(), tokenStart));
                if (bw != this.getSelectionEnd()) {
                    this.G(tokenStart, bw);
                    return true;
                }
                return this.a(tokenStart, selectionEnd, text);
            }
        }
        return false;
    }
    
    private void mK() {
        if (this.aeF <= 0) {
            final b[] mo = this.mO();
            if (mo != null && mo.length > 0) {
                final b b = mo[-1 + mo.length];
                final int length = mo.length;
                Object o = null;
                if (length > 1) {
                    o = mo[-2 + mo.length];
                }
                final int spanStart = ((Spannable)this.getText()).getSpanStart((Object)b);
                int spanEnd;
                if (o != null) {
                    spanEnd = ((Spannable)this.getText()).getSpanEnd(o);
                    final Editable text = this.getText();
                    if (spanEnd == -1 || spanEnd > -1 + text.length()) {
                        return;
                    }
                    if (text.charAt(spanEnd) == ' ') {
                        ++spanEnd;
                    }
                }
                else {
                    spanEnd = 0;
                }
                if (spanEnd >= 0 && spanStart >= 0 && spanEnd < spanStart) {
                    this.getText().delete(spanEnd, spanStart);
                }
            }
        }
    }
    
    private void mM() {
        if (this.aey != null) {
            this.e(this.aey);
            this.aey = null;
        }
        this.setCursorVisible(true);
    }
    
    private StateListDrawable mN() {
        final StateListDrawable stateListDrawable = new StateListDrawable();
        if (!this.aem) {
            stateListDrawable.addState(new int[] { 16843518 }, this.aed);
        }
        stateListDrawable.addState(new int[0], (Drawable)null);
        return stateListDrawable;
    }
    
    private void mP() {
        if (this.aeH) {
            final Editable text = this.getText();
            int i = 0;
            int n = 0;
            while (i < 2) {
                final int bw = this.bw(this.aeq.findTokenEnd((CharSequence)text, n));
                ++i;
                n = bw;
            }
            int j = 0;
            int n2 = 0;
            while (j < text.length()) {
                j = this.bw(this.aeq.findTokenEnd((CharSequence)text, j));
                ++n2;
                if (j >= text.length()) {
                    break;
                }
            }
            final X bv = this.bv(n2 - 2);
            final SpannableString spannableString = new SpannableString(text.subSequence(n, text.length()));
            spannableString.setSpan((Object)bv, 0, spannableString.length(), 33);
            text.replace(n, text.length(), (CharSequence)spannableString);
            this.aeA = bv;
        }
        else if (this.aeI) {
            final d[] array = (d[])((Spannable)this.getText()).getSpans(0, this.getText().length(), (Class)X.class);
            if (array.length > 0) {
                ((Spannable)this.getText()).removeSpan((Object)array[0]);
            }
            final b[] mo = this.mO();
            if (mo == null || mo.length <= 2) {
                this.aeA = null;
                return;
            }
            final Editable text2 = this.getText();
            final int length = mo.length;
            final int n3 = length - 2;
            final X bv2 = this.bv(n3);
            this.aeK = new ArrayList<b>();
            final Editable text3 = this.getText();
            int k = length - n3;
            int n4 = 0;
            int spanStart = 0;
            while (k < mo.length) {
                this.aeK.add(mo[k]);
                if (k == length - n3) {
                    spanStart = ((Spannable)text2).getSpanStart((Object)mo[k]);
                }
                if (k == -1 + mo.length) {
                    n4 = ((Spannable)text2).getSpanEnd((Object)mo[k]);
                }
                if (this.aeJ == null || !this.aeJ.contains(mo[k])) {
                    mo[k].aP(text3.toString().substring(((Spannable)text2).getSpanStart((Object)mo[k]), ((Spannable)text2).getSpanEnd((Object)mo[k])));
                }
                ((Spannable)text2).removeSpan((Object)mo[k]);
                ++k;
            }
            if (n4 < text3.length()) {
                n4 = text3.length();
            }
            final int max = Math.max(spanStart, n4);
            final int min = Math.min(spanStart, n4);
            final SpannableString spannableString2 = new SpannableString(text3.subSequence(min, max));
            spannableString2.setSpan((Object)bv2, 0, spannableString2.length(), 33);
            text3.replace(min, max, (CharSequence)spannableString2);
            this.aeA = bv2;
            if (!this.mQ() && this.getLineCount() > this.aen) {
                this.setMaxLines(this.getLineCount());
            }
        }
    }
    
    private boolean o(final CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            final int length = charSequence.length();
            final String trim = charSequence.toString().substring(this.aeq.findTokenStart(charSequence, length), length).trim();
            if (!TextUtils.isEmpty((CharSequence)trim)) {
                final char char1 = trim.charAt(-1 + trim.length());
                if (char1 == ',' || char1 == ';') {
                    return true;
                }
            }
        }
        return false;
    }
    
    final String a(final ae ae) {
        String displayName = ae.getDisplayName();
        String s = ae.mU();
        if (TextUtils.isEmpty((CharSequence)displayName) || TextUtils.equals((CharSequence)displayName, (CharSequence)s)) {
            displayName = null;
        }
        String s2;
        if (this.mQ() && aJ(s)) {
            s2 = s.trim();
        }
        else {
            if (s != null) {
                final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize((CharSequence)s);
                if (tokenize != null && tokenize.length > 0) {
                    s = tokenize[0].getAddress();
                }
            }
            s2 = new Rfc822Token(displayName, s, (String)null).toString().trim();
        }
        final int index = s2.indexOf(",");
        if (this.aeq != null && !TextUtils.isEmpty((CharSequence)s2) && index < -1 + s2.length()) {
            s2 = (String)this.aeq.terminateToken((CharSequence)s2);
        }
        return s2;
    }
    
    public final void a(final DropdownChipLayouter acb) {
        (this.acb = acb).a(this);
    }
    
    public final void a(final Z aeW) {
        this.aeW = aeW;
    }
    
    final void a(final b b, final ae ae) {
        boolean b2;
        if (b == this.aey) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        if (b2) {
            this.aey = null;
        }
        final int a = this.a(b);
        int b3 = this.b(b);
        ((Spannable)this.getText()).removeSpan((Object)b);
        final Editable text = this.getText();
        final CharSequence b4 = this.b(ae);
        if (b4 != null) {
            if (a == -1 || b3 == -1) {
                Log.e("RecipientEditTextView", "The chip to replace does not exist but should.");
                text.insert(0, b4);
            }
            else if (!TextUtils.isEmpty(b4)) {
                while (b3 >= 0 && b3 < text.length() && text.charAt(b3) == ' ') {
                    ++b3;
                }
                text.replace(a, b3, b4);
            }
        }
        this.setCursorVisible(true);
        if (b2) {
            this.mM();
        }
    }
    
    public final void ao(final View aew) {
        this.aew = aew;
    }
    
    public void append(final CharSequence charSequence, final int n, final int n2) {
        if (this.aes != null) {
            this.removeTextChangedListener(this.aes);
        }
        super.append(charSequence, n, n2);
        if (!TextUtils.isEmpty(charSequence) && TextUtils.getTrimmedLength(charSequence) > 0) {
            String s = charSequence.toString();
            if (!s.trim().endsWith(",")) {
                super.append((CharSequence)RecipientEditTextView.adW, 0, RecipientEditTextView.adW.length());
                s += RecipientEditTextView.adW;
            }
            if (!TextUtils.isEmpty((CharSequence)s) && TextUtils.getTrimmedLength((CharSequence)s) > 0) {
                ++this.aeF;
                this.aeE.add(s);
            }
        }
        if (this.aeF > 0) {
            this.mG();
        }
        this.mHandler.post(this.aeS);
    }
    
    public final void br(final int aeG) {
        final ListView listView = this.aeu.getListView();
        if (listView != null && listView.getCheckedItemCount() == 0) {
            listView.setItemChecked(aeG, true);
        }
        this.aeG = aeG;
    }
    
    public final boolean g(final b b) {
        final long mx = b.mX();
        return mx == -1L || (!this.mQ() && mx == -2L);
    }
    
    protected final void mD() {
        if (this.aeO != null && this.aeI) {
            this.getLocationInWindow(this.aeb);
            final int height = this.getHeight();
            final int n = height + this.aeb[1];
            this.aeO.getLocationInWindow(this.aeb);
            final int n2 = this.aeb[1] + height / this.getLineCount();
            if (n > n2) {
                this.aeO.scrollBy(0, n - n2);
            }
        }
    }
    
    final void mH() {
        if (this.getWidth() <= 0 || this.aeF <= 0) {
            return;
        }
    Label_0253_Outer:
        while (true) {
            while (true) {
            Label_0142:
                while (true) {
                Label_0791:
                    while (true) {
                        Editable text;
                        String s;
                        int index;
                        int n = 0;
                        int n2;
                        int n3;
                        ae ak;
                        b a;
                        String substring;
                        String substring2 = null;
                        String trim;
                        int lastIndex;
                        b[] mo;
                        Editable text2;
                        X[] array;
                        d aeA;
                        int length;
                        int n4;
                        Editable text3;
                        int length2;
                        Label_0545_Outer:Label_0614_Outer:
                        while (true) {
                            Label_0777: {
                                while (true) {
                                    Label_0765: {
                                    Label_0660:
                                        while (true) {
                                            Label_0652: {
                                                while (true) {
                                                    Label_0634: {
                                                        synchronized (this.aeE) {
                                                            text = this.getText();
                                                            if (this.aeF > 50) {
                                                                break Label_0652;
                                                            }
                                                        Label_0309_Outer:
                                                            for (int i = 0; i < this.aeE.size(); ++i) {
                                                                s = this.aeE.get(i);
                                                                index = text.toString().indexOf(s);
                                                                n = -1 + (index + s.length());
                                                            Label_0309:
                                                                while (true) {
                                                                    if (index < 0) {
                                                                        break Label_0309;
                                                                    }
                                                                    if (n >= -2 + text.length() || text.charAt(n) != ',') {
                                                                        break Label_0545_Outer;
                                                                    }
                                                                    n2 = n + 1;
                                                                    Label_0325: {
                                                                        if (i >= 2 && this.aeI) {
                                                                            break Label_0325;
                                                                        }
                                                                        break Label_0791;
                                                                        while (true) {
                                                                            try {
                                                                                if (!this.aeH) {
                                                                                    if (n3 != 0) {
                                                                                        a = this.a(ak, false);
                                                                                    }
                                                                                    else {
                                                                                        a = new c(ak);
                                                                                    }
                                                                                    text.setSpan((Object)a, index, n2, 33);
                                                                                    if (a != null) {
                                                                                        if (this.aeJ == null) {
                                                                                            this.aeJ = new ArrayList<b>();
                                                                                        }
                                                                                        a.aP(substring);
                                                                                        this.aeJ.add(a);
                                                                                    }
                                                                                    --this.aeF;
                                                                                    break;
                                                                                }
                                                                                break Label_0142;
                                                                                n3 = 0;
                                                                                break Label_0142;
                                                                            }
                                                                            catch (NullPointerException ex) {
                                                                                Log.e("RecipientEditTextView", ex.getMessage(), (Throwable)ex);
                                                                                break Label_0142;
                                                                            }
                                                                            break Label_0309_Outer;
                                                                            if (this.F(index, n2)) {
                                                                                continue Label_0309;
                                                                            }
                                                                            substring2 = text.toString().substring(index, n2);
                                                                            trim = substring2.trim();
                                                                            lastIndex = trim.lastIndexOf(44);
                                                                            if (lastIndex == -1 || lastIndex != -1 + trim.length()) {
                                                                                break Label_0777;
                                                                            }
                                                                            substring = trim.substring(0, -1 + trim.length());
                                                                            ak = this.aK(substring);
                                                                            if (ak != null) {
                                                                                continue Label_0309_Outer;
                                                                            }
                                                                            continue Label_0309;
                                                                        }
                                                                    }
                                                                    break;
                                                                }
                                                            }
                                                            if (this.aeF <= 0) {
                                                                mo = this.mO();
                                                                text2 = this.getText();
                                                                if (mo != null && mo.length > 0) {
                                                                    array = (X[])((Spannable)this.getText()).getSpans(0, this.getText().length(), (Class)X.class);
                                                                    aeA = null;
                                                                    if (array != null) {
                                                                        length = array.length;
                                                                        aeA = null;
                                                                        if (length > 0) {
                                                                            aeA = array[0];
                                                                        }
                                                                    }
                                                                    this.aeA = aeA;
                                                                    if (this.aeA == null) {
                                                                        break Label_0634;
                                                                    }
                                                                    n4 = ((Spannable)text2).getSpanEnd((Object)this.aeA);
                                                                    text3 = this.getText();
                                                                    length2 = text3.length();
                                                                    if (length2 > n4) {
                                                                        if (Log.isLoggable("RecipientEditTextView", 3)) {
                                                                            Log.d("RecipientEditTextView", "There were extra characters after the last tokenizable entry." + text3);
                                                                        }
                                                                        text3.delete(n4 + 1, length2);
                                                                    }
                                                                }
                                                            }
                                                            if (this.aeJ == null || this.aeJ.size() <= 0 || this.aeJ.size() > 50) {
                                                                break Label_0765;
                                                            }
                                                            if (this.hasFocus() || this.aeJ.size() < 2) {
                                                                new aa(this, (byte)0).execute((Object[])new Void[0]);
                                                                this.aeJ = null;
                                                                this.aeF = 0;
                                                                this.aeE.clear();
                                                                return;
                                                            }
                                                            break Label_0660;
                                                        }
                                                    }
                                                    n4 = ((Spannable)this.getText()).getSpanEnd((Object)this.mC());
                                                    continue Label_0545_Outer;
                                                }
                                            }
                                            this.aeH = true;
                                            continue Label_0614_Outer;
                                        }
                                        (this.aeT = new U(this, (byte)0)).execute((Object[])new ArrayList[] { new ArrayList((Collection<? extends E>)this.aeJ.subList(0, 2)) });
                                        if (this.aeJ.size() > 2) {
                                            this.aeJ = new ArrayList<b>(this.aeJ.subList(2, this.aeJ.size()));
                                        }
                                        else {
                                            this.aeJ = null;
                                        }
                                        this.mP();
                                        continue;
                                    }
                                    this.aeJ = null;
                                    this.mP();
                                    continue;
                                }
                            }
                            substring = substring2;
                            continue;
                        }
                        n2 = n;
                        continue Label_0253_Outer;
                    }
                    int n3 = 1;
                    continue Label_0142;
                }
                b a = null;
                continue;
            }
        }
    }
    
    final Spannable mL() {
        return (Spannable)this.getText();
    }
    
    final b[] mO() {
        final ArrayList<Object> list = new ArrayList<Object>((Collection<? extends T>)Arrays.asList((b[])((Spannable)this.getText()).getSpans(0, this.getText().length(), (Class)b.class)));
        Collections.sort(list, (Comparator<? super Object>)new S(this, (Spannable)this.getText()));
        return list.toArray(new b[list.size()]);
    }
    
    protected final boolean mQ() {
        return super.getAdapter() != null && ((a)super.getAdapter()).ml() == 1;
    }
    
    public final a mR() {
        return (a)super.getAdapter();
    }
    
    public final void mz() {
        if (this.aey != null) {
            this.f(this.aey);
        }
        this.eG();
    }
    
    public boolean onActionItemClicked(final ActionMode actionMode, final MenuItem menuItem) {
        return false;
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.aeR = true;
        final int dropDownAnchor = this.getDropDownAnchor();
        if (dropDownAnchor != -1) {
            this.aet = this.getRootView().findViewById(dropDownAnchor);
        }
    }
    
    public void onClick(final View view) {
        ((ClipboardManager)this.getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText((CharSequence)"", (CharSequence)this.aeN));
        this.aeM.dismiss();
    }
    
    public boolean onCreateActionMode(final ActionMode actionMode, final Menu menu) {
        return false;
    }
    
    public InputConnection onCreateInputConnection(final EditorInfo editorInfo) {
        final InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        final int n = 0xFF & editorInfo.imeOptions;
        if ((n & 0x6) != 0x0) {
            editorInfo.imeOptions ^= n;
            editorInfo.imeOptions |= 0x6;
        }
        if ((0x40000000 & editorInfo.imeOptions) != 0x0) {
            editorInfo.imeOptions &= 0xBFFFFFFF;
        }
        editorInfo.actionId = 6;
        CharSequence string;
        if (Build$VERSION.SDK_INT >= 21) {
            string = null;
        }
        else {
            string = this.getContext().getString(D.adE);
        }
        editorInfo.actionLabel = string;
        return onCreateInputConnection;
    }
    
    public void onDestroyActionMode(final ActionMode actionMode) {
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.aeR = false;
        this.eG();
    }
    
    public void onDismiss(final DialogInterface dialogInterface) {
        this.aeN = null;
    }
    
    public boolean onDown(final MotionEvent motionEvent) {
        return false;
    }
    
    public boolean onDragEvent(final DragEvent dragEvent) {
        switch (dragEvent.getAction()) {
            default: {
                return false;
            }
            case 1: {
                return dragEvent.getClipDescription().hasMimeType("text/plain");
            }
            case 5: {
                this.requestFocus();
                return true;
            }
            case 3: {
                this.a(dragEvent.getClipData());
                return true;
            }
        }
    }
    
    public boolean onEditorAction(final TextView textView, final int n, final KeyEvent keyEvent) {
        if (n == 6) {
            if (!this.mJ()) {
                if (this.aey != null) {
                    this.mM();
                    return true;
                }
                if (!this.mI()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
    
    public boolean onFling(final MotionEvent motionEvent, final MotionEvent motionEvent2, final float n, final float n2) {
        return false;
    }
    
    public void onFocusChanged(final boolean b, final int n, final Rect rect) {
        super.onFocusChanged(b, n, rect);
        if (!b) {
            this.mE();
        }
        else {
            if (this.aeI) {
                this.setMaxLines(Integer.MAX_VALUE);
            }
            if (this.aeA != null) {
                final Editable text = this.getText();
                ((Spannable)text).removeSpan((Object)this.aeA);
                this.aeA = null;
                if (this.aeK != null && this.aeK.size() > 0) {
                    final b[] mo = this.mO();
                    if (mo != null && mo.length != 0) {
                        final int spanEnd = ((Spannable)text).getSpanEnd((Object)mo[-1 + mo.length]);
                        final Editable text2 = this.getText();
                        final Iterator<b> iterator = this.aeK.iterator();
                        int n2 = spanEnd;
                        while (iterator.hasNext()) {
                            final b b2 = iterator.next();
                            final String s = (String)b2.ng();
                            final int index = text2.toString().indexOf(s, n2);
                            final int min = Math.min(text2.length(), index + s.length());
                            if (index != -1) {
                                text2.setSpan((Object)b2, index, min, 33);
                            }
                            n2 = min;
                        }
                        this.aeK.clear();
                    }
                }
            }
            this.setCursorVisible(true);
            final Editable text3 = this.getText();
            int length;
            if (text3 != null && text3.length() > 0) {
                length = text3.length();
            }
            else {
                length = 0;
            }
            this.setSelection(length);
            if (this.aeJ != null && this.aeJ.size() > 0) {
                new aa(this, (byte)0).execute((Object[])new Void[0]);
                this.aeJ = null;
            }
        }
    }
    
    public void onItemClick(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
        if (n >= 0) {
            final int bu = this.bu(n);
            if (bu >= 0 && this.aeW != null) {
                this.aeW.H(bu, n);
            }
        }
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        boolean onKeyDown = true;
        if (this.aey != null && n == 67) {
            if (this.aeu != null && this.aeu.isShowing()) {
                this.aeu.dismiss();
            }
            this.f(this.aey);
        }
        switch (n) {
            case 23:
            case 66: {
                if (!keyEvent.hasNoModifiers()) {
                    break;
                }
                if (this.mJ()) {
                    return onKeyDown;
                }
                if (this.aey != null) {
                    this.mM();
                    return onKeyDown;
                }
                if (this.mI()) {
                    return onKeyDown;
                }
                break;
            }
        }
        onKeyDown = super.onKeyDown(n, keyEvent);
        return onKeyDown;
    }
    
    public boolean onKeyPreIme(final int n, final KeyEvent keyEvent) {
        if (n == 4 && this.aey != null) {
            this.mM();
            return true;
        }
        return super.onKeyPreIme(n, keyEvent);
    }
    
    public boolean onKeyUp(final int n, final KeyEvent keyEvent) {
        switch (n) {
            case 61: {
                if (!keyEvent.hasNoModifiers()) {
                    break;
                }
                if (this.aey != null) {
                    this.mM();
                    break;
                }
                this.mJ();
                break;
            }
        }
        return super.onKeyUp(n, keyEvent);
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        this.aeC = ((AccessibilityManager)this.getContext().getSystemService("accessibility")).isEnabled();
    }
    
    public void onLongPress(final MotionEvent motionEvent) {
        if (this.aey == null) {
            final b bt = this.bt(this.h(motionEvent.getX(), motionEvent.getY()));
            if (bt != null) {
                if (this.aeQ) {
                    final String mu = bt.nf().mU();
                    this.startDrag(ClipData.newPlainText((CharSequence)mu, (CharSequence)(mu + ',')), (View$DragShadowBuilder)new Y(this, bt), (Object)null, 0);
                    this.f(bt);
                    return;
                }
                final String mu2 = bt.nf().mU();
                if (this.aeR) {
                    this.aeN = mu2;
                    this.aeM.setTitle((CharSequence)mu2);
                    this.aeM.setContentView(C.adB);
                    this.aeM.setCancelable(true);
                    this.aeM.setCanceledOnTouchOutside(true);
                    final Button button = (Button)this.aeM.findViewById(16908313);
                    button.setOnClickListener((View$OnClickListener)this);
                    int n;
                    if (this.mQ()) {
                        n = D.adG;
                    }
                    else {
                        n = D.adF;
                    }
                    button.setText((CharSequence)this.getContext().getResources().getString(n));
                    this.aeM.setOnDismissListener((DialogInterface$OnDismissListener)this);
                    this.aeM.show();
                }
            }
        }
    }
    
    public boolean onPrepareActionMode(final ActionMode actionMode, final Menu menu) {
        return false;
    }
    
    public void onRestoreInstanceState(final Parcelable parcelable) {
        if (!TextUtils.isEmpty((CharSequence)this.getText())) {
            super.onRestoreInstanceState((Parcelable)null);
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
    
    public Parcelable onSaveInstanceState() {
        this.mM();
        return super.onSaveInstanceState();
    }
    
    public boolean onScroll(final MotionEvent motionEvent, final MotionEvent motionEvent2, final float n, final float n2) {
        return false;
    }
    
    public void onSelectionChanged(final int n, final int n2) {
        final b mc = this.mC();
        if (mc != null && n < ((Spannable)this.getText()).getSpanEnd((Object)mc)) {
            this.setSelection(Math.min(1 + ((Spannable)this.getText()).getSpanEnd((Object)mc), this.getText().length()));
        }
        super.onSelectionChanged(n, n2);
    }
    
    public void onShowPress(final MotionEvent motionEvent) {
    }
    
    public boolean onSingleTapUp(final MotionEvent motionEvent) {
        return false;
    }
    
    public void onSizeChanged(final int n, final int n2, final int n3, final int n4) {
        super.onSizeChanged(n, n2, n3, n4);
        if (n != 0 && n2 != 0) {
            if (this.aeF > 0) {
                this.mG();
            }
            else {
                final b[] mo = this.mO();
                if (mo != null) {
                    for (final b b : mo) {
                        final Rect bounds = b.getBounds();
                        if (this.getWidth() > 0 && bounds.right - bounds.left > this.getWidth() - this.getPaddingLeft() - this.getPaddingRight()) {
                            this.a(b, b.nf());
                        }
                    }
                }
            }
        }
        if (this.aeO == null && !this.aeP) {
            ViewParent viewParent;
            for (viewParent = this.getParent(); viewParent != null && !(viewParent instanceof ScrollView); viewParent = viewParent.getParent()) {}
            if (viewParent != null) {
                this.aeO = (ScrollView)viewParent;
            }
            this.aeP = true;
        }
    }
    
    public boolean onTextContextMenuItem(final int n) {
        if (n == 16908322) {
            this.a(((ClipboardManager)this.getContext().getSystemService("clipboard")).getPrimaryClip());
            return true;
        }
        return super.onTextContextMenuItem(n);
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        if (this.isFocused()) {
            final boolean onTouchEvent = super.onTouchEvent(motionEvent);
            final int action = motionEvent.getAction();
            if (this.aey == null) {
                this.aeL.onTouchEvent(motionEvent);
            }
            while (true) {
                Label_0221: {
                    if (this.aeN != null || action != 1) {
                        break Label_0221;
                    }
                    final b bt = this.bt(this.h(motionEvent.getX(), motionEvent.getY()));
                    int n;
                    boolean onTouchEvent2;
                    if (bt != null) {
                        if (action == 1) {
                            if (this.aey != null && this.aey != bt) {
                                this.mM();
                                this.aey = this.c(bt);
                            }
                            else if (this.aey == null) {
                                this.setSelection(this.getText().length());
                                this.mJ();
                                this.aey = this.c(bt);
                            }
                            else if (this.aey.isSelected()) {
                                this.mM();
                            }
                        }
                        n = 1;
                        onTouchEvent2 = true;
                    }
                    else {
                        if (this.aey == null || !this.d(this.aey)) {
                            break Label_0221;
                        }
                        onTouchEvent2 = onTouchEvent;
                        n = 1;
                    }
                    if (action == 1 && n == 0) {
                        this.mM();
                        return onTouchEvent2;
                    }
                    return onTouchEvent2;
                }
                boolean onTouchEvent2 = onTouchEvent;
                int n = 0;
                continue;
            }
        }
        return super.onTouchEvent(motionEvent);
    }
    
    public final boolean p(final CharSequence charSequence) {
        int n;
        if (this.getSelectionEnd() == 0) {
            n = 0;
        }
        else {
            n = -1 + this.getSelectionEnd();
        }
        final int n2 = -1 + this.length();
        char c;
        if (n != n2) {
            c = charSequence.charAt(n);
        }
        else {
            c = charSequence.charAt(n2);
        }
        if (c != ',') {
            final boolean b = false;
            if (c != ';') {
                return b;
            }
        }
        return true;
    }
    
    protected void performFiltering(final CharSequence charSequence, final int n) {
        final boolean o = this.o(charSequence);
        if (this.enoughToFilter() && !o) {
            final int selectionEnd = this.getSelectionEnd();
            final b[] array = (b[])((Spannable)this.getText()).getSpans(this.aeq.findTokenStart(charSequence, selectionEnd), selectionEnd, (Class)b.class);
            if (array != null && array.length > 0) {
                this.dismissDropDown();
                return;
            }
        }
        else if (o) {
            this.dismissDropDown();
            return;
        }
        super.performFiltering(charSequence, n);
    }
    
    public void performValidation() {
    }
    
    public void removeTextChangedListener(final TextWatcher textWatcher) {
        this.aes = null;
        super.removeTextChangedListener(textWatcher);
    }
    
    protected void replaceText(final CharSequence charSequence) {
    }
    
    public <T extends android.widget.ListAdapter> void setAdapter(final T adapter) {
        super.setAdapter((ListAdapter)adapter);
        final a a = (a)adapter;
        a.a(new O(this));
        a.a(this.acb);
    }
    
    public void setTokenizer(final MultiAutoCompleteTextView$Tokenizer aeq) {
        super.setTokenizer(this.aeq = aeq);
    }
    
    public void setValidator(final AutoCompleteTextView$Validator aer) {
        super.setValidator(this.aer = aer);
    }
}
