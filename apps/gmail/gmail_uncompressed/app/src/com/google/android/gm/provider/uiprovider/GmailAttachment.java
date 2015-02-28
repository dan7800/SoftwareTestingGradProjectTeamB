package com.google.android.gm.provider.uiprovider;

import android.os.*;
import java.util.*;
import org.json.*;
import com.google.android.gm.provider.*;
import com.android.mail.providers.*;
import android.text.*;
import com.google.common.collect.*;
import android.net.*;
import com.android.mail.utils.*;
import java.io.*;

public class GmailAttachment extends Attachment
{
    public static final Parcelable$Creator<GmailAttachment> CREATOR;
    public long bku;
    public int bla;
    public long bol;
    public int bom;
    private String bon;
    private String boo;
    public int bop;
    public long boq;
    public String bor;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    public GmailAttachment() {
    }
    
    public GmailAttachment(final Parcel parcel) {
        super(parcel);
        this.HZ();
    }
    
    private GmailAttachment(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore_2       
        //     2: aload_0        
        //     3: invokespecial   com/android/mail/providers/Attachment.<init>:()V
        //     6: aload_1        
        //     7: getstatic       com/android/mail/providers/E.aCB:Ljava/util/regex/Pattern;
        //    10: invokestatic    android/text/TextUtils.split:(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
        //    13: astore_3       
        //    14: aload_3        
        //    15: ifnull          142
        //    18: aload_3        
        //    19: arraylength    
        //    20: bipush          6
        //    22: if_icmplt       142
        //    25: aload_0        
        //    26: aload_3        
        //    27: iconst_0       
        //    28: aaload         
        //    29: putfield        com/google/android/gm/provider/uiprovider/GmailAttachment.partId:Ljava/lang/String;
        //    32: aload_0        
        //    33: aload_3        
        //    34: iload_2        
        //    35: aaload         
        //    36: invokevirtual   com/google/android/gm/provider/uiprovider/GmailAttachment.setName:(Ljava/lang/String;)Z
        //    39: pop            
        //    40: aload_0        
        //    41: aload_3        
        //    42: iconst_2       
        //    43: aaload         
        //    44: invokevirtual   com/google/android/gm/provider/uiprovider/GmailAttachment.setContentType:(Ljava/lang/String;)V
        //    47: aload_0        
        //    48: aload_3        
        //    49: iconst_3       
        //    50: aaload         
        //    51: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //    54: putfield        com/google/android/gm/provider/uiprovider/GmailAttachment.size:I
        //    57: aload_0        
        //    58: aload_3        
        //    59: iconst_4       
        //    60: aaload         
        //    61: invokevirtual   com/google/android/gm/provider/uiprovider/GmailAttachment.fn:(Ljava/lang/String;)V
        //    64: aload_3        
        //    65: iconst_5       
        //    66: aaload         
        //    67: ldc             "SERVER_ATTACHMENT"
        //    69: invokevirtual   java/lang/String.equalsIgnoreCase:(Ljava/lang/String;)Z
        //    72: ifeq            77
        //    75: iconst_0       
        //    76: istore_2       
        //    77: aload_0        
        //    78: iload_2        
        //    79: putfield        com/google/android/gm/provider/uiprovider/GmailAttachment.bom:I
        //    82: aload_0        
        //    83: aload_3        
        //    84: bipush          6
        //    86: aaload         
        //    87: invokevirtual   com/google/android/gm/provider/uiprovider/GmailAttachment.fo:(Ljava/lang/String;)V
        //    90: aload_3        
        //    91: arraylength    
        //    92: bipush          7
        //    94: if_icmple       105
        //    97: aload_0        
        //    98: aload_3        
        //    99: bipush          7
        //   101: aaload         
        //   102: putfield        com/google/android/gm/provider/uiprovider/GmailAttachment.bor:Ljava/lang/String;
        //   105: aload_3        
        //   106: arraylength    
        //   107: bipush          8
        //   109: if_icmple       123
        //   112: aload_0        
        //   113: aload_3        
        //   114: bipush          8
        //   116: aaload         
        //   117: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //   120: putfield        com/google/android/gm/provider/uiprovider/GmailAttachment.type:I
        //   123: return         
        //   124: astore          6
        //   126: aload_0        
        //   127: iconst_0       
        //   128: putfield        com/google/android/gm/provider/uiprovider/GmailAttachment.size:I
        //   131: goto            57
        //   134: astore          7
        //   136: aload_0        
        //   137: iconst_0       
        //   138: putfield        com/google/android/gm/provider/uiprovider/GmailAttachment.type:I
        //   141: return         
        //   142: iload_2        
        //   143: anewarray       Ljava/lang/Object;
        //   146: astore          4
        //   148: aload           4
        //   150: iconst_0       
        //   151: aload_1        
        //   152: aastore        
        //   153: new             Ljava/lang/IllegalArgumentException;
        //   156: dup            
        //   157: ldc             "Joined string %s has less than 6 tokens."
        //   159: aload           4
        //   161: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   164: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //   167: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  47     57     124    134    Ljava/lang/NumberFormatException;
        //  112    123    134    142    Ljava/lang/NumberFormatException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0123:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
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
    
    private GmailAttachment(final JSONObject jsonObject) {
        super(jsonObject);
        this.HZ();
    }
    
    public static String K(final List<GmailAttachment> list) {
        if (list == null) {
            return null;
        }
        final StringBuilder sb = new StringBuilder();
        for (final GmailAttachment gmailAttachment : list) {
            if (sb.length() != 0) {
                sb.append("\n");
            }
            sb.append(gmailAttachment.uC());
        }
        return sb.toString();
    }
    
    public static List<Attachment> bK(final String s) {
        final ArrayList<GmailAttachment> list = (ArrayList<GmailAttachment>)new ArrayList<Attachment>();
        if (s != null) {
            try {
                final JSONArray jsonArray = new JSONArray(s);
                for (int i = 0; i < jsonArray.length(); ++i) {
                    list.add(new GmailAttachment(jsonArray.getJSONObject(i)));
                }
            }
            catch (JSONException ex) {
                throw new IllegalArgumentException((Throwable)ex);
            }
        }
        return (List<Attachment>)list;
    }
    
    public static int ea(final int n) {
        if (g.dG(n)) {
            return 3;
        }
        if (g.dE(n)) {
            return 2;
        }
        if (g.dF(n) || g.dD(n)) {
            return 5;
        }
        if (g.dH(n)) {
            return 1;
        }
        return 0;
    }
    
    public static List<GmailAttachment> fp(final String s) {
        final ArrayList<GmailAttachment> list = new ArrayList<GmailAttachment>();
        if (s != null) {
            final String[] split = TextUtils.split(s, E.aCA);
            final int length = split.length;
            int i = 0;
        Label_0054_Outer:
            while (i < length) {
                final String s2 = split[i];
                while (true) {
                    try {
                        list.add(new GmailAttachment(s2));
                        ++i;
                        continue Label_0054_Outer;
                    }
                    catch (IllegalArgumentException ex) {
                        com.android.mail.utils.E.f(GmailAttachment.mW, "Unable to create attachment from %s. Full string %s", s2, s);
                        continue;
                    }
                    break;
                }
                break;
            }
        }
        return list;
    }
    
    public final void HY() {
        final JSONObject jsonObject = new JSONObject();
        while (true) {
            try {
                jsonObject.put("partId", (Object)this.partId);
                jsonObject.put("conversationId", this.bku);
                jsonObject.put("messageId", this.bol);
                jsonObject.put("origin", this.bom);
                jsonObject.put("simpleContentType", (Object)this.bon);
                jsonObject.put("rendition", this.bla);
                jsonObject.put("downloadStatus", this.bop);
                jsonObject.put("downloadId", this.boq);
                jsonObject.put("cachedFileUri", (Object)this.bor);
                this.ayS = jsonObject.toString();
            }
            catch (JSONException ex) {
                com.android.mail.utils.E.e(GmailAttachment.mW, "Failed to deflate to provider data.", new Object[0]);
                continue;
            }
            break;
        }
    }
    
    public final void HZ() {
        try {
            final JSONObject jsonObject = new JSONObject(this.ayS);
            this.partId = jsonObject.optString("partId");
            this.bku = jsonObject.optLong("conversationId");
            this.bol = jsonObject.optLong("messageId");
            this.bom = jsonObject.optInt("origin", 1);
            this.bon = jsonObject.optString("simpleContentType");
            this.bla = jsonObject.optInt("rendition");
            this.bop = jsonObject.optInt("downloadStatus");
            this.boq = jsonObject.optLong("downloadId");
            this.bor = jsonObject.optString("cachedFileUri");
        }
        catch (JSONException ex) {
            com.android.mail.utils.E.c(GmailAttachment.mW, "Failed to inflate from provider data: %s", this.ayS);
            this.bom = 1;
        }
    }
    
    public final String Ia() {
        return TextUtils.join((CharSequence)"_", (Iterable)Lists.n(String.valueOf(this.bku), String.valueOf(this.bol), this.partId));
    }
    
    public final String Ib() {
        if (this.bom == 0) {
            return this.Ia();
        }
        if (this.ayP != null) {
            return this.ayP.toString();
        }
        return "";
    }
    
    public final void aw(final String s) {
        if (s == null) {
            this.bor = null;
        }
        else {
            final Uri parse = Uri.parse(s);
            if (parse.getScheme() != null) {
                this.bor = s;
                if (TextUtils.isEmpty((CharSequence)this.getName())) {
                    this.setName(parse.getLastPathSegment());
                }
            }
            else {
                this.bor = null;
                if (TextUtils.isEmpty((CharSequence)this.getName())) {
                    this.setName(s);
                }
            }
        }
    }
    
    public final void dY(final int bla) {
        if (this.bla == 0 || bla == 1) {
            this.bla = bla;
        }
    }
    
    public final void dZ(final int n) {
        switch (n) {
            default: {}
            case 1: {
                this.type = 1;
            }
            case 2: {
                this.type = 2;
            }
            case 0: {
                this.type = 0;
            }
        }
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (o == null || this.getClass() != o.getClass()) {
                return false;
            }
            if (!super.equals(o)) {
                return false;
            }
            final GmailAttachment gmailAttachment = (GmailAttachment)o;
            if (this.bku != gmailAttachment.bku) {
                return false;
            }
            if (this.boq != gmailAttachment.boq) {
                return false;
            }
            if (this.bop != gmailAttachment.bop) {
                return false;
            }
            if (this.bom != gmailAttachment.bom) {
                return false;
            }
            if (this.bla != gmailAttachment.bla) {
                return false;
            }
            if (this.bol != gmailAttachment.bol) {
                return false;
            }
            Label_0150: {
                if (this.bor != null) {
                    if (this.bor.equals(gmailAttachment.bor)) {
                        break Label_0150;
                    }
                }
                else if (gmailAttachment.bor == null) {
                    break Label_0150;
                }
                return false;
            }
            if (this.bon != null) {
                if (this.bon.equals(gmailAttachment.bon)) {
                    return true;
                }
            }
            else if (gmailAttachment.bon == null) {
                return true;
            }
            return false;
        }
        return true;
    }
    
