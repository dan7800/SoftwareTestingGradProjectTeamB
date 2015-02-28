package com.android.mail.compose;

import android.util.*;
import android.net.*;
import android.content.*;
import com.android.mail.utils.*;
import java.io.*;
import android.os.*;
import android.database.*;
import android.database.sqlite.*;
import com.android.mail.providers.*;
import android.view.inputmethod.*;
import android.widget.*;
import java.util.*;
import android.view.*;
import com.android.mail.ui.*;

class AttachmentsView extends LinearLayout
{
    private static final String mW;
    private final ArrayList<Attachment> Zf;
    private d auZ;
    private AttachmentTileGrid ava;
    private LinearLayout avb;
    
    static {
        mW = D.AU();
    }
    
    public AttachmentsView(final Context context) {
        this(context, null);
    }
    
    public AttachmentsView(final Context context, final AttributeSet set) {
        super(context, set);
        this.Zf = new ArrayList<Attachment>();
    }
    
    private static int a(final Uri uri, final ContentResolver contentResolver) {
        int n = -1;
        ParcelFileDescriptor openFileDescriptor = null;
        while (true) {
            try {
                openFileDescriptor = contentResolver.openFileDescriptor(uri, "r");
                n = (int)openFileDescriptor.getStatSize();
                if (openFileDescriptor == null) {
                    break Label_0030;
                }
                try {
                    openFileDescriptor.close();
                    return Math.max(n, 0);
                }
                catch (IOException ex2) {
                    E.e(AttachmentsView.mW, "Error closing file opened to obtain size.", new Object[0]);
                }
            }
            catch (FileNotFoundException ex) {
                E.d(AttachmentsView.mW, ex, "Error opening file to obtain size.", new Object[0]);
                if (openFileDescriptor != null) {
                    try {
                        openFileDescriptor.close();
                        continue;
                    }
                    catch (IOException ex3) {
                        E.e(AttachmentsView.mW, "Error closing file opened to obtain size.", new Object[0]);
                        continue;
                    }
                    continue;
                }
                continue;
            }
            finally {
                Label_0110: {
                    if (openFileDescriptor == null) {
                        break Label_0110;
                    }
                    try {
                        openFileDescriptor.close();
                    }
                    catch (IOException ex4) {
                        E.e(AttachmentsView.mW, "Error closing file opened to obtain size.", new Object[0]);
                    }
                }
            }
            break;
        }
    }
    
    private static Cursor a(final ContentResolver contentResolver, final Uri uri, final String s) {
        try {
            return contentResolver.query(uri, new String[] { s }, (String)null, (String[])null, (String)null);
        }
        catch (SQLiteException ex) {
            return null;
        }
    }
    