    public final void fn(final String bon) {
        if (!TextUtils.equals((CharSequence)this.bon, (CharSequence)bon)) {
            this.boo = null;
            this.bon = bon;
        }
    }
    
    public final void fo(final String s) {
        final Uri parse = Uri.parse(s);
        if (parse.getScheme() != null) {
            this.bom = 1;
            this.ayP = parse;
            if (ag.D(this.ayQ)) {
                this.ayQ = this.ayP;
            }
            return;
        }
        final String[] split = TextUtils.split(s, "_");
        if (split.length == 3) {
            try {
                final long long1 = Long.parseLong(split[0]);
                final long long2 = Long.parseLong(split[1]);
                final String partId = split[2];
                this.bom = 0;
                this.bku = long1;
                this.bol = long2;
                this.partId = partId;
                return;
            }
            catch (NumberFormatException ex) {
                com.android.mail.utils.E.e(GmailAttachment.mW, "Unknown origin for extras: %s", s);
                return;
            }
        }
        com.android.mail.utils.E.e(GmailAttachment.mW, "Unknown origin for extras: %s", s);
    }
    
    @Override
    public int hashCode() {
        final int n = 31 * (31 * (31 * (31 * super.hashCode() + (int)(this.bku ^ this.bku >>> 32)) + (int)(this.bol ^ this.bol >>> 32)) + this.bom);
        int hashCode;
        if (this.bon != null) {
            hashCode = this.bon.hashCode();
        }
        else {
            hashCode = 0;
        }
        final int n2 = 31 * (31 * (31 * (31 * (hashCode + n) + this.bla) + this.bop) + (int)(this.boq ^ this.boq >>> 32));
        final String bor = this.bor;
        int hashCode2 = 0;
        if (bor != null) {
            hashCode2 = this.bor.hashCode();
        }
        return n2 + hashCode2;
    }
    
    @Override
    public final boolean setName(final String name) {
        if (super.setName(name)) {
            this.boo = null;
            return true;
        }
        return false;
    }
    
    @Override
    public final String uC() {
        final String[] array = new String[9];
        String partId;
        if (this.partId == null) {
            partId = "";
        }
        else {
            partId = this.partId;
        }
        array[0] = partId;
        String replaceAll;
        if (this.getName() == null) {
            replaceAll = "";
        }
        else {
            replaceAll = this.getName().replaceAll("[|\n]", "");
        }
        array[1] = replaceAll;
        array[2] = this.getContentType();
        array[3] = String.valueOf(this.size);
        if (TextUtils.isEmpty((CharSequence)this.boo)) {
            String s;
            if (!TextUtils.isEmpty((CharSequence)this.bon)) {
                s = I.u(this.getName(), this.bon);
            }
            else {
                s = this.getContentType();
            }
            this.boo = I.u(this.getName(), s);
        }
        array[4] = this.boo;
        String s2;
        if (this.bom == 0) {
            s2 = "SERVER_ATTACHMENT";
        }
        else {
            s2 = "LOCAL_FILE";
        }
        array[5] = s2;
        array[6] = this.Ib();
        String bor;
        if (this.bor == null) {
            bor = "";
        }
        else {
            bor = this.bor;
        }
        array[7] = bor;
        array[8] = String.valueOf(this.type);
        return TextUtils.join((CharSequence)"|", (Iterable)Lists.n(array));
    }
    
    @Override
    public final JSONObject up() {
        this.HY();
        return super.up();
    }
    
    @Override
    public void writeToParcel(final Parcel parcel, final int n) {
        this.HY();
        super.writeToParcel(parcel, n);
    }
}