    public final long a(final Account account, final Attachment attachment) {
        final int vj = account.ayw.vJ();
        if (attachment.size == -1 || attachment.size > vj) {
            throw new AttachmentsView$AttachmentFailureException("Attachment too large to attach", 2131296399);
        }
        final Iterator<Attachment> iterator = this.Zf.iterator();
        long n = 0L;
        while (iterator.hasNext()) {
            n += iterator.next().size;
        }
        if (n + attachment.size > vj) {
            throw new AttachmentsView$AttachmentFailureException("Attachment too large to attach", 2131296401);
        }
        this.Zf.add(attachment);
        if (!attachment.uB()) {
            if (!this.isShown()) {
                this.setVisibility(0);
            }
            this.ava.setVisibility(0);
            this.avb.setVisibility(0);
            final InputMethodManager inputMethodManager = (InputMethodManager)this.getContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(this.getWindowToken(), 0);
            }
            if (AttachmentTile.g(attachment)) {
                final ComposeAttachmentTile i = this.ava.i(attachment);
                i.a((View$OnClickListener)new b(this, i, attachment));
            }
            else {
                final a a = new a(this.getContext(), attachment);
                a.a((View$OnClickListener)new c(this, a, attachment));
                this.avb.addView((View)a, (ViewGroup$LayoutParams)new LinearLayout$LayoutParams(-1, -1));
            }
            if (this.auZ != null) {
                this.auZ.sh();
            }
        }
        return attachment.size;
    }
    
    protected final void a(final View view, final Attachment attachment) {
        this.Zf.remove(attachment);
        ((ViewGroup)view.getParent()).removeView(view);
        if (this.auZ != null) {
            this.auZ.sg();
        }
    }
    
    public final void a(final d auZ) {
        this.auZ = auZ;
    }
    
    public final void d(final ArrayList<AttachmentTile$AttachmentPreview> list) {
        this.ava.d(list);
    }
    
    public final Attachment o(final Uri p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: ifnull          14
        //     4: aload_1        
        //     5: invokevirtual   android/net/Uri.getPath:()Ljava/lang/String;
        //     8: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //    11: ifeq            25
        //    14: new             Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;
        //    17: dup            
        //    18: ldc_w           "Failed to create local attachment"
        //    21: invokespecial   com/android/mail/compose/AttachmentsView$AttachmentFailureException.<init>:(Ljava/lang/String;)V
        //    24: athrow         
        //    25: aload_0        
        //    26: invokevirtual   com/android/mail/compose/AttachmentsView.getContext:()Landroid/content/Context;
        //    29: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    32: astore_2       
        //    33: aload_2        
        //    34: aload_1        
        //    35: invokevirtual   android/content/ContentResolver.getType:(Landroid/net/Uri;)Ljava/lang/String;
        //    38: astore_3       
        //    39: aload_3        
        //    40: ifnonnull       401
        //    43: ldc_w           ""
        //    46: astore          4
        //    48: new             Lcom/android/mail/providers/Attachment;
        //    51: dup            
        //    52: invokespecial   com/android/mail/providers/Attachment.<init>:()V
        //    55: astore          5
        //    57: aload           5
        //    59: aconst_null    
        //    60: putfield        com/android/mail/providers/Attachment.uri:Landroid/net/Uri;
        //    63: aload           5
        //    65: aconst_null    
        //    66: invokevirtual   com/android/mail/providers/Attachment.setName:(Ljava/lang/String;)Z
        //    69: pop            
        //    70: aload           5
        //    72: iconst_0       
        //    73: putfield        com/android/mail/providers/Attachment.size:I
        //    76: aload           5
        //    78: aload_1        
        //    79: putfield        com/android/mail/providers/Attachment.ayP:Landroid/net/Uri;
        //    82: aload           5
        //    84: aload_1        
        //    85: putfield        com/android/mail/providers/Attachment.ayQ:Landroid/net/Uri;
        //    88: aload_2        
        //    89: aload_1        
        //    90: iconst_2       
        //    91: anewarray       Ljava/lang/String;
        //    94: dup            
        //    95: iconst_0       
        //    96: ldc_w           "_display_name"
        //    99: aastore        
        //   100: dup            
        //   101: iconst_1       
        //   102: ldc_w           "_size"
        //   105: aastore        
        //   106: aconst_null    
        //   107: aconst_null    
        //   108: aconst_null    
        //   109: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   112: astore          14
        //   114: aload           14
        //   116: ifnull          163
        //   119: aload           14
        //   121: invokeinterface android/database/Cursor.moveToNext:()Z
        //   126: ifeq            156
        //   129: aload           5
        //   131: aload           14
        //   133: iconst_0       
        //   134: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   139: invokevirtual   com/android/mail/providers/Attachment.setName:(Ljava/lang/String;)Z
        //   142: pop            
        //   143: aload           5
        //   145: aload           14
        //   147: iconst_1       
        //   148: invokeinterface android/database/Cursor.getInt:(I)I
        //   153: putfield        com/android/mail/providers/Attachment.size:I
        //   156: aload           14
        //   158: invokeinterface android/database/Cursor.close:()V
        //   163: aload           5
        //   165: invokevirtual   com/android/mail/providers/Attachment.getName:()Ljava/lang/String;
        //   168: ifnonnull       181
        //   171: aload           5
        //   173: aload_1        
        //   174: invokevirtual   android/net/Uri.getLastPathSegment:()Ljava/lang/String;
        //   177: invokevirtual   com/android/mail/providers/Attachment.setName:(Ljava/lang/String;)Z
        //   180: pop            
        //   181: aload           5
        //   183: getfield        com/android/mail/providers/Attachment.size:I
        //   186: ifne            199
        //   189: aload           5
        //   191: aload_1        
        //   192: aload_2        
        //   193: invokestatic    com/android/mail/compose/AttachmentsView.a:(Landroid/net/Uri;Landroid/content/ContentResolver;)I
        //   196: putfield        com/android/mail/providers/Attachment.size:I
        //   199: aload           5
        //   201: aload           4
        //   203: invokevirtual   com/android/mail/providers/Attachment.setContentType:(Ljava/lang/String;)V
        //   206: aload           5
        //   208: areturn        
        //   209: astore          15
        //   211: aload           14
        //   213: invokeinterface android/database/Cursor.close:()V
        //   218: aload           15
        //   220: athrow         
        //   221: astore          16
        //   223: aload           14
        //   225: astore          8
        //   227: aload_2        
        //   228: aload_1        
        //   229: ldc_w           "_display_name"
        //   232: invokestatic    com/android/mail/compose/AttachmentsView.a:(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
        //   235: astore          8
        //   237: aload           8
        //   239: ifnull          266
        //   242: aload           8
        //   244: invokeinterface android/database/Cursor.moveToNext:()Z
        //   249: ifeq            266
        //   252: aload           5
        //   254: aload           8
        //   256: iconst_0       
        //   257: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   262: invokevirtual   com/android/mail/providers/Attachment.setName:(Ljava/lang/String;)Z
        //   265: pop            
        //   266: aload           8
        //   268: ifnull          278
        //   271: aload           8
        //   273: invokeinterface android/database/Cursor.close:()V
        //   278: aload_2        
        //   279: aload_1        
        //   280: ldc_w           "_size"
        //   283: invokestatic    com/android/mail/compose/AttachmentsView.a:(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
        //   286: astore          8
        //   288: aload           8
        //   290: ifnull          348
        //   293: aload           8
        //   295: invokeinterface android/database/Cursor.moveToNext:()Z
        //   300: ifeq            348
        //   303: aload           5
        //   305: aload           8
        //   307: iconst_0       
        //   308: invokeinterface android/database/Cursor.getInt:(I)I
        //   313: putfield        com/android/mail/providers/Attachment.size:I
        //   316: aload           8
        //   318: ifnull          163
        //   321: aload           8
        //   323: invokeinterface android/database/Cursor.close:()V
        //   328: goto            163
        //   331: astore          9
        //   333: aload           8
        //   335: ifnull          345
        //   338: aload           8
        //   340: invokeinterface android/database/Cursor.close:()V
        //   345: aload           9
        //   347: athrow         
        //   348: aload           5
        //   350: aload_1        
        //   351: aload_2        
        //   352: invokestatic    com/android/mail/compose/AttachmentsView.a:(Landroid/net/Uri;Landroid/content/ContentResolver;)I
        //   355: putfield        com/android/mail/providers/Attachment.size:I
        //   358: goto            316
        //   361: astore          10
        //   363: aload           8
        //   365: ifnull          375
        //   368: aload           8
        //   370: invokeinterface android/database/Cursor.close:()V
        //   375: aload           10
        //   377: athrow         
        //   378: astore          13
        //   380: new             Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;
        //   383: dup            
        //   384: ldc_w           "Security Exception from attachment uri"
        //   387: aload           13
        //   389: invokespecial   com/android/mail/compose/AttachmentsView$AttachmentFailureException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   392: athrow         
        //   393: astore          7
        //   395: aconst_null    
        //   396: astore          8
        //   398: goto            227
        //   401: aload_3        
        //   402: astore          4
        //   404: goto            48
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  88     114    393    401    Landroid/database/sqlite/SQLiteException;
        //  88     114    378    393    Ljava/lang/SecurityException;
        //  119    156    209    221    Any
        //  156    163    221    227    Landroid/database/sqlite/SQLiteException;
        //  156    163    378    393    Ljava/lang/SecurityException;
        //  211    221    221    227    Landroid/database/sqlite/SQLiteException;
        //  211    221    378    393    Ljava/lang/SecurityException;
        //  227    237    331    348    Any
        //  242    266    331    348    Any
        //  278    288    361    378    Any
        //  293    316    361    378    Any
        //  348    358    361    378    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0156:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.ava = (AttachmentTileGrid)this.findViewById(2131558680);
        this.avb = (LinearLayout)this.findViewById(2131558681);
    }
    
    public final ArrayList<Attachment> sc() {
        return this.Zf;
    }
    
    public final ArrayList<AttachmentTile$AttachmentPreview> sd() {
        return this.ava.sd();
    }
    
    public final void se() {
        this.Zf.clear();
        this.ava.removeAllViews();
        this.avb.removeAllViews();
        this.setVisibility(8);
    }
    
    public final void sf() {
        while (true) {
            Label_0087: {
                View view;
                if (AttachmentTile.g(this.Zf.get(-1 + this.Zf.size()))) {
                    final int n = -1 + this.ava.getChildCount();
                    if (n <= 0) {
                        break Label_0087;
                    }
                    view = this.ava.getChildAt(n);
                }
                else {
                    final int n2 = -1 + this.avb.getChildCount();
                    if (n2 <= 0) {
                        break Label_0087;
                    }
                    view = this.avb.getChildAt(n2);
                }
                if (view != null) {
                    view.requestFocus();
                }
                return;
            }
            View view = null;
            continue;
        }
    }
}
