.class public Lcom/android/mail/compose/g;
.super Landroid/support/v7/app/g;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/support/v7/app/d;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/ex/chips/Z;
.implements Lcom/android/mail/compose/A;
.implements Lcom/android/mail/compose/d;
.implements Lcom/android/mail/compose/x;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/app/g;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/support/v7/app/d;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Lcom/android/ex/chips/Z;",
        "Lcom/android/mail/compose/A;",
        "Lcom/android/mail/compose/d;",
        "Lcom/android/mail/compose/x;"
    }
.end annotation


# static fields
.field private static final Wp:Ljava/util/Random;

.field static final avk:[Ljava/lang/String;

.field private static avl:Lcom/android/mail/compose/v;

.field private static final avm:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final avn:Landroid/os/Handler;

.field public static final avo:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final avp:Ljava/lang/String;

.field private static final avq:Ljava/lang/String;

.field private static final mW:Ljava/lang/String;


# instance fields
.field protected Nc:Lcom/android/mail/providers/Account;

.field private XI:Ljava/lang/String;

.field private aeO:Landroid/widget/ScrollView;

.field private final aea:Landroid/graphics/Rect;

.field private avA:Landroid/widget/TextView;

.field private avB:Lcom/android/mail/compose/n;

.field protected avC:I

.field private avD:Z

.field private avE:Lcom/android/mail/compose/QuotedTextView;

.field protected avF:Landroid/widget/EditText;

.field private avG:Landroid/view/View;

.field private avH:Landroid/widget/TextView;

.field private avI:Landroid/view/View;

.field protected avJ:Lcom/android/mail/compose/FromAddressSpinner;

.field protected avK:Z

.field private avL:Z

.field private avM:Z

.field private avN:Z

.field private avO:Landroid/view/MenuItem;

.field protected avP:Lcom/android/mail/providers/Message;

.field private avQ:J

.field private avR:Lcom/android/mail/providers/Message;

.field private avS:Lcom/android/mail/providers/ReplyFromAccount;

.field private final avT:Ljava/lang/Object;

.field private avU:Z

.field private avV:Lcom/android/mail/compose/t;

.field private avW:Lcom/android/mail/compose/t;

.field private avX:Lcom/android/mail/compose/t;

.field private avY:Landroid/net/Uri;

.field private avZ:Z

.field private avr:Lcom/android/ex/chips/RecipientEditTextView;

.field private avs:Lcom/android/ex/chips/RecipientEditTextView;

.field private avt:Lcom/android/ex/chips/RecipientEditTextView;

.field private avu:Landroid/view/View;

.field private avv:Lcom/android/mail/compose/CcBccView;

.field private avw:Lcom/android/mail/compose/AttachmentsView;

.field protected avx:Lcom/android/mail/providers/ReplyFromAccount;

.field private avy:Lcom/android/mail/providers/Settings;

.field private avz:Lcom/android/b/a;

.field protected awa:Landroid/os/Bundle;

.field private awb:Landroid/content/ContentValues;

.field private awc:I

.field private awd:[Lcom/android/mail/providers/Account;

.field private awe:Z

.field private awf:Z

.field private final awg:Landroid/view/View$OnKeyListener;

.field private final awh:Lcom/google/android/mail/common/html/parser/t;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 201
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "subject"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "to"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bcc"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "quotedText"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/compose/g;->avk:[Ljava/lang/String;

    .line 212
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mail/compose/g;->avl:Lcom/android/mail/compose/v;

    .line 224
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/android/mail/compose/g;->avm:Ljava/util/concurrent/ConcurrentHashMap;

    .line 226
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/android/mail/compose/g;->Wp:Ljava/util/Random;

    .line 251
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    .line 276
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/mail/compose/g;->avo:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 284
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Send Message Task Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 286
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/mail/compose/g;->avn:Landroid/os/Handler;

    .line 288
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/compose/g;->avp:Ljava/lang/String;

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/mail/compose/g;->avp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mail/compose/g;->avp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/compose/g;->avq:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Landroid/support/v7/app/g;-><init>()V

    .line 292
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mail/compose/g;->aea:Landroid/graphics/Rect;

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/compose/g;->avC:I

    .line 324
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mail/compose/g;->avQ:J

    .line 327
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mail/compose/g;->avT:Ljava/lang/Object;

    .line 332
    iput-boolean v2, p0, Lcom/android/mail/compose/g;->avU:Z

    .line 337
    iput-boolean v2, p0, Lcom/android/mail/compose/g;->avZ:Z

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/compose/g;->awb:Landroid/content/ContentValues;

    .line 346
    iput-boolean v2, p0, Lcom/android/mail/compose/g;->awf:Z

    .line 349
    new-instance v0, Lcom/android/mail/compose/h;

    invoke-direct {v0, p0}, Lcom/android/mail/compose/h;-><init>(Lcom/android/mail/compose/g;)V

    iput-object v0, p0, Lcom/android/mail/compose/g;->awg:Landroid/view/View$OnKeyListener;

    .line 361
    new-instance v0, Lcom/android/mail/compose/i;

    invoke-direct {v0, p0}, Lcom/android/mail/compose/i;-><init>(Lcom/android/mail/compose/g;)V

    iput-object v0, p0, Lcom/android/mail/compose/g;->awh:Lcom/google/android/mail/common/html/parser/t;

    .line 4032
    return-void
.end method

.method private A(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 2934
    .line 2936
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2954
    :cond_0
    :goto_0
    return v0

    .line 2940
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2941
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2942
    invoke-direct {p0, p1}, Lcom/android/mail/compose/g;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2943
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 2945
    if-lt v1, v4, :cond_2

    sub-int v5, v1, v4

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2948
    sub-int v0, v1, v4

    goto :goto_0

    .line 2949
    :cond_2
    if-lt v1, v2, :cond_0

    sub-int v3, v1, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2952
    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public static A(Lcom/android/ex/chips/RecipientEditTextView;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2807
    if-nez p0, :cond_1

    .line 2808
    new-array v0, v1, [Ljava/lang/String;

    .line 2816
    :cond_0
    return-object v0

    .line 2810
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 2811
    array-length v3, v2

    .line 2812
    new-array v0, v3, [Ljava/lang/String;

    .line 2813
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2814
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 2813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mail/compose/g;J)J
    .locals 1

    .prologue
    .line 140
    iput-wide p1, p0, Lcom/android/mail/compose/g;->avQ:J

    return-wide p1
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 405
    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mail.intent.action.LAUNCH_COMPOSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "fromemail"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "action"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "account"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "in-reference-to-message-uri"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/ContentResolver;Lcom/android/mail/providers/Account;Ljava/lang/String;Lcom/android/mail/compose/w;)Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 2667
    new-instance v2, Landroid/os/Bundle;

    iget-object v0, p3, Lcom/android/mail/compose/w;->ams:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2668
    iget-object v0, p3, Lcom/android/mail/compose/w;->ams:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    .line 2670
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2671
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 2672
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2673
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2674
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2675
    :cond_0
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 2676
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2677
    :cond_1
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 2678
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2679
    :cond_2
    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 2680
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 2682
    :cond_3
    sget-object v0, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v4, "Unexpected object type: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v0, v4, v5}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2688
    :cond_4
    invoke-virtual {p3}, Lcom/android/mail/compose/w;->sN()Landroid/os/Bundle;

    move-result-object v0

    .line 2689
    if-eqz v0, :cond_5

    .line 2690
    const-string v1, "opened_fds"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2694
    :cond_5
    iget-object v0, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;)Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 2744
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 2782
    :goto_0
    return-object v0

    .line 2748
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2749
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2751
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 2752
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2753
    :try_start_0
    iget-object v3, v0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    const-string v6, "r"

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 2777
    :goto_2
    if-eqz v3, :cond_2

    .line 2778
    iget-object v0, v0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 2759
    :catch_0
    move-exception v3

    .line 2760
    sget-object v6, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v7, "Exception attempting to open attachment"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v3, v7, v8}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v3, v2

    .line 2775
    goto :goto_2

    .line 2762
    :catch_1
    move-exception v3

    .line 2771
    sget-object v6, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v7, "Security Exception attempting to open attachment"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v3, v7, v8}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v3, v2

    .line 2774
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 2782
    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mail/compose/g;Lcom/android/mail/providers/Message;)Lcom/android/mail/providers/Message;
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    return-object p1
.end method

.method static synthetic a(Lcom/android/mail/compose/g;Lcom/android/mail/providers/ReplyFromAccount;Lcom/android/mail/providers/Message;ILandroid/text/Spanned;)Lcom/android/mail/providers/Message;
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/providers/ReplyFromAccount;Lcom/android/mail/providers/Message;ILandroid/text/Spanned;)Lcom/android/mail/providers/Message;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/android/mail/providers/ReplyFromAccount;Lcom/android/mail/providers/Message;ILandroid/text/Spanned;)Lcom/android/mail/providers/Message;
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1126
    new-instance v8, Lcom/android/mail/providers/Message;

    invoke-direct {v8}, Lcom/android/mail/providers/Message;-><init>()V

    .line 1127
    const-wide/16 v0, -0x1

    iput-wide v0, v8, Lcom/android/mail/providers/Message;->id:J

    .line 1128
    iput-object v3, v8, Lcom/android/mail/providers/Message;->aBd:Ljava/lang/String;

    .line 1129
    iput-object v3, v8, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    .line 1130
    iput-object v3, v8, Lcom/android/mail/providers/Message;->aBe:Landroid/net/Uri;

    .line 1131
    iget-object v0, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/mail/providers/Message;->ayV:Ljava/lang/String;

    .line 1132
    iput-object v3, v8, Lcom/android/mail/providers/Message;->abh:Ljava/lang/String;

    .line 1133
    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/compose/g;->bn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/mail/providers/Message;->bX(Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/compose/g;->bn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/mail/providers/Message;->bY(Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/compose/g;->bn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/mail/providers/Message;->bZ(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {v8, v3}, Lcom/android/mail/providers/Message;->ca(Ljava/lang/String;)V

    .line 1137
    iput-wide v4, v8, Lcom/android/mail/providers/Message;->aBf:J

    .line 1138
    invoke-virtual {p0, p4}, Lcom/android/mail/compose/g;->a(Landroid/text/Spanned;)Lcom/android/mail/compose/z;

    move-result-object v0

    iget-object v1, v0, Lcom/android/mail/compose/z;->awJ:Landroid/text/Spanned;

    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/mail/compose/z;->awK:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/android/mail/compose/g;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    .line 1139
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    .line 1141
    iget-object v0, v8, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1142
    iget-object v1, v8, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v8, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1144
    sget-object v1, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v2, "FAILED HTML CONVERSION: from %d to %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v8, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v6

    invoke-static {v1, v2, v9}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1146
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "errors"

    const-string v2, "failed_html_conversion"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<p>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    .line 1149
    :cond_0
    iput-boolean v7, v8, Lcom/android/mail/providers/Message;->aBi:Z

    .line 1150
    iget-object v0, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    iget-object v0, v0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    :goto_0
    iput-object v0, v8, Lcom/android/mail/providers/Message;->aBj:Landroid/net/Uri;

    .line 1151
    iget-object v0, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    invoke-virtual {v0}, Lcom/android/mail/compose/QuotedTextView;->sT()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v6

    :goto_1
    iput-boolean v0, v8, Lcom/android/mail/providers/Message;->aBl:Z

    .line 1152
    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/android/mail/compose/AttachmentsView;->sc()Ljava/util/ArrayList;

    move-result-object v0

    .line 1153
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    :goto_2
    iput-boolean v6, v8, Lcom/android/mail/providers/Message;->ayX:Z

    .line 1154
    iput-object v3, v8, Lcom/android/mail/providers/Message;->aBm:Landroid/net/Uri;

    .line 1155
    iput-wide v4, v8, Lcom/android/mail/providers/Message;->aBo:J

    .line 1156
    iput-boolean v7, v8, Lcom/android/mail/providers/Message;->aBp:Z

    .line 1157
    invoke-static {v0}, Lcom/android/mail/providers/Attachment;->n(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/mail/providers/Message;->aBr:Ljava/lang/String;

    .line 1158
    iget-object v0, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    invoke-virtual {v0}, Lcom/android/mail/compose/QuotedTextView;->sU()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1159
    const/4 v1, -0x1

    iput v1, v8, Lcom/android/mail/providers/Message;->aBq:I

    .line 1160
    if-eqz p2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1161
    iget-object v1, p2, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1164
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/compose/QuotedTextView;->bz(Ljava/lang/String;)I

    move-result v0

    iput v0, v8, Lcom/android/mail/providers/Message;->aBq:I

    .line 1171
    :cond_1
    :goto_3
    iput-object v3, v8, Lcom/android/mail/providers/Message;->azj:Landroid/net/Uri;

    .line 1172
    invoke-virtual {p0, p1}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/providers/ReplyFromAccount;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/mail/providers/Message;->bW(Ljava/lang/String;)V

    .line 1173
    invoke-static {p3}, Lcom/android/mail/compose/g;->co(I)I

    move-result v0

    iput v0, v8, Lcom/android/mail/providers/Message;->aBk:I

    .line 1174
    return-object v8

    :cond_2
    move-object v0, v3

    .line 1150
    goto :goto_0

    :cond_3
    move v0, v7

    .line 1151
    goto :goto_1

    :cond_4
    move v6, v7

    .line 1153
    goto :goto_2

    .line 1166
    :cond_5
    iget-object v1, p2, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1168
    invoke-static {v0}, Lcom/android/mail/compose/QuotedTextView;->t(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, v8, Lcom/android/mail/providers/Message;->aBq:I

    goto :goto_3
.end method

.method private static a(Lcom/android/mail/providers/Account;Ljava/util/List;)Lcom/android/mail/providers/ReplyFromAccount;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/providers/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/mail/providers/ReplyFromAccount;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1295
    const/4 v2, 0x0

    .line 1297
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1299
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v5

    .line 1300
    array-length v6, v5

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    .line 1301
    invoke-virtual {v7}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1307
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->uk()Ljava/util/List;

    move-result-object v0

    .line 1308
    if-eqz v0, :cond_5

    .line 1309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ReplyFromAccount;

    .line 1310
    iget-object v5, v0, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1312
    add-int/lit8 v1, v1, 0x1

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_2
    move-object v2, v1

    move v1, v0

    .line 1314
    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 1316
    :goto_3
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 1317
    invoke-static {p0}, Lcom/android/mail/compose/g;->e(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/ReplyFromAccount;

    move-result-object v0

    .line 1319
    :cond_3
    return-object v0

    :cond_4
    move v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_3
.end method

.method public static a(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2285
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2286
    const-string v0, ""

    .line 2293
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2305
    :goto_1
    return-object v0

    .line 2287
    :cond_0
    if-ne p2, v3, :cond_1

    .line 2288
    const v0, 0x7f090089

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2290
    :cond_1
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2297
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 2298
    goto :goto_1

    .line 2300
    :cond_3
    const v1, 0x7f090087

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2227
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2228
    array-length v3, p2

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p2, v2

    .line 2229
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v4}, Lcom/android/mail/compose/g;->br(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2231
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2228
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2234
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 2238
    array-length v2, p3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/mail/compose/g;->br(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, p3, v1

    invoke-direct {p0, v2}, Lcom/android/mail/compose/g;->br(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2240
    aget-object v1, p3, v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2253
    :cond_2
    return-object v0

    .line 2247
    :cond_3
    array-length v2, p3

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, p3, v1

    .line 2248
    invoke-direct {p0, v3}, Lcom/android/mail/compose/g;->br(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2249
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2247
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a(IZLjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3139
    invoke-static {p1, p2, p3}, Lcom/android/mail/compose/u;->b(IZLjava/util/ArrayList;)Lcom/android/mail/compose/u;

    move-result-object v0

    .line 3141
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "send confirm"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3142
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 502
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string v1, "fromemail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 505
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 506
    if-eqz p2, :cond_0

    .line 507
    invoke-static {p2}, Lcom/android/mail/utils/ag;->C(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 509
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 510
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 373
    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-static/range {v0 .. v7}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 375
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mail.intent.action.LAUNCH_COMPOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string v1, "fromemail"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    const-string v1, "action"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 472
    const/4 v1, 0x3

    if-ne p3, v1, :cond_5

    .line 473
    const-string v1, "original-draft-message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 477
    :goto_0
    if-eqz p4, :cond_0

    .line 478
    const-string v1, "to"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    :cond_0
    if-eqz p5, :cond_1

    .line 481
    const-string v1, "body"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    :cond_1
    if-eqz p6, :cond_2

    .line 487
    const-string v1, "subject"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    :cond_2
    if-eqz p7, :cond_3

    .line 490
    sget-object v1, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v2, "Launching with extraValues: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p7}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 491
    const-string v1, "extra-values"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 493
    :cond_3
    const/4 v1, -0x1

    if-ne p3, v1, :cond_6

    .line 494
    const/high16 v1, 0x8080000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 498
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 499
    return-void

    .line 475
    :cond_5
    const-string v1, "in-reference-to-message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 495
    :cond_6
    if-eqz p2, :cond_4

    .line 496
    iget-object v1, p2, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/mail/utils/ag;->C(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 460
    const/4 v3, 0x2

    const-string v4, "android-gmail-readability@google.com"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 462
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/Account;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 388
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 390
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/Account;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 397
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 398
    return-void
.end method

.method private static a(Landroid/text/SpannableString;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableString;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3278
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3279
    invoke-virtual {p0, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 3278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3281
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/mail/compose/g;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sx()V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/compose/g;I)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/mail/compose/g;->cm(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/compose/g;Landroid/content/Context;ILcom/android/mail/providers/ReplyFromAccount;Lcom/android/mail/providers/ReplyFromAccount;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Message;Ljava/lang/CharSequence;Lcom/android/mail/compose/v;ZILandroid/content/ContentValues;Landroid/os/Bundle;)V
    .locals 12

    .prologue
    .line 140
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    if-eqz p6, :cond_9

    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/android/mail/providers/Message;->vu()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "toAddresses"

    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/mail/providers/Message;->vw()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "ccAddresses"

    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/mail/providers/Message;->vy()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "bccAddresses"

    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/mail/providers/Message;->vq()Ljava/lang/String;

    move-result-object v2

    const-string v3, "customFrom"

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/mail/providers/Message;->ayV:Ljava/lang/String;

    const-string v3, "subject"

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x1

    move v10, v3

    :goto_1
    if-eqz v10, :cond_12

    invoke-interface/range {p7 .. p7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "draftType"

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "appendRefMessageContent"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v8, v4

    move-object v4, v3

    move-object v3, v2

    :goto_2
    const/4 v2, -0x1

    if-eqz p6, :cond_b

    move-object/from16 v0, p6

    iget-object v11, v0, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p6

    iget-object v11, v0, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    :cond_0
    move-object/from16 v0, p6

    iget-object v11, v0, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "bodyHtml"

    invoke-virtual {v5, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v3}, Lcom/android/mail/compose/QuotedTextView;->bz(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "bodyText"

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    :cond_2
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    const-string v3, "quotedTextStartPos"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v10, v2

    :goto_3
    invoke-static/range {p10 .. p10}, Lcom/android/mail/compose/g;->co(I)I

    move-result v2

    const-string v3, "draftType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/mail/providers/Message;->vC()Ljava/util/List;

    move-result-object v2

    const-string v3, "attachments"

    invoke-static {v2}, Lcom/android/mail/providers/Attachment;->n(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "refMessageId"

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p11, :cond_4

    move-object/from16 v0, p11

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    :cond_4
    new-instance v2, Lcom/android/mail/compose/w;

    invoke-virtual/range {p5 .. p5}, Lcom/android/mail/providers/Message;->vC()Ljava/util/List;

    move-result-object v7

    move-object v3, p1

    move v4, p2

    move-object/from16 v8, p12

    move/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Lcom/android/mail/compose/w;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Z)V

    invoke-interface/range {p8 .. p8}, Lcom/android/mail/compose/v;->sM()J

    move-result-wide v4

    if-eqz p4, :cond_6

    iget-object v3, p3, Lcom/android/mail/providers/ReplyFromAccount;->account:Lcom/android/mail/providers/Account;

    iget-object v3, v3, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/mail/providers/ReplyFromAccount;->account:Lcom/android/mail/providers/Account;

    iget-object v6, v6, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/mail/providers/ReplyFromAccount;->account:Lcom/android/mail/providers/Account;

    iget-object v4, v4, Lcom/android/mail/providers/Account;->aym:Landroid/net/Uri;

    if-eqz v4, :cond_5

    new-instance v4, Lcom/android/mail/utils/g;

    invoke-direct {v4}, Lcom/android/mail/utils/g;-><init>()V

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/mail/providers/ReplyFromAccount;->account:Lcom/android/mail/providers/Account;

    iget-object v5, v5, Lcom/android/mail/providers/Account;->aym:Landroid/net/Uri;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/mail/utils/g;->b(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    :cond_5
    const-wide/16 v4, -0x1

    :cond_6
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    :goto_4
    iget-boolean v7, v2, Lcom/android/mail/compose/w;->awB:Z

    if-eqz v7, :cond_e

    const-string v7, "save_message"

    :goto_5
    if-eqz v6, :cond_f

    :try_start_0
    iget-object v6, v2, Lcom/android/mail/compose/w;->ams:Landroid/content/ContentValues;

    const-string v8, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p3, Lcom/android/mail/providers/ReplyFromAccount;->account:Lcom/android/mail/providers/Account;

    invoke-static {v3, v4, v7, v2}, Lcom/android/mail/compose/g;->a(Landroid/content/ContentResolver;Lcom/android/mail/providers/Account;Ljava/lang/String;Lcom/android/mail/compose/w;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_6
    invoke-static {v2}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/compose/w;)V

    iget-boolean v3, v2, Lcom/android/mail/compose/w;->awB:Z

    if-nez v3, :cond_8

    iget-object v3, v2, Lcom/android/mail/compose/w;->ams:Landroid/content/ContentValues;

    const-string v4, "toAddresses"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/android/mail/compose/w;->ams:Landroid/content/ContentValues;

    const-string v5, "ccAddresses"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lcom/android/mail/compose/w;->ams:Landroid/content/ContentValues;

    const-string v6, "bccAddresses"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v3}, Lcom/android/mail/compose/g;->b(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v6, v4}, Lcom/android/mail/compose/g;->b(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lcom/android/mail/compose/g;->b(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/mail/compose/g;->p(Ljava/util/List;)V

    :cond_8
    const/4 v3, 0x1

    move-object/from16 v0, p8

    invoke-interface {v0, v2, v3}, Lcom/android/mail/compose/v;->a(Lcom/android/mail/compose/w;Z)V

    sget-object v2, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v3, "[compose] SendOrSaveMessage [%s] posted (isSave: %s) - bodyHtml length: %d, bodyText length: %d, quoted text pos: %d, attach count: %d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Lcom/android/mail/providers/Message;->bj(Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_9
    const-string v6, ""

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_1

    :cond_b
    const-string v3, "bodyHtml"

    invoke-virtual {v5, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bodyText"

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move v10, v2

    goto/16 :goto_3

    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_e
    const-string v7, "send_message"

    goto/16 :goto_5

    :cond_f
    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p3, Lcom/android/mail/providers/ReplyFromAccount;->account:Lcom/android/mail/providers/Account;

    invoke-static {v3, v5, v7, v2}, Lcom/android/mail/compose/g;->a(Landroid/content/ContentResolver;Lcom/android/mail/providers/Account;Ljava/lang/String;Lcom/android/mail/compose/w;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_10

    const-string v4, "messageUri"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    :cond_10
    iget-boolean v5, v2, Lcom/android/mail/compose/w;->awB:Z

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    sget-object v5, Lcom/android/mail/providers/E;->aCy:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_7

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_11

    new-instance v3, Lcom/android/mail/providers/Message;

    invoke-direct {v3, v4}, Lcom/android/mail/providers/Message;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v0, p8

    invoke-interface {v0, v2, v3}, Lcom/android/mail/compose/v;->a(Lcom/android/mail/compose/w;Lcom/android/mail/providers/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_11
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/compose/w;)V

    throw v3

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_12
    move-object v3, v2

    move-object v4, v7

    move-object v8, v9

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/android/mail/compose/g;ZLjava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/mail/compose/g;->a(ZZLjava/util/ArrayList;)V

    return-void
.end method

.method private static a(Lcom/android/mail/compose/w;)V
    .locals 3

    .prologue
    .line 2642
    invoke-virtual {p0}, Lcom/android/mail/compose/w;->sN()Landroid/os/Bundle;

    move-result-object v1

    .line 2643
    if-eqz v1, :cond_1

    .line 2644
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2645
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2646
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 2647
    if-eqz v0, :cond_0

    .line 2649
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 2656
    :cond_1
    return-void
.end method

.method private a(Lcom/android/mail/providers/Message;I)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 2012
    iget-object v1, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    if-ne p2, v2, :cond_1

    .line 2013
    :cond_0
    iget-object v1, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    if-eq p2, v2, :cond_2

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Lcom/android/mail/compose/QuotedTextView;->a(ILcom/android/mail/providers/Message;Z)V

    .line 2015
    :cond_1
    return-void

    .line 2013
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/Collection;Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/ex/chips/RecipientEditTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2203
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2204
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/ex/chips/RecipientEditTextView;->append(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2206
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2146
    invoke-static {p1}, Lcom/android/mail/compose/g;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/android/mail/compose/g;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/util/Rfc822Token;

    array-length v5, v0

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_0

    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/ex/chips/RecipientEditTextView;->append(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/mail/compose/g;->o(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/util/Rfc822Token;

    array-length v6, v0

    move v1, v2

    :goto_2
    if-ge v1, v6, :cond_3

    aget-object v7, v0, v1

    invoke-virtual {v7}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/ex/chips/RecipientEditTextView;->append(Ljava/lang/CharSequence;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2148
    :cond_5
    return-void
.end method

.method private a(Ljava/util/Set;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2257
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    .line 2260
    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->ah(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 2261
    invoke-direct {p0, v3}, Lcom/android/mail/compose/g;->br(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2262
    const-string v3, "\"\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2257
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2265
    :cond_1
    return-void
.end method

.method private aQ(Z)V
    .locals 6

    .prologue
    .line 3504
    invoke-static {}, Lcom/android/mail/a/a;->or()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    if-nez v0, :cond_1

    .line 3521
    :cond_0
    :goto_0
    return-void

    .line 3508
    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "message_save"

    .line 3509
    :goto_1
    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/android/mail/compose/AttachmentsView;->sc()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3510
    iget v2, p0, Lcom/android/mail/compose/g;->avC:I

    invoke-static {v2}, Lcom/android/mail/compose/g;->cp(I)Ljava/lang/String;

    move-result-object v2

    .line 3513
    iget v3, p0, Lcom/android/mail/compose/g;->avC:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 3514
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3515
    int-to-long v4, v0

    .line 3520
    :goto_2
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 3508
    :cond_2
    const-string v1, "message_send"

    goto :goto_1

    .line 3517
    :cond_3
    const/4 v3, 0x0

    .line 3518
    const-wide/16 v4, 0x0

    goto :goto_2
.end method

.method private aR(Z)V
    .locals 1

    .prologue
    .line 3715
    iget-object v0, p0, Lcom/android/mail/compose/g;->avO:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 3716
    iget-object v0, p0, Lcom/android/mail/compose/g;->avO:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3718
    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/util/List;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 140
    invoke-static {p0, p1}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/text/Spanned;)Landroid/text/SpannableString;
    .locals 2

    .prologue
    .line 3263
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3264
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 3271
    const-class v1, Landroid/text/SpanWatcher;

    invoke-static {v0, v1}, Lcom/android/mail/compose/g;->a(Landroid/text/SpannableString;Ljava/lang/Class;)V

    .line 3272
    const-class v1, Landroid/text/TextWatcher;

    invoke-static {v0, v1}, Lcom/android/mail/compose/g;->a(Landroid/text/SpannableString;Ljava/lang/Class;)V

    .line 3274
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/android/mail/providers/Account;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 381
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 382
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 440
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-static/range {v0 .. v7}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 441
    return-void
.end method

.method static synthetic b(Lcom/android/mail/compose/g;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private static b(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2579
    if-nez p0, :cond_0

    .line 2580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "recipientList cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2582
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2589
    :cond_1
    return-void

    .line 2585
    :cond_2
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 2586
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 2587
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b([Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/android/mail/compose/g;->avz:Lcom/android/b/a;

    if-nez v0, :cond_1

    .line 2833
    :cond_0
    return-void

    .line 2828
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 2829
    iget-object v3, p0, Lcom/android/mail/compose/g;->avz:Lcom/android/b/a;

    invoke-virtual {v3, v2}, Lcom/android/b/a;->isValid(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2830
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2828
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static bn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1187
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    .line 1188
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1190
    :cond_0
    return-object p0
.end method

.method private static bo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1736
    :try_start_0
    const-string v0, "+"

    const-string v1, "%2B"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1743
    :goto_0
    return-object v0

    .line 1737
    :catch_0
    move-exception v0

    .line 1738
    sget-object v1, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1739
    sget-object v1, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v2, "%s while decoding \'%s\'"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p0, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1743
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1741
    :cond_0
    sget-object v1, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v2, "Exception  while decoding mailto address"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private static bp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1776
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 1783
    :goto_0
    return-object p0

    .line 1777
    :catch_0
    move-exception v0

    .line 1778
    sget-object v1, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v2, "%s while decoding \'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    aput-object p0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1779
    const-string p0, ""

    goto :goto_0

    .line 1782
    :catch_1
    move-exception v0

    sget-object v0, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v1, "Given string is not url encoded: \'%s\'"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private bq(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1901
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1902
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1903
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 1905
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1906
    return-void
.end method

.method private br(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->uk()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/mail/providers/ReplyFromAccount;->a(Lcom/android/mail/providers/Account;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private bs(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2876
    invoke-static {p1}, Lcom/android/mail/compose/r;->bw(Ljava/lang/String;)Lcom/android/mail/compose/r;

    move-result-object v0

    .line 2877
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "recipient error"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2878
    return-void
.end method

.method private bt(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 3464
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3465
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3466
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3467
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3468
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3469
    iput-boolean v2, p0, Lcom/android/mail/compose/g;->avK:Z

    .line 3470
    const v1, 0x7f09008e

    invoke-virtual {p0, v1}, Lcom/android/mail/compose/g;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/mail/compose/g;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3472
    return-void
.end method

.method private bv(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3678
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3679
    if-nez p1, :cond_0

    .line 3680
    const-string p1, ""

    .line 3682
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/mail/compose/g;)Lcom/android/mail/compose/AttachmentsView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 447
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-static/range {v0 .. v7}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 449
    return-void
.end method

.method private c(Landroid/content/Intent;)Z
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1650
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1651
    if-eqz v0, :cond_2

    .line 1652
    const-string v3, "mailto"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1653
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "?"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_8

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/compose/g;->bo(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v10, v0

    move-object v0, v3

    move-object v3, v10

    :goto_0
    :try_start_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mail/compose/g;->k(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "foo://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "cc"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/compose/g;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/android/mail/compose/g;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    const-string v0, "to"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/compose/g;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->k(Ljava/util/Collection;)V

    const-string v0, "bcc"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/compose/g;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->l(Ljava/util/Collection;)V

    const-string v0, "subject"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/compose/g;->bp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "body"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/compose/g;->bp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/compose/g;->b(Ljava/lang/CharSequence;Z)V

    .line 1665
    :cond_2
    :goto_2
    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1666
    if-eqz v0, :cond_3

    .line 1667
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->k(Ljava/util/Collection;)V

    .line 1669
    :cond_3
    const-string v0, "android.intent.extra.CC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1670
    if-eqz v0, :cond_4

    .line 1671
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/android/mail/compose/g;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1673
    :cond_4
    const-string v0, "android.intent.extra.BCC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1674
    if-eqz v0, :cond_5

    .line 1675
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->l(Ljava/util/Collection;)V

    .line 1678
    :cond_5
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1679
    if-eqz v0, :cond_6

    .line 1680
    iget-object v3, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1683
    :cond_6
    sget-object v3, Lcom/android/mail/compose/g;->avk:[Ljava/lang/String;

    array-length v4, v3

    move v0, v2

    :goto_3
    if-ge v0, v4, :cond_10

    aget-object v5, v3, v0

    .line 1684
    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1685
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1686
    const-string v7, "to"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1687
    const-string v5, ","

    invoke-static {v6, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mail/compose/g;->k(Ljava/util/Collection;)V

    .line 1683
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1653
    :cond_8
    const/4 v0, 0x7

    :try_start_2
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/compose/g;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "%"

    const-string v7, "%25"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    move-object v10, v0

    move-object v0, v3

    move-object v3, v10

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v3

    move-object v3, v10

    :goto_5
    sget-object v4, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v5, "%s while decoding \'%s\'"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    :cond_9
    sget-object v4, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v5, "Exception  while decoding mailto address"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v5, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 1655
    :cond_a
    iget-object v3, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    iget-object v3, v3, Lcom/android/mail/providers/Account;->ayt:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1656
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1657
    if-eqz v0, :cond_2

    .line 1658
    iget-object v3, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1659
    const-string v3, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->k(Ljava/util/Collection;)V

    goto/16 :goto_2

    .line 1688
    :cond_b
    const-string v7, "cc"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1689
    const-string v5, ","

    invoke-static {v6, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lcom/android/mail/compose/g;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    goto/16 :goto_4

    .line 1690
    :cond_c
    const-string v7, "bcc"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1691
    const-string v5, ","

    invoke-static {v6, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mail/compose/g;->l(Ljava/util/Collection;)V

    goto/16 :goto_4

    .line 1692
    :cond_d
    const-string v7, "subject"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1693
    iget-object v5, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1694
    :cond_e
    const-string v7, "body"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1695
    invoke-virtual {p0, v6, v1}, Lcom/android/mail/compose/g;->b(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_4

    .line 1696
    :cond_f
    const-string v7, "quotedText"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1697
    invoke-virtual {p0, v6, v1}, Lcom/android/mail/compose/g;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_4

    .line 1702
    :cond_10
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1703
    if-eqz v0, :cond_11

    .line 1704
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1705
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1706
    invoke-virtual {p0, v0, v1}, Lcom/android/mail/compose/g;->b(Ljava/lang/CharSequence;Z)V

    .line 1712
    :cond_11
    const-string v0, "extra-values"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/mail/compose/g;->awb:Landroid/content/ContentValues;

    .line 1713
    iget-object v0, p0, Lcom/android/mail/compose/g;->awb:Landroid/content/ContentValues;

    if-eqz v0, :cond_12

    .line 1714
    sget-object v0, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v3, "Launched with extra values: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mail/compose/g;->awb:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1715
    iget-object v0, p0, Lcom/android/mail/compose/g;->awb:Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->c(Landroid/content/ContentValues;)V

    move v0, v1

    .line 1719
    :goto_6
    return v0

    :cond_12
    move v0, v2

    goto :goto_6

    .line 1653
    :catch_1
    move-exception v3

    goto/16 :goto_5
.end method

.method private cm(I)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1541
    iget-object v0, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, v0, Lcom/android/mail/providers/Message;->ayV:Ljava/lang/String;

    invoke-static {v3, v0, p1}, Lcom/android/mail/compose/g;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1543
    if-ne p1, v10, :cond_0

    .line 1544
    iput-boolean v2, p0, Lcom/android/mail/compose/g;->avD:Z

    .line 1546
    :cond_0
    iget-object v6, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    if-eq p1, v10, :cond_4

    invoke-virtual {v6}, Lcom/android/mail/providers/Message;->vv()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/mail/providers/Message;->vt()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_2

    aget-object v0, v0, v5

    :goto_0
    invoke-virtual {v6}, Lcom/android/mail/providers/Message;->vB()[Ljava/lang/String;

    move-result-object v3

    array-length v8, v3

    move v4, v5

    move v1, v5

    :goto_1
    if-ge v4, v8, :cond_3

    aget-object v9, v3, v4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    move v1, v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_7

    move-object v1, v3

    :goto_2
    if-nez p1, :cond_8

    invoke-direct {p0, v0, v1, v7}, Lcom/android/mail/compose/g;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->k(Ljava/util/Collection;)V

    .line 1547
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    invoke-direct {p0, v0, p1}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/providers/Message;I)V

    .line 1548
    if-eq p1, v10, :cond_5

    iget-boolean v0, p0, Lcom/android/mail/compose/g;->avL:Z

    if-eqz v0, :cond_6

    .line 1549
    :cond_5
    iget-object v0, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    invoke-virtual {v0}, Lcom/android/mail/providers/Message;->vC()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->m(Ljava/util/List;)J

    .line 1551
    :cond_6
    return-void

    .line 1546
    :cond_7
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v5

    goto :goto_2

    :cond_8
    if-ne p1, v2, :cond_4

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0, v1, v7}, Lcom/android/mail/compose/g;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->k(Ljava/util/Collection;)V

    invoke-direct {p0, v2, v7}, Lcom/android/mail/compose/g;->a(Ljava/util/Set;[Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/mail/providers/Message;->vx()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/mail/compose/g;->a(Ljava/util/Set;[Ljava/lang/String;)V

    invoke-direct {p0, v2, v0}, Lcom/android/mail/compose/g;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_3
.end method

.method private cn(I)V
    .locals 4

    .prologue
    .line 1895
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v1}, Lcom/android/mail/providers/Settings;->vJ()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/b;->E(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1897
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/android/mail/compose/g;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->bq(Ljava/lang/String;)V

    .line 1898
    return-void
.end method

.method private static co(I)I
    .locals 1

    .prologue
    .line 3284
    const/4 v0, -0x1

    .line 3285
    packed-switch p0, :pswitch_data_0

    .line 3299
    :goto_0
    return v0

    .line 3287
    :pswitch_0
    const/4 v0, 0x1

    .line 3288
    goto :goto_0

    .line 3290
    :pswitch_1
    const/4 v0, 0x2

    .line 3291
    goto :goto_0

    .line 3293
    :pswitch_2
    const/4 v0, 0x3

    .line 3294
    goto :goto_0

    .line 3296
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 3285
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static cp(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3483
    packed-switch p0, :pswitch_data_0

    .line 3497
    const-string v0, "unknown"

    .line 3500
    :goto_0
    return-object v0

    .line 3485
    :pswitch_0
    const-string v0, "new_message"

    goto :goto_0

    .line 3488
    :pswitch_1
    const-string v0, "reply"

    goto :goto_0

    .line 3491
    :pswitch_2
    const-string v0, "reply_all"

    goto :goto_0

    .line 3494
    :pswitch_3
    const-string v0, "forward"

    goto :goto_0

    .line 3483
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic d(Lcom/android/mail/compose/g;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mail/compose/g;->avT:Ljava/lang/Object;

    return-object v0
.end method

.method public static d(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 455
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-static/range {v0 .. v7}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 456
    return-void
.end method

.method static synthetic e(Lcom/android/mail/compose/g;)J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/android/mail/compose/g;->avQ:J

    return-wide v0
.end method

.method private static e(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/ReplyFromAccount;
    .locals 8

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->uk()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ReplyFromAccount;

    .line 1324
    iget-boolean v2, v0, Lcom/android/mail/providers/ReplyFromAccount;->isDefault:Z

    if-eqz v2, :cond_0

    .line 1328
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/mail/providers/ReplyFromAccount;

    iget-object v2, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->ik()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mail/providers/ReplyFromAccount;-><init>(Lcom/android/mail/providers/Account;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private e(Lcom/android/mail/providers/Attachment;)V
    .locals 4

    .prologue
    .line 2083
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    iget-object v1, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1, p1}, Lcom/android/mail/compose/AttachmentsView;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Attachment;)J

    move-result-wide v0

    .line 2084
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2085
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avL:Z

    .line 2086
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sy()V
    :try_end_0
    .catch Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2092
    :cond_0
    :goto_0
    return-void

    .line 2088
    :catch_0
    move-exception v0

    .line 2089
    sget-object v1, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v2, "Error adding attachment"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2090
    invoke-virtual {v0}, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;->si()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->cn(I)V

    goto :goto_0
.end method

.method private e(Lcom/android/mail/providers/Message;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1558
    sget-object v0, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v5, "Initializing draft from previous draft message: %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {v0, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1560
    iget-object v5, p0, Lcom/android/mail/compose/g;->avT:Ljava/lang/Object;

    monitor-enter v5

    .line 1562
    :try_start_0
    iget-wide v6, p0, Lcom/android/mail/compose/g;->avQ:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    .line 1563
    iget-wide v6, p1, Lcom/android/mail/providers/Message;->id:J

    iput-wide v6, p0, Lcom/android/mail/compose/g;->avQ:J

    .line 1567
    :goto_0
    iput-object p1, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    .line 1568
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1569
    iget-object v0, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/mail/providers/Message;->ayV:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1570
    iget v0, p1, Lcom/android/mail/providers/Message;->aBk:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avD:Z

    .line 1572
    invoke-virtual {p1}, Lcom/android/mail/providers/Message;->vv()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1573
    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->k(Ljava/util/Collection;)V

    .line 1574
    invoke-virtual {p1}, Lcom/android/mail/providers/Message;->vx()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/android/mail/compose/g;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1575
    invoke-virtual {p1}, Lcom/android/mail/providers/Message;->vz()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->l(Ljava/util/Collection;)V

    .line 1576
    iget-boolean v0, p1, Lcom/android/mail/providers/Message;->ayX:Z

    if-eqz v0, :cond_2

    .line 1577
    invoke-virtual {p1}, Lcom/android/mail/providers/Message;->vC()Ljava/util/List;

    move-result-object v0

    .line 1578
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 1579
    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->e(Lcom/android/mail/providers/Attachment;)V

    goto :goto_2

    .line 1565
    :cond_0
    :try_start_1
    iget-wide v6, p0, Lcom/android/mail/compose/g;->avQ:J

    iput-wide v6, p1, Lcom/android/mail/providers/Message;->id:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1568
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_1
    move v0, v2

    .line 1570
    goto :goto_1

    .line 1585
    :cond_2
    iget-object v0, p0, Lcom/android/mail/compose/g;->awa:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mail/compose/g;->awa:Landroid/os/Bundle;

    const-string v5, "extraSkipParsingBody"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1586
    sget-object v0, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v1, "Skipping manually populating body and quoted text from draft."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1634
    :cond_3
    :goto_3
    return-void

    .line 1590
    :cond_4
    iget-boolean v0, p1, Lcom/android/mail/providers/Message;->aBl:Z

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/android/mail/providers/Message;->aBq:I

    .line 1593
    :goto_4
    iget-object v5, p1, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1594
    iget-object v3, p1, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    .line 1595
    if-ltz v0, :cond_c

    .line 1601
    iget-object v0, p1, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/compose/QuotedTextView;->t(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1602
    if-ltz v5, :cond_b

    .line 1603
    iget-object v0, p1, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1604
    iget-object v3, p1, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    move v4, v5

    .line 1608
    :goto_5
    new-instance v5, Lcom/android/mail/compose/q;

    invoke-direct {v5, p0, v2}, Lcom/android/mail/compose/q;-><init>(Lcom/android/mail/compose/g;B)V

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {v5, v1}, Lcom/android/mail/compose/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1631
    :goto_6
    if-ltz v4, :cond_3

    if-eqz v3, :cond_3

    .line 1632
    iget-object v0, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    iget-boolean v1, p0, Lcom/android/mail/compose/g;->avD:Z

    invoke-virtual {v0, v3, v1}, Lcom/android/mail/compose/QuotedTextView;->c(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_5
    move v0, v3

    .line 1590
    goto :goto_4

    .line 1610
    :cond_6
    iget-object v5, p1, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    .line 1612
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1613
    const-string v1, ""

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    .line 1629
    :cond_7
    :goto_7
    invoke-virtual {p0, v0, v2}, Lcom/android/mail/compose/g;->b(Ljava/lang/CharSequence;Z)V

    move-object v3, v4

    move v4, v1

    goto :goto_6

    .line 1616
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v0, v6, :cond_a

    .line 1621
    sget-object v0, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v6, "quotedTextIndex (%d) > body.length() (%d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v0, v6, v7}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v3

    .line 1624
    :goto_8
    if-ltz v1, :cond_9

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1625
    :goto_9
    if-ltz v1, :cond_7

    .line 1626
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_9
    move-object v0, v5

    .line 1624
    goto :goto_9

    :cond_a
    move v1, v0

    goto :goto_8

    :cond_b
    move-object v0, v3

    move-object v3, v4

    move v4, v5

    goto :goto_5

    :cond_c
    move-object v10, v3

    move-object v3, v4

    move v4, v0

    move-object v0, v10

    goto :goto_5
.end method

.method static synthetic f(Lcom/android/mail/compose/g;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sB()V

    return-void
.end method

.method static synthetic g(Lcom/android/mail/compose/g;)I
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/mail/compose/g;->getMode()I

    move-result v0

    return v0
.end method

.method private g(Lcom/android/mail/providers/Account;)V
    .locals 5

    .prologue
    const v4, 0x7f0d0242

    const/4 v1, 0x0

    .line 4002
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sF()Lcom/android/mail/ui/dF;

    move-result-object v0

    .line 4003
    if-eqz v0, :cond_0

    .line 4004
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/dF;->p(Lcom/android/mail/providers/Account;)V

    .line 4010
    :goto_0
    return-void

    .line 4006
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4007
    invoke-static {p1, v1}, Lcom/android/mail/ui/dF;->a(Lcom/android/mail/providers/Account;Z)Lcom/android/mail/ui/dF;

    move-result-object v0

    const-string v1, "wait-fragment"

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    invoke-virtual {v2, v4, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 1111
    const/4 v0, -0x1

    .line 1112
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->cF()Landroid/support/v7/app/a;

    move-result-object v1

    .line 1113
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/app/a;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1115
    invoke-virtual {v1}, Landroid/support/v7/app/a;->getSelectedNavigationIndex()I

    move-result v0

    .line 1117
    :cond_0
    return v0
.end method

.method static synthetic h(Lcom/android/mail/compose/g;)I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/mail/compose/g;->awc:I

    return v0
.end method

.method static synthetic i(Lcom/android/mail/compose/g;)Lcom/android/mail/providers/ReplyFromAccount;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mail/compose/g;->avS:Lcom/android/mail/providers/ReplyFromAccount;

    return-object v0
.end method

.method static synthetic j(Lcom/android/mail/compose/g;)Lcom/android/mail/compose/QuotedTextView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    return-object v0
.end method

.method static synthetic k(Lcom/android/mail/compose/g;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mail/compose/g;->awb:Landroid/content/ContentValues;

    return-object v0
.end method

.method private static k([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3903
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->fm(I)Ljava/util/ArrayList;

    move-result-object v2

    move v0, v1

    .line 3904
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 3905
    aget-object v3, p0, v0

    invoke-static {v3}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3904
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3907
    :cond_0
    return-object v2
.end method

.method private k(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {p1, v0}, Lcom/android/mail/compose/g;->a(Ljava/util/Collection;Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 2143
    return-void
.end method

.method private static k(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 886
    if-eqz p0, :cond_0

    const-string v0, "extraMessage"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic l([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 140
    invoke-static {p0}, Lcom/android/mail/compose/g;->k([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static l(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1788
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1789
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1791
    :try_start_0
    invoke-static {v0}, Lcom/android/mail/compose/g;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1792
    if-eqz v1, :cond_0

    .line 1793
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1795
    :catch_0
    move-exception v1

    .line 1796
    sget-object v4, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1797
    sget-object v4, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v5, "%s while decoding \'%s\'"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1799
    :cond_1
    sget-object v0, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v4, "Exception  while decoding mailto address"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1803
    :cond_2
    return-object v2
.end method

.method static synthetic l(Lcom/android/mail/compose/g;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sE()V

    return-void
.end method

.method private l(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {p1, v0}, Lcom/android/mail/compose/g;->a(Ljava/util/Collection;Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 2152
    return-void
.end method

.method private m(Ljava/util/List;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1869
    const-wide/16 v2, 0x0

    .line 1870
    const/4 v0, 0x0

    .line 1871
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 1873
    :try_start_0
    iget-object v5, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    iget-object v6, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v5, v6, v0}, Lcom/android/mail/compose/AttachmentsView;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Attachment;)J
    :try_end_0
    .catch Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0

    .line 1874
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1877
    goto :goto_0

    .line 1878
    :cond_0
    if-eqz v1, :cond_1

    .line 1879
    sget-object v0, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v4, "Error adding attachment"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1880
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_2

    .line 1881
    const v0, 0x7f090090

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->cn(I)V

    .line 1886
    :cond_1
    :goto_1
    return-wide v2

    .line 1883
    :cond_2
    invoke-virtual {v1}, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;->si()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->cn(I)V

    goto :goto_1
.end method

.method static synthetic m(Lcom/android/mail/compose/g;)Lcom/google/android/mail/common/html/parser/t;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mail/compose/g;->awh:Lcom/google/android/mail/common/html/parser/t;

    return-object v0
.end method

.method private static m(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2195
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2196
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2198
    :cond_0
    return-object v1
.end method

.method private n(Ljava/util/List;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f090093

    .line 1951
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1952
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1954
    if-eqz v0, :cond_0

    .line 1955
    :try_start_0
    const-string v1, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1956
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1959
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 1960
    sget-object v2, Lcom/android/mail/compose/g;->avp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1961
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 1962
    if-nez v2, :cond_1

    .line 1963
    const v0, 0x7f090093

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->bq(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1995
    :catch_0
    move-exception v0

    .line 1996
    sget-object v1, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v2, "Error adding attachment"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1997
    invoke-virtual {v0}, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;->si()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->cn(I)V

    goto :goto_0

    .line 1971
    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/mail/compose/g;->avq:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1972
    sget-object v3, Lcom/android/mail/compose/g;->avq:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1981
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1982
    const v0, 0x7f090093

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->bq(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1998
    :catch_1
    move-exception v0

    .line 1999
    :goto_2
    sget-object v1, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v2, "Error adding attachment"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2000
    invoke-virtual {p0, v8}, Lcom/android/mail/compose/g;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->bq(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1975
    :cond_2
    :try_start_2
    sget-object v3, Lcom/android/mail/compose/g;->avp:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1987
    :cond_3
    iget-object v1, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v1, v0}, Lcom/android/mail/compose/AttachmentsView;->o(Landroid/net/Uri;)Lcom/android/mail/providers/Attachment;

    move-result-object v4

    .line 1989
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1991
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "send_intent_attachment"

    invoke-virtual {v4}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/utils/ag;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, v4, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1998
    :catch_2
    move-exception v0

    goto :goto_2

    .line 2003
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/mail/compose/g;->m(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic n(Lcom/android/mail/compose/g;)Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avM:Z

    return v0
.end method

.method private static o(Ljava/util/List;)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2182
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2183
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/util/Rfc822Token;

    .line 2184
    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 2185
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2188
    :cond_1
    return-object v2
.end method

.method private p(Landroid/net/Uri;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2052
    if-nez p1, :cond_0

    .line 2069
    :goto_0
    return-void

    .line 2057
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v0, p1}, Lcom/android/mail/compose/AttachmentsView;->o(Landroid/net/Uri;)Lcom/android/mail/providers/Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->e(Lcom/android/mail/providers/Attachment;)V
    :try_end_0
    .catch Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2062
    :catch_0
    move-exception v0

    .line 2063
    sget-object v1, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v2, "Error adding attachment"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2064
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;->si()I

    move-result v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    iget-object v4, v4, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v4}, Lcom/android/mail/providers/Settings;->vJ()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/b;->E(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->bq(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sA()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2919
    iget-object v2, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    if-nez v2, :cond_2

    .line 2921
    :cond_0
    sget-object v2, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v3, "null views in isBlank check"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2924
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mail/compose/g;->XI:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/mail/compose/g;->A(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v2}, Lcom/android/mail/compose/AttachmentsView;->sc()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private sB()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2962
    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avM:Z

    .line 2963
    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avL:Z

    .line 2964
    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avN:Z

    .line 2965
    return-void
.end method

.method private sC()V
    .locals 3

    .prologue
    .line 3663
    iget-object v0, p0, Lcom/android/mail/compose/g;->avy:Lcom/android/mail/providers/Settings;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/compose/g;->avy:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aBN:Ljava/lang/String;

    .line 3664
    :goto_0
    iget-object v1, p0, Lcom/android/mail/compose/g;->XI:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mail/compose/g;->A(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3665
    iget-object v2, p0, Lcom/android/mail/compose/g;->XI:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-gez v1, :cond_2

    .line 3666
    :cond_0
    iput-object v0, p0, Lcom/android/mail/compose/g;->XI:Ljava/lang/String;

    .line 3667
    iget-object v0, p0, Lcom/android/mail/compose/g;->XI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3669
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3670
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mail/compose/g;->XI:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/mail/compose/g;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 3671
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3673
    :cond_1
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sp()V

    .line 3675
    :cond_2
    return-void

    .line 3663
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sE()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 3757
    iget-object v1, p0, Lcom/android/mail/compose/g;->avT:Ljava/lang/Object;

    monitor-enter v1

    .line 3758
    :try_start_0
    iget-wide v2, p0, Lcom/android/mail/compose/g;->avQ:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 3759
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3760
    const-string v2, "_id"

    iget-wide v4, p0, Lcom/android/mail/compose/g;->avQ:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3761
    iget-object v2, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    iget-object v2, v2, Lcom/android/mail/providers/Account;->aym:Landroid/net/Uri;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3762
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    iget-object v3, v3, Lcom/android/mail/providers/Account;->aym:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3770
    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/mail/compose/g;->avQ:J

    .line 3772
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3775
    const v0, 0x7f090098

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3778
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sB()V

    .line 3779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/compose/g;->awf:Z

    .line 3780
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->finish()V

    .line 3781
    return-void

    .line 3764
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    iget-object v2, v2, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3772
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sF()Lcom/android/mail/ui/dF;
    .locals 2

    .prologue
    .line 4013
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "wait-fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/dF;

    return-object v0
.end method

.method static synthetic sG()Lcom/android/mail/compose/v;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/android/mail/compose/g;->avl:Lcom/android/mail/compose/v;

    return-object v0
.end method

.method static synthetic sH()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/android/mail/compose/g;->avm:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic sI()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method private sn()V
    .locals 13

    .prologue
    .line 532
    iget-object v11, p0, Lcom/android/mail/compose/g;->awa:Landroid/os/Bundle;

    .line 533
    const v0, 0x7f0d010f

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mail/compose/g;->aeO:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/mail/compose/g;->aeO:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    const v0, 0x7f0d0125

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/g;->avu:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mail/compose/g;->avu:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/compose/g;->avu:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0d0127

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/compose/CcBccView;

    iput-object v0, p0, Lcom/android/mail/compose/g;->avv:Lcom/android/mail/compose/CcBccView;

    const v0, 0x7f0d0111

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/compose/AttachmentsView;

    iput-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    const v0, 0x7f0d0124

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEditTextView;

    iput-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/mail/compose/g;->awg:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/mail/compose/g;->y(Lcom/android/ex/chips/RecipientEditTextView;)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    const v1, 0x7f0d0126

    invoke-virtual {p0, v1}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->ao(Landroid/view/View;)V

    const v0, 0x7f0d0105

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEditTextView;

    iput-object v0, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v0, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/mail/compose/g;->awg:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/mail/compose/g;->y(Lcom/android/ex/chips/RecipientEditTextView;)V

    const v0, 0x7f0d0108

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEditTextView;

    iput-object v0, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v0, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/mail/compose/g;->awg:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/mail/compose/g;->y(Lcom/android/ex/chips/RecipientEditTextView;)V

    const v0, 0x7f0d0129

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mail/compose/g;->awg:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0d0112

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/compose/QuotedTextView;

    iput-object v0, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    iget-object v0, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    invoke-virtual {v0, p0}, Lcom/android/mail/compose/QuotedTextView;->a(Lcom/android/mail/compose/A;)V

    const v0, 0x7f0d011b

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mail/compose/g;->awg:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0d011f

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/g;->avG:Landroid/view/View;

    const v0, 0x7f0d0120

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/compose/g;->avH:Landroid/widget/TextView;

    const v0, 0x7f0d011d

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/g;->avI:Landroid/view/View;

    const v0, 0x7f0d011e

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/compose/FromAddressSpinner;

    iput-object v0, p0, Lcom/android/mail/compose/g;->avJ:Lcom/android/mail/compose/FromAddressSpinner;

    const v0, 0x7f0d0113

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/mail/compose/k;

    invoke-direct {v1, p0}, Lcom/android/mail/compose/k;-><init>(Lcom/android/mail/compose/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avZ:Z

    .line 542
    invoke-static {v11}, Lcom/android/mail/compose/g;->k(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    const-string v0, "action"

    const/4 v1, -0x1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 544
    const-string v0, "account"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    .line 545
    const-string v1, "extraMessage"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Message;

    .line 547
    const-string v2, "attachmentPreviews"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 548
    const-string v2, "in-reference-to-message"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/mail/providers/Message;

    iput-object v2, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    .line 549
    const-string v2, "quotedText"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 551
    const-string v2, "extra-values"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    iput-object v2, p0, Lcom/android/mail/compose/g;->awb:Landroid/content/ContentValues;

    .line 554
    const-string v2, "requestId"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 555
    const-string v2, "requestId"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 556
    sget-object v6, Lcom/android/mail/compose/g;->avm:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 557
    iget-object v6, p0, Lcom/android/mail/compose/g;->avT:Ljava/lang/Object;

    monitor-enter v6

    .line 558
    :try_start_0
    sget-object v7, Lcom/android/mail/compose/g;->avm:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/mail/compose/g;->avQ:J

    .line 559
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    move v2, v3

    move-object v6, v1

    move-object v0, v5

    move-object v3, v4

    .line 579
    :goto_0
    iget-object v1, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v1, v0}, Lcom/android/mail/compose/AttachmentsView;->d(Ljava/util/ArrayList;)V

    .line 581
    invoke-virtual {p0, v7}, Lcom/android/mail/compose/g;->d(Lcom/android/mail/providers/Account;)V

    .line 582
    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    if-nez v0, :cond_b

    .line 721
    :goto_1
    return-void

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_1
    move-object v7, v0

    move v2, v3

    move-object v6, v1

    move-object v0, v5

    move-object v3, v4

    .line 561
    goto :goto_0

    .line 563
    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz v12, :cond_22

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/mail/providers/Account;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/android/mail/providers/Account;

    move-object v7, v0

    .line 564
    :goto_2
    const-string v0, "action"

    const/4 v1, -0x1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 566
    const-string v0, "original-draft-message"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/mail/providers/Message;

    .line 567
    const-string v0, "attachmentPreviews"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 568
    const-string v0, "in-reference-to-message"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Message;

    iput-object v0, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    .line 569
    const-string v0, "in-reference-to-message-uri"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/compose/g;->avY:Landroid/net/Uri;

    .line 570
    const/4 v9, 0x0

    .line 572
    invoke-static {}, Lcom/android/mail/a/a;->or()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    const-string v0, "notification"

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 574
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "notification_action"

    const-string v2, "compose"

    invoke-static {v8}, Lcom/android/mail/compose/g;->cp(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    move v2, v8

    move-object v3, v9

    move-object v0, v10

    goto :goto_0

    .line 563
    :cond_4
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_21

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/providers/Account;->bH(Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v0

    if-nez v0, :cond_20

    :goto_3
    const-string v1, "account"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "account"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object v2, v0

    :goto_5
    invoke-static {}, Lcom/android/mail/providers/t;->vi()Lcom/android/mail/providers/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mail/providers/t;->vl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/mail/providers/t;->vk()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_6
    iget-object v0, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    array-length v0, v0

    if-lez v0, :cond_a

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_8

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v4, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_6
    if-ge v3, v5, :cond_9

    aget-object v0, v4, v3

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    :goto_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_6

    :cond_7
    const-string v1, "selectedAccount"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    instance-of v0, v1, Landroid/net/Uri;

    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_8
    if-ge v3, v5, :cond_9

    aget-object v0, v4, v3

    iget-object v6, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    :goto_9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_8

    :cond_9
    if-nez v2, :cond_a

    iget-object v0, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    :cond_a
    :goto_a
    move-object v7, v2

    goto/16 :goto_2

    .line 586
    :cond_b
    invoke-direct {p0}, Lcom/android/mail/compose/g;->su()V

    .line 589
    const-string v0, "extra-notification-folder"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 592
    if-eqz v0, :cond_c

    .line 593
    const-string v1, "extra-notification-conversation"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 595
    if-eqz v1, :cond_f

    .line 596
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.mail.action.RESEND_NOTIFICATIONS_WEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    const-string v5, "conversationUri"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v1, v4

    .line 603
    :goto_b
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v4, "account"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 605
    const-string v4, "folder"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0, v1}, Lcom/android/mail/compose/g;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 610
    :cond_c
    const-string v0, "fromemail"

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avU:Z

    .line 621
    :cond_d
    :goto_c
    iget-object v0, p0, Lcom/android/mail/compose/g;->avY:Landroid/net/Uri;

    if-eqz v0, :cond_14

    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avZ:Z

    .line 623
    iput v2, p0, Lcom/android/mail/compose/g;->avC:I

    .line 625
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_13

    .line 626
    invoke-static {v12}, Landroid/support/v4/app/aL;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 627
    const/4 v0, 0x0

    .line 628
    if-eqz v1, :cond_11

    .line 629
    sget-object v2, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v3, "Got remote input from new api"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 630
    const-string v2, "wear_reply"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 632
    if-eqz v1, :cond_e

    .line 633
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e
    move-object v5, v0

    .line 649
    :goto_d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 650
    iget-object v2, p0, Lcom/android/mail/compose/g;->avY:Landroid/net/Uri;

    sget-object v3, Lcom/android/mail/providers/E;->aCy:[Ljava/lang/String;

    iget v4, p0, Lcom/android/mail/compose/g;->avC:I

    new-instance v0, Lcom/android/mail/compose/j;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/compose/j;-><init>(Lcom/android/mail/compose/g;Landroid/net/Uri;[Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 652
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->finish()V

    goto/16 :goto_1

    .line 599
    :cond_f
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.mail.action.CLEAR_NEW_MAIL_NOTIFICATIONS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    iget-object v4, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v4, v4, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-static {p0, v4}, Lcom/android/mail/utils/ag;->c(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_b

    .line 612
    :cond_10
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 613
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_d

    .line 615
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->ayt:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avU:Z

    goto/16 :goto_c

    .line 637
    :cond_11
    sget-object v1, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v2, "No remote input from new api, falling back to compatibility mode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 639
    invoke-virtual {v12}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 640
    if-eqz v1, :cond_1d

    const-string v2, "com.google.android.wearable.extras"

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 642
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 643
    if-eqz v1, :cond_1d

    .line 644
    const-string v0, "wear_reply"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_d

    .line 655
    :cond_12
    sget-object v0, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v1, "remote input string is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 659
    :cond_13
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_1

    .line 661
    :cond_14
    if-eqz v6, :cond_17

    const/4 v0, 0x3

    if-eq v2, v0, :cond_17

    .line 662
    invoke-direct {p0, v6}, Lcom/android/mail/compose/g;->e(Lcom/android/mail/providers/Message;)V

    .line 663
    iget-object v0, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    invoke-direct {p0, v0, v2}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/providers/Message;I)V

    .line 664
    iget-boolean v0, v6, Lcom/android/mail/providers/Message;->aBl:Z

    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avZ:Z

    .line 667
    iget-boolean v0, p0, Lcom/android/mail/compose/g;->avZ:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    if-nez v0, :cond_15

    .line 668
    if-eqz v3, :cond_16

    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/mail/compose/g;->a(Ljava/lang/CharSequence;Z)V

    .line 719
    :cond_15
    :goto_e
    iput v2, p0, Lcom/android/mail/compose/g;->avC:I

    .line 720
    invoke-virtual {p0, v2, v12, v11}, Lcom/android/mail/compose/g;->a(ILandroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 670
    :cond_16
    iget-object v0, p0, Lcom/android/mail/compose/g;->awb:Landroid/content/ContentValues;

    if-eqz v0, :cond_15

    .line 671
    iget-object v0, p0, Lcom/android/mail/compose/g;->awb:Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->c(Landroid/content/ContentValues;)V

    goto/16 :goto_1

    .line 675
    :cond_17
    const/4 v0, 0x3

    if-ne v2, v0, :cond_19

    .line 676
    if-nez v6, :cond_18

    .line 677
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Message must not be null to edit draft"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_18
    invoke-direct {p0, v6}, Lcom/android/mail/compose/g;->e(Lcom/android/mail/providers/Message;)V

    .line 681
    iget v0, v6, Lcom/android/mail/providers/Message;->aBk:I

    packed-switch v0, :pswitch_data_0

    .line 693
    const/4 v0, -0x1

    .line 696
    :goto_f
    sget-object v1, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v2, "Previous draft had action type: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 698
    iget-boolean v1, v6, Lcom/android/mail/providers/Message;->aBl:Z

    iput-boolean v1, p0, Lcom/android/mail/compose/g;->avZ:Z

    .line 699
    iget-object v1, v6, Lcom/android/mail/providers/Message;->aBj:Landroid/net/Uri;

    if-eqz v1, :cond_1c

    .line 703
    iget-object v1, v6, Lcom/android/mail/providers/Message;->aBj:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/compose/g;->avY:Landroid/net/Uri;

    .line 704
    iput v0, p0, Lcom/android/mail/compose/g;->avC:I

    .line 705
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_1

    .line 683
    :pswitch_0
    const/4 v0, 0x0

    .line 684
    goto :goto_f

    .line 686
    :pswitch_1
    const/4 v0, 0x1

    .line 687
    goto :goto_f

    .line 689
    :pswitch_2
    const/4 v0, 0x2

    .line 690
    goto :goto_f

    .line 708
    :cond_19
    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    if-eq v2, v0, :cond_1a

    const/4 v0, 0x2

    if-ne v2, v0, :cond_1b

    .line 709
    :cond_1a
    iget-object v0, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    if-eqz v0, :cond_15

    .line 710
    invoke-direct {p0, v2}, Lcom/android/mail/compose/g;->cm(I)V

    .line 711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avZ:Z

    goto :goto_e

    .line 714
    :cond_1b
    invoke-direct {p0, v12}, Lcom/android/mail/compose/g;->c(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_1

    :cond_1c
    move v2, v0

    goto :goto_e

    :cond_1d
    move-object v5, v0

    goto/16 :goto_d

    :cond_1e
    move-object v0, v2

    goto/16 :goto_9

    :cond_1f
    move-object v0, v2

    goto/16 :goto_7

    :cond_20
    move-object v2, v0

    goto/16 :goto_a

    :cond_21
    move-object v0, v1

    goto/16 :goto_3

    :cond_22
    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_5

    :cond_23
    move-object v7, v0

    move v2, v3

    move-object v6, v1

    move-object v0, v5

    move-object v3, v4

    goto/16 :goto_0

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private so()V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 930
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sp()V

    .line 931
    return-void
.end method

.method private sp()V
    .locals 3

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 935
    iget-object v1, p0, Lcom/android/mail/compose/g;->XI:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mail/compose/g;->A(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 937
    if-ltz v1, :cond_1

    .line 939
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    if-ltz v0, :cond_0

    .line 942
    iget-object v1, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method private sq()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1454
    iget-object v0, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1455
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1456
    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avV:Lcom/android/mail/compose/t;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1457
    iget-object v0, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avW:Lcom/android/mail/compose/t;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1458
    iget-object v0, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avX:Lcom/android/mail/compose/t;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1459
    iget-object v0, p0, Lcom/android/mail/compose/g;->avJ:Lcom/android/mail/compose/FromAddressSpinner;

    invoke-virtual {v0, v2}, Lcom/android/mail/compose/FromAddressSpinner;->a(Lcom/android/mail/compose/x;)V

    .line 1460
    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v0, v2}, Lcom/android/mail/compose/AttachmentsView;->a(Lcom/android/mail/compose/d;)V

    .line 1461
    return-void
.end method

.method private sr()V
    .locals 2

    .prologue
    .line 1468
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sq()V

    .line 1469
    iget-object v0, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1470
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1471
    iget-object v0, p0, Lcom/android/mail/compose/g;->avV:Lcom/android/mail/compose/t;

    if-nez v0, :cond_0

    .line 1472
    new-instance v0, Lcom/android/mail/compose/t;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mail/compose/t;-><init>(Lcom/android/mail/compose/g;Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)V

    iput-object v0, p0, Lcom/android/mail/compose/g;->avV:Lcom/android/mail/compose/t;

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avV:Lcom/android/mail/compose/t;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1475
    iget-object v0, p0, Lcom/android/mail/compose/g;->avW:Lcom/android/mail/compose/t;

    if-nez v0, :cond_1

    .line 1476
    new-instance v0, Lcom/android/mail/compose/t;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mail/compose/t;-><init>(Lcom/android/mail/compose/g;Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)V

    iput-object v0, p0, Lcom/android/mail/compose/g;->avW:Lcom/android/mail/compose/t;

    .line 1478
    :cond_1
    iget-object v0, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avW:Lcom/android/mail/compose/t;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1479
    iget-object v0, p0, Lcom/android/mail/compose/g;->avX:Lcom/android/mail/compose/t;

    if-nez v0, :cond_2

    .line 1480
    new-instance v0, Lcom/android/mail/compose/t;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mail/compose/t;-><init>(Lcom/android/mail/compose/g;Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)V

    iput-object v0, p0, Lcom/android/mail/compose/g;->avX:Lcom/android/mail/compose/t;

    .line 1482
    :cond_2
    iget-object v0, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avX:Lcom/android/mail/compose/t;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1483
    iget-object v0, p0, Lcom/android/mail/compose/g;->avJ:Lcom/android/mail/compose/FromAddressSpinner;

    invoke-virtual {v0, p0}, Lcom/android/mail/compose/FromAddressSpinner;->a(Lcom/android/mail/compose/x;)V

    .line 1484
    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v0, p0}, Lcom/android/mail/compose/AttachmentsView;->a(Lcom/android/mail/compose/d;)V

    .line 1485
    return-void
.end method

.method private st()V
    .locals 3

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/android/mail/compose/g;->avv:Lcom/android/mail/compose/CcBccView;

    invoke-virtual {v0}, Lcom/android/mail/compose/CcBccView;->sl()Z

    move-result v0

    .line 2020
    iget-object v1, p0, Lcom/android/mail/compose/g;->avv:Lcom/android/mail/compose/CcBccView;

    invoke-virtual {v1}, Lcom/android/mail/compose/CcBccView;->sm()Z

    move-result v1

    .line 2021
    iget-object v2, p0, Lcom/android/mail/compose/g;->avu:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2022
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 2023
    :cond_0
    iget-object v0, p0, Lcom/android/mail/compose/g;->avu:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2028
    :cond_1
    :goto_0
    return-void

    .line 2025
    :cond_2
    iget-object v0, p0, Lcom/android/mail/compose/g;->avu:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private su()V
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->z(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 2314
    iget-object v0, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->z(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 2315
    iget-object v0, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->z(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 2316
    return-void
.end method

.method private sx()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2507
    invoke-virtual {p0, v0, v1, v0}, Lcom/android/mail/compose/g;->c(ZZZ)V

    .line 2508
    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->aQ(Z)V

    .line 2509
    iput-boolean v1, p0, Lcom/android/mail/compose/g;->awf:Z

    .line 2510
    return-void
.end method

.method private sy()V
    .locals 2

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/android/mail/compose/g;->avO:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 2886
    iget-object v1, p0, Lcom/android/mail/compose/g;->avO:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/mail/compose/g;->sz()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/mail/compose/g;->sA()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2888
    :cond_0
    return-void

    .line 2886
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sz()Z
    .locals 2

    .prologue
    .line 2894
    iget-object v1, p0, Lcom/android/mail/compose/g;->avT:Ljava/lang/Object;

    monitor-enter v1

    .line 2900
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mail/compose/g;->avM:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/compose/g;->avL:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/compose/g;->avN:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sA()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2902
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static y(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 1

    .prologue
    .line 1392
    new-instance v0, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v0}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setThreshold(I)V

    .line 1394
    return-void
.end method

.method private z(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 2

    .prologue
    .line 2319
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->sw()Lcom/android/ex/chips/DropdownChipLayouter;

    move-result-object v0

    .line 2320
    if-eqz v0, :cond_0

    .line 2321
    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/DropdownChipLayouter;)V

    .line 2323
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->sv()Lcom/android/ex/chips/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2324
    invoke-virtual {p1, p0}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/Z;)V

    .line 2325
    iget-object v0, p0, Lcom/android/mail/compose/g;->avz:Lcom/android/b/a;

    if-nez v0, :cond_2

    .line 2326
    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    .line 2327
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2329
    if-lez v1, :cond_1

    .line 2330
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2332
    :cond_1
    new-instance v1, Lcom/android/b/a;

    invoke-direct {v1, v0}, Lcom/android/b/a;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/mail/compose/g;->avz:Lcom/android/b/a;

    .line 2334
    :cond_2
    iget-object v0, p0, Lcom/android/mail/compose/g;->avz:Lcom/android/b/a;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 2335
    return-void
.end method


# virtual methods
.method public final H(II)V
    .locals 6

    .prologue
    .line 2519
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "suggest_click"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2521
    return-void
.end method

.method public final Y(I)Z
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3525
    iget v0, p0, Lcom/android/mail/compose/g;->avC:I

    .line 3526
    if-nez p1, :cond_5

    .line 3527
    iput v1, p0, Lcom/android/mail/compose/g;->avC:I

    .line 3533
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sq()V

    .line 3534
    iget v3, p0, Lcom/android/mail/compose/g;->avC:I

    if-eq v0, v3, :cond_4

    .line 3535
    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/mail/compose/g;->avL:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/android/mail/compose/AttachmentsView;->se()V

    .line 3536
    :cond_1
    iget-object v0, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    if-eqz v0, :cond_2

    .line 3537
    iget v0, p0, Lcom/android/mail/compose/g;->avC:I

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->cm(I)V

    .line 3541
    :cond_2
    iget-object v0, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    if-eqz v0, :cond_c

    .line 3544
    iget-object v0, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    invoke-virtual {v0}, Lcom/android/mail/providers/Message;->vr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    move v3, v2

    .line 3547
    :goto_1
    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    invoke-virtual {v0}, Lcom/android/mail/providers/Message;->getCc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/mail/compose/g;->avC:I

    if-ne v0, v2, :cond_8

    :cond_3
    move v0, v2

    :goto_2
    move v5, v3

    move v3, v0

    move v0, v5

    .line 3550
    :goto_3
    iget-object v4, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    if-eqz v4, :cond_b

    .line 3551
    iget-object v0, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    .line 3552
    :goto_4
    iget-object v3, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move v3, v2

    .line 3554
    :goto_5
    iget-object v4, p0, Lcom/android/mail/compose/g;->avv:Lcom/android/mail/compose/CcBccView;

    invoke-virtual {v4, v1, v0, v3}, Lcom/android/mail/compose/CcBccView;->b(ZZZ)V

    .line 3556
    :cond_4
    invoke-direct {p0}, Lcom/android/mail/compose/g;->st()V

    .line 3557
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sr()V

    .line 3558
    return v2

    .line 3528
    :cond_5
    if-ne p1, v2, :cond_6

    .line 3529
    iput v2, p0, Lcom/android/mail/compose/g;->avC:I

    goto/16 :goto_0

    .line 3530
    :cond_6
    if-ne p1, v3, :cond_0

    .line 3531
    iput v3, p0, Lcom/android/mail/compose/g;->avC:I

    goto/16 :goto_0

    :cond_7
    move v3, v1

    .line 3544
    goto :goto_1

    :cond_8
    move v0, v1

    .line 3547
    goto :goto_2

    :cond_9
    move v0, v1

    .line 3551
    goto :goto_4

    :cond_a
    move v3, v1

    .line 3552
    goto :goto_5

    :cond_b
    move v5, v0

    move v0, v3

    move v3, v5

    goto :goto_5

    :cond_c
    move v0, v1

    move v3, v1

    goto :goto_3
.end method

.method protected a(Landroid/text/Spanned;)Lcom/android/mail/compose/z;
    .locals 2

    .prologue
    .line 1431
    new-instance v0, Lcom/android/mail/compose/z;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/mail/compose/z;-><init>(Landroid/text/Spanned;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected a(Lcom/android/mail/providers/ReplyFromAccount;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1178
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    .line 1180
    :goto_0
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    .line 1182
    :cond_0
    :goto_1
    new-instance v2, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v2, v1, v0}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->lk()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1178
    :cond_1
    iget-object v1, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_0

    .line 1180
    :cond_3
    iget-object v2, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->ik()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 1435
    return-object p1
.end method

.method protected final a(ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 848
    const/4 v0, 0x3

    if-ne p1, v0, :cond_22

    iget-object v0, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    iget v0, v0, Lcom/android/mail/providers/Message;->aBk:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_1

    :cond_0
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mail/compose/g;->so()V

    .line 851
    :goto_1
    invoke-static {p3}, Lcom/android/mail/compose/g;->k(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 852
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_21

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v1, v0

    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/mail/compose/g;->avL:Z

    if-nez v0, :cond_3

    const-wide/16 v2, 0x0

    const-string v0, "attachments"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "attachments"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    invoke-static {v2}, Lcom/google/common/collect/Lists;->fm(I)Ljava/util/ArrayList;

    move-result-object v3

    array-length v5, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_1

    aget-object v6, v0, v2

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 848
    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->requestFocus()Z

    goto :goto_1

    .line 852
    :cond_1
    const-wide/16 v6, 0x0

    invoke-direct {p0, v3}, Lcom/android/mail/compose/g;->n(Ljava/util/List;)J

    move-result-wide v2

    add-long/2addr v2, v6

    :cond_2
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->n(Ljava/util/List;)J

    move-result-wide v0

    add-long v4, v2, v0

    :goto_4
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avL:Z

    invoke-direct {p0}, Lcom/android/mail/compose/g;->sy()V

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "send_intent_with_attachments"

    iget-object v2, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v2}, Lcom/android/mail/compose/AttachmentsView;->sc()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 854
    :cond_3
    sget-object v0, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v1, "initializing action bar in ComposeActivity"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->cF()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/mail/compose/g;->avC:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setNavigationMode(I)V

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setTitle(I)V

    :goto_5
    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/a;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/support/v7/app/a;->cD()V

    .line 855
    :cond_4
    if-eqz p3, :cond_11

    move-object v0, p3

    :goto_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    iget v1, v1, Lcom/android/mail/providers/Message;->aBk:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/4 p1, -0x1

    :cond_5
    iget-object v1, p0, Lcom/android/mail/compose/g;->avJ:Lcom/android/mail/compose/FromAddressSpinner;

    iget-object v2, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    iget-object v3, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    iget-object v4, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/mail/compose/FromAddressSpinner;->a(ILcom/android/mail/providers/Account;[Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V

    if-eqz v0, :cond_6

    const-string v1, "replyFromAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    const-string v2, "replyFromAccount"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mail/providers/ReplyFromAccount;->a(Lcom/android/mail/providers/Account;Ljava/lang/String;)Lcom/android/mail/providers/ReplyFromAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    :cond_6
    :goto_7
    iget-object v0, p0, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    invoke-virtual {v0}, Lcom/android/mail/providers/Message;->vq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->ak(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_13

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_8
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mail/compose/g;->avJ:Lcom/android/mail/compose/FromAddressSpinner;

    invoke-virtual {v0}, Lcom/android/mail/compose/FromAddressSpinner;->sR()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ReplyFromAccount;

    iget-object v4, v0, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_9
    move-object v1, p0

    :goto_a
    iput-object v0, v1, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    :cond_8
    iget-object v0, p0, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v0}, Lcom/android/mail/compose/g;->e(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/ReplyFromAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    :cond_9
    iget-object v0, p0, Lcom/android/mail/compose/g;->avJ:Lcom/android/mail/compose/FromAddressSpinner;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    invoke-virtual {v0, v1}, Lcom/android/mail/compose/FromAddressSpinner;->b(Lcom/android/mail/providers/ReplyFromAccount;)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avJ:Lcom/android/mail/compose/FromAddressSpinner;

    invoke-virtual {v0}, Lcom/android/mail/compose/FromAddressSpinner;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    iget-object v0, p0, Lcom/android/mail/compose/g;->avG:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avH:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    iget-object v1, v1, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avI:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 860
    :goto_b
    iget-object v0, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    if-eqz v0, :cond_a

    .line 861
    iget-object v0, p0, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    iput-object v0, p0, Lcom/android/mail/compose/g;->avS:Lcom/android/mail/providers/ReplyFromAccount;

    .line 864
    :cond_a
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sr()V

    .line 867
    iget-object v0, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p3, :cond_1a

    const-string v0, "showCc"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_b
    const/4 v0, 0x1

    .line 869
    :goto_c
    iget-object v1, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p3, :cond_1b

    const-string v1, "showBcc"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_c
    const/4 v1, 0x1

    .line 871
    :goto_d
    iget-object v2, p0, Lcom/android/mail/compose/g;->avv:Lcom/android/mail/compose/CcBccView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/mail/compose/CcBccView;->b(ZZZ)V

    .line 872
    invoke-direct {p0}, Lcom/android/mail/compose/g;->st()V

    .line 873
    iget-boolean v0, p0, Lcom/android/mail/compose/g;->avZ:Z

    iget-object v1, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    invoke-virtual {v1, v0}, Lcom/android/mail/compose/QuotedTextView;->aT(Z)V

    iget-object v1, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/android/mail/compose/AttachmentsView;->sc()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {v1, v0}, Lcom/android/mail/compose/QuotedTextView;->aU(Z)V

    .line 875
    iget-object v0, p0, Lcom/android/mail/compose/g;->awa:Landroid/os/Bundle;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/mail/compose/g;->awa:Landroid/os/Bundle;

    const-string v1, "respondedInline"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lcom/android/mail/compose/g;->awe:Z

    .line 877
    iget-boolean v0, p0, Lcom/android/mail/compose/g;->awe:Z

    if-eqz v0, :cond_d

    .line 878
    iget-object v0, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mail/compose/QuotedTextView;->setVisibility(I)V

    .line 881
    :cond_d
    if-eqz p3, :cond_1e

    const-string v0, "extraTextChanged"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_10
    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avM:Z

    .line 883
    return-void

    .line 852
    :cond_e
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->n(Ljava/util/List;)J

    move-result-wide v0

    add-long v4, v2, v0

    goto/16 :goto_4

    .line 854
    :cond_f
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mail/compose/g;->avB:Lcom/android/mail/compose/n;

    if-nez v1, :cond_10

    new-instance v1, Lcom/android/mail/compose/n;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mail/compose/n;-><init>(Lcom/android/mail/compose/g;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mail/compose/g;->avB:Lcom/android/mail/compose/n;

    :cond_10
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setNavigationMode(I)V

    iget-object v1, p0, Lcom/android/mail/compose/g;->avB:Lcom/android/mail/compose/n;

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/a;->a(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/d;)V

    iget v1, p0, Lcom/android/mail/compose/g;->avC:I

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_5

    :pswitch_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setSelectedNavigationItem(I)V

    goto/16 :goto_5

    :pswitch_5
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setSelectedNavigationItem(I)V

    goto/16 :goto_5

    :pswitch_6
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setSelectedNavigationItem(I)V

    goto/16 :goto_5

    .line 855
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_6

    :cond_12
    const-string v1, "fromAccountString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "fromAccountString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/compose/g;->avJ:Lcom/android/mail/compose/FromAddressSpinner;

    invoke-virtual {v1, v0}, Lcom/android/mail/compose/FromAddressSpinner;->bx(Ljava/lang/String;)Lcom/android/mail/providers/ReplyFromAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    goto/16 :goto_7

    :cond_13
    const-string v0, ""

    move-object v1, v0

    goto/16 :goto_8

    :cond_14
    iget-object v0, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    iget-object v2, v1, Lcom/android/mail/providers/Message;->azj:Landroid/net/Uri;

    if-eqz v2, :cond_17

    iget-object v0, p0, Lcom/android/mail/compose/g;->avJ:Lcom/android/mail/compose/FromAddressSpinner;

    invoke-virtual {v0}, Lcom/android/mail/compose/FromAddressSpinner;->sR()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ReplyFromAccount;

    iget-object v3, v0, Lcom/android/mail/providers/ReplyFromAccount;->account:Lcom/android/mail/providers/Account;

    iget-object v3, v3, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/android/mail/providers/Message;->azj:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object v1, p0

    goto/16 :goto_a

    :cond_16
    const/4 v0, 0x0

    move-object v1, p0

    goto/16 :goto_a

    :cond_17
    iget-object v2, p0, Lcom/android/mail/compose/g;->avy:Lcom/android/mail/providers/Settings;

    iget-boolean v2, v2, Lcom/android/mail/providers/Settings;->aBZ:Z

    if-eqz v2, :cond_18

    invoke-static {v0}, Lcom/android/mail/compose/g;->e(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/ReplyFromAccount;

    move-result-object v0

    move-object v1, p0

    goto/16 :goto_a

    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/android/mail/providers/Message;->vv()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/android/mail/providers/Message;->vx()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, v2}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/providers/Account;Ljava/util/List;)Lcom/android/mail/providers/ReplyFromAccount;

    move-result-object v0

    move-object v1, p0

    goto/16 :goto_a

    :cond_19
    iget-object v0, p0, Lcom/android/mail/compose/g;->avG:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avH:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    iget-object v1, v1, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avI:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 867
    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 869
    :cond_1b
    const/4 v1, 0x0

    goto/16 :goto_d

    .line 873
    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_e

    .line 875
    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 881
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_10

    :cond_1f
    move-object v0, v2

    goto/16 :goto_9

    :cond_20
    move-wide v4, v2

    goto/16 :goto_4

    :cond_21
    move-object v1, v0

    goto/16 :goto_2

    :cond_22
    move v0, p1

    goto/16 :goto_0

    .line 848
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 854
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Landroid/support/v7/c/a;)V
    .locals 1

    .prologue
    .line 4050
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->a(Landroid/support/v7/c/a;)V

    .line 4051
    const v0, 0x7f0a00cc

    invoke-static {p0, v0}, Lcom/android/mail/utils/al;->a(Landroid/app/Activity;I)V

    .line 4052
    return-void
.end method

.method protected final a(Ljava/lang/CharSequence;Z)V
    .locals 1

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    invoke-virtual {v0, p1, p2}, Lcom/android/mail/compose/QuotedTextView;->d(Ljava/lang/CharSequence;Z)V

    .line 2008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avZ:Z

    .line 2009
    return-void
.end method

.method protected a(ZZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3308
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/compose/g;->e(ZZ)V

    .line 3309
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 3816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avM:Z

    .line 3817
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sy()V

    .line 3818
    return-void
.end method

.method public final b(Landroid/support/v7/c/a;)V
    .locals 1

    .prologue
    .line 4056
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->b(Landroid/support/v7/c/a;)V

    .line 4057
    const v0, 0x7f0a00c9

    invoke-static {p0, v0}, Lcom/android/mail/utils/al;->a(Landroid/app/Activity;I)V

    .line 4058
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3647
    if-nez p1, :cond_0

    .line 3648
    const-string p1, ""

    .line 3650
    :cond_0
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3651
    sget-object v0, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v1, "POTENTIAL DATA LOSS: ComposeActivity#setBody on a non-empty body (%d -> %d)"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3655
    :cond_1
    sget-object v0, Lcom/android/mail/compose/g;->mW:Ljava/lang/String;

    const-string v1, "Body populated, len: %d, sig: %b"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3656
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3657
    if-eqz p2, :cond_2

    .line 3658
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sC()V

    .line 3660
    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 3823
    return-void
.end method

.method public final bu(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3615
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 3616
    :goto_0
    iget-object v0, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    invoke-virtual {v0, v2}, Lcom/android/mail/compose/QuotedTextView;->aU(Z)V

    .line 3617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/compose/g;->awe:Z

    .line 3618
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3619
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3621
    :cond_0
    return-void

    .line 3615
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/mail/compose/g;->b(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method protected c(Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 1724
    return-void
.end method

.method protected final c(ZZZ)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2973
    iget-object v0, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    if-nez v0, :cond_2

    .line 2974
    :cond_0
    const v0, 0x7f0900f8

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2975
    if-eqz p3, :cond_1

    .line 2976
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->finish()V

    .line 3057
    :cond_1
    :goto_0
    return-void

    .line 2982
    :cond_2
    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/mail/compose/g;->A(Lcom/android/ex/chips/RecipientEditTextView;)[Ljava/lang/String;

    move-result-object v0

    .line 2986
    iget-object v3, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v3}, Lcom/android/mail/compose/g;->A(Lcom/android/ex/chips/RecipientEditTextView;)[Ljava/lang/String;

    move-result-object v3

    .line 2987
    iget-object v4, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v4}, Lcom/android/mail/compose/g;->A(Lcom/android/ex/chips/RecipientEditTextView;)[Ljava/lang/String;

    move-result-object v4

    .line 2990
    invoke-static {v0}, Lcom/android/mail/compose/g;->k([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2991
    invoke-static {v3}, Lcom/android/mail/compose/g;->k([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2992
    invoke-static {v4}, Lcom/android/mail/compose/g;->k([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2996
    if-nez p1, :cond_3

    array-length v6, v0

    if-nez v6, :cond_3

    array-length v6, v3

    if-nez v6, :cond_3

    array-length v6, v4

    if-nez v6, :cond_3

    .line 2997
    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->bs(Ljava/lang/String;)V

    goto :goto_0

    .line 3001
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3002
    if-nez p1, :cond_4

    .line 3003
    invoke-direct {p0, v0, v6}, Lcom/android/mail/compose/g;->b([Ljava/lang/String;Ljava/util/List;)V

    .line 3004
    invoke-direct {p0, v3, v6}, Lcom/android/mail/compose/g;->b([Ljava/lang/String;Ljava/util/List;)V

    .line 3005
    invoke-direct {p0, v4, v6}, Lcom/android/mail/compose/g;->b([Ljava/lang/String;Ljava/util/List;)V

    .line 3009
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 3010
    const v0, 0x7f090120

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3012
    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->bs(Ljava/lang/String;)V

    goto :goto_0

    .line 3016
    :cond_5
    if-nez p1, :cond_e

    .line 3017
    if-eqz p3, :cond_6

    .line 3020
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/compose/g;->e(ZZ)V

    goto :goto_0

    .line 3025
    :cond_6
    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/android/mail/compose/AttachmentsView;->sc()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->sj()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3026
    iget-object v0, p0, Lcom/android/mail/compose/g;->avA:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 3027
    :goto_1
    iget-object v3, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-nez v3, :cond_9

    move v3, v1

    .line 3032
    :goto_2
    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/android/mail/compose/g;->avD:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    invoke-virtual {v3}, Lcom/android/mail/compose/QuotedTextView;->sV()Z

    move-result v3

    if-nez v3, :cond_a

    move v3, v1

    :goto_3
    if-eqz v3, :cond_b

    .line 3037
    :cond_7
    :goto_4
    if-eqz v0, :cond_c

    .line 3038
    const v0, 0x7f090095

    invoke-direct {p0, v0, p2, v5}, Lcom/android/mail/compose/g;->a(IZLjava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 3026
    goto :goto_1

    :cond_9
    move v3, v2

    .line 3027
    goto :goto_2

    :cond_a
    move v3, v2

    .line 3032
    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_4

    .line 3043
    :cond_c
    if-eqz v1, :cond_d

    .line 3044
    const v0, 0x7f090096

    invoke-direct {p0, v0, p2, v5}, Lcom/android/mail/compose/g;->a(IZLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3050
    :cond_d
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->sk()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3051
    const v0, 0x7f090097

    invoke-direct {p0, v0, p2, v5}, Lcom/android/mail/compose/g;->a(IZLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3056
    :cond_e
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/mail/compose/g;->a(ZZLjava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method protected d(Lcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 1195
    if-nez p1, :cond_1

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1199
    iput-object p1, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    .line 1200
    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iput-object v0, p0, Lcom/android/mail/compose/g;->avy:Lcom/android/mail/providers/Settings;

    .line 1201
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sC()V

    .line 1203
    :cond_2
    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/ui/MailActivity;->cp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final e(ZZ)V
    .locals 7

    .prologue
    .line 3314
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3451
    :cond_0
    :goto_0
    return-void

    .line 3318
    :cond_1
    new-instance v3, Lcom/android/mail/compose/l;

    invoke-direct {v3, p0}, Lcom/android/mail/compose/l;-><init>(Lcom/android/mail/compose/g;)V

    .line 3409
    iget-object v0, p0, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    iget-object v0, v0, Lcom/android/mail/providers/ReplyFromAccount;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->d(Lcom/android/mail/providers/Account;)V

    .line 3411
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/compose/g;->b(Landroid/text/Spanned;)Landroid/text/SpannableString;

    move-result-object v2

    .line 3412
    invoke-interface {v3}, Lcom/android/mail/compose/v;->sL()V

    .line 3416
    invoke-static {}, Lcom/android/mail/utils/ag;->Be()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3417
    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/android/mail/compose/AttachmentsView;->sc()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v5

    .line 3423
    :goto_1
    sget-object v0, Lcom/android/mail/compose/g;->Wp:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/compose/g;->awc:I

    .line 3424
    sget-object v6, Lcom/android/mail/compose/g;->avn:Landroid/os/Handler;

    new-instance v0, Lcom/android/mail/compose/m;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/compose/m;-><init>(Lcom/android/mail/compose/g;Landroid/text/Spanned;Lcom/android/mail/compose/v;ZLandroid/os/Bundle;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3437
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getChangingConfigurations()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    .line 3438
    if-eqz p1, :cond_4

    const v0, 0x7f09011e

    :goto_2
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3444
    :cond_2
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sB()V

    .line 3445
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sy()V

    .line 3448
    if-nez p1, :cond_0

    .line 3449
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->finish()V

    goto :goto_0

    .line 3419
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 3438
    :cond_4
    const v0, 0x7f09011f

    goto :goto_2
.end method

.method protected f(Lcom/android/mail/providers/Account;)Z
    .locals 1

    .prologue
    .line 2909
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 989
    if-ne p1, v2, :cond_2

    .line 990
    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avK:Z

    .line 991
    if-ne p2, v1, :cond_1

    .line 992
    if-eqz p3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mail/compose/g;->p(Landroid/net/Uri;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->p(Landroid/net/Uri;)V

    .line 1005
    :cond_1
    :goto_1
    return-void

    .line 994
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 996
    if-eq p2, v1, :cond_3

    .line 997
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->finish()V

    goto :goto_1

    .line 1001
    :cond_3
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1002
    invoke-direct {p0, v3}, Lcom/android/mail/compose/g;->g(Lcom/android/mail/providers/Account;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2478
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sF()Lcom/android/mail/ui/dF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2479
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->finish()V

    .line 2483
    :goto_0
    return-void

    .line 2481
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/g;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2355
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2356
    const v1, 0x7f0d0125

    if-ne v0, v1, :cond_0

    .line 2359
    iget-object v0, p0, Lcom/android/mail/compose/g;->avv:Lcom/android/mail/compose/CcBccView;

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/mail/compose/CcBccView;->b(ZZZ)V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avu:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/compose/g;->avu:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2361
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 514
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onCreate(Landroid/os/Bundle;)V

    .line 517
    const v0, 0x7f090086

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->setTitle(I)V

    .line 518
    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->setContentView(I)V

    .line 519
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->cF()Landroid/support/v7/app/a;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Landroid/support/v7/app/a;->cy()V

    .line 523
    invoke-virtual {v0}, Landroid/support/v7/app/a;->cz()V

    .line 526
    :cond_0
    if-eqz p1, :cond_3

    const-string v0, "compose_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/mail/compose/g;->awa:Landroid/os/Bundle;

    .line 528
    invoke-static {p0}, Lcom/android/mail/utils/a;->ax(Landroid/content/Context;)[Lcom/android/mail/providers/Account;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v0, v4

    if-nez v0, :cond_4

    :cond_1
    invoke-static {p0}, Lcom/android/mail/providers/t;->aq(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/compose/g;->startActivityForResult(Landroid/content/Intent;I)V

    .line 529
    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v0, v1

    .line 526
    goto :goto_0

    .line 528
    :cond_4
    array-length v5, v4

    move v0, v3

    :goto_2
    if-ge v0, v5, :cond_7

    aget-object v6, v4, v0

    invoke-virtual {v6}, Lcom/android/mail/providers/Account;->uj()Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v2

    :goto_3
    if-nez v0, :cond_6

    iput-object v1, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-static {p0}, Lcom/android/mail/utils/a;->aw(Landroid/content/Context;)[Lcom/android/mail/providers/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    invoke-direct {p0}, Lcom/android/mail/compose/g;->sn()V

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_3
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3924
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 3935
    :goto_0
    return-object v0

    .line 3926
    :pswitch_0
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v2, p0, Lcom/android/mail/compose/g;->avY:Landroid/net/Uri;

    sget-object v3, Lcom/android/mail/providers/E;->aCy:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3929
    :pswitch_1
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v2, p0, Lcom/android/mail/compose/g;->avY:Landroid/net/Uri;

    sget-object v3, Lcom/android/mail/providers/E;->aCy:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3932
    :pswitch_2
    new-instance v0, Landroid/content/CursorLoader;

    invoke-static {}, Lcom/android/mail/providers/t;->vh()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3924
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2392
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 2394
    iget-object v3, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    array-length v3, v3

    if-nez v3, :cond_1

    :cond_0
    move v2, v0

    .line 2442
    :goto_0
    return v2

    .line 2397
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 2398
    const v3, 0x7f100003

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2415
    const v0, 0x7f0d0274

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/g;->avO:Landroid/view/MenuItem;

    .line 2416
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2417
    :goto_1
    iget-object v3, p0, Lcom/android/mail/compose/g;->awa:Landroid/os/Bundle;

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/android/mail/compose/g;->awa:Landroid/os/Bundle;

    const-string v3, "saveEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->aR(Z)V

    .line 2424
    const v0, 0x7f0d026d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2425
    const v0, 0x7f0d0010

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2426
    const v0, 0x7f0d0272

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 2427
    if-eqz v3, :cond_2

    .line 2428
    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    const v6, 0x8000

    invoke-virtual {v0, v6}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2431
    :cond_2
    if-eqz v4, :cond_3

    .line 2432
    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    const/high16 v3, 0x10000

    invoke-virtual {v0, v3}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    :goto_4
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2435
    :cond_3
    if-eqz v5, :cond_4

    .line 2436
    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->f(Lcom/android/mail/providers/Account;)Z

    move-result v0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2440
    :cond_4
    const v0, 0x7f0d0271

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/mail/utils/ag;->Bg()Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    :cond_5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2416
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 2417
    :cond_7
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "android.intent.action.SENDTO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/mail/compose/g;->sz()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_2

    :cond_a
    move v0, v1

    .line 2428
    goto :goto_3

    :cond_b
    move v0, v1

    .line 2432
    goto :goto_4
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1398
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 1399
    invoke-direct {p0}, Lcom/android/mail/compose/g;->so()V

    .line 1400
    const/4 v0, 0x1

    .line 1402
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2365
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2366
    if-eqz p2, :cond_2

    const v3, 0x7f0d0129

    if-eq v0, v3, :cond_0

    const v3, 0x7f0d011b

    if-ne v0, v3, :cond_2

    .line 2368
    :cond_0
    iget-object v0, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/compose/g;->avt:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v2

    .line 2370
    :goto_0
    iget-object v3, p0, Lcom/android/mail/compose/g;->avv:Lcom/android/mail/compose/CcBccView;

    invoke-virtual {v3, v1, v0, v0}, Lcom/android/mail/compose/CcBccView;->b(ZZZ)V

    .line 2371
    iget-object v4, p0, Lcom/android/mail/compose/g;->avu:Landroid/view/View;

    if-eqz v0, :cond_4

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2374
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 2375
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2376
    iget-object v3, p0, Lcom/android/mail/compose/g;->avs:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v3, v0}, Lcom/android/ex/chips/RecipientEditTextView;->getLocationOnScreen([I)V

    .line 2379
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/compose/g;->aea:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2380
    aget v0, v0, v2

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->cF()Landroid/support/v7/app/a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/a;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/mail/compose/g;->aea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 2383
    if-lez v0, :cond_2

    .line 2384
    iget-object v2, p0, Lcom/android/mail/compose/g;->aeO:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2388
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 2368
    goto :goto_0

    :cond_4
    move v3, v1

    .line 2371
    goto :goto_1
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 140
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/mail/providers/Message;

    invoke-direct {v1, p2}, Lcom/android/mail/providers/Message;-><init>(Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/mail/compose/g;->avC:I

    invoke-direct {p0, v2}, Lcom/android/mail/compose/g;->cm(I)V

    iget v2, p0, Lcom/android/mail/compose/g;->avC:I

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/mail/compose/g;->a(ILandroid/content/Intent;Landroid/os/Bundle;)V

    iget v2, p0, Lcom/android/mail/compose/g;->avC:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v2, "to"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    invoke-virtual {v2, v0}, Lcom/android/mail/providers/Message;->bX(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    invoke-virtual {v2, v0}, Lcom/android/mail/providers/Message;->bW(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mail/compose/g;->sq()V

    iget-object v0, p0, Lcom/android/mail/compose/g;->avr:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->append(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/mail/compose/g;->sr()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->finish()V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/mail/providers/Message;

    invoke-direct {v0, p2}, Lcom/android/mail/providers/Message;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    :cond_2
    iget v0, p0, Lcom/android/mail/compose/g;->avC:I

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/compose/g;->awa:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mail/compose/g;->a(ILandroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-static {p2}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->uj()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    const v0, 0x7f0d0242

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    const v0, 0x7f0d010f

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/mail/providers/Account;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mail/providers/Account;

    iput-object v0, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    invoke-direct {p0}, Lcom/android/mail/compose/g;->sn()V

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/mail/compose/g;->g(Lcom/android/mail/providers/Account;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4027
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2447
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 2449
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v3

    const-string v4, "menu_item"

    const-string v5, "compose"

    invoke-interface {v3, v4, v2, v5}, Lcom/android/mail/a/d;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 2453
    const v3, 0x7f0d0270

    if-ne v2, v3, :cond_2

    .line 2454
    const-string v2, "*/*"

    invoke-direct {p0, v2}, Lcom/android/mail/compose/g;->bt(Ljava/lang/String;)V

    move v2, v1

    .line 2472
    :goto_0
    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    .line 2455
    :cond_2
    const v3, 0x7f0d0271

    if-ne v2, v3, :cond_3

    .line 2456
    const-string v2, "image/*"

    invoke-direct {p0, v2}, Lcom/android/mail/compose/g;->bt(Ljava/lang/String;)V

    move v2, v1

    goto :goto_0

    .line 2457
    :cond_3
    const v3, 0x7f0d0274

    if-ne v2, v3, :cond_4

    .line 2458
    invoke-virtual {p0, v1, v1, v0}, Lcom/android/mail/compose/g;->c(ZZZ)V

    move v2, v1

    goto :goto_0

    .line 2459
    :cond_4
    const v3, 0x7f0d0273

    if-ne v2, v3, :cond_5

    .line 2460
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sx()V

    move v2, v1

    goto :goto_0

    .line 2461
    :cond_5
    const v3, 0x7f0d0275

    if-ne v2, v3, :cond_7

    .line 2462
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sz()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/android/mail/compose/o;

    invoke-direct {v2}, Lcom/android/mail/compose/o;-><init>()V

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "discard confirm"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v2, v1

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sE()V

    move v2, v1

    goto :goto_0

    .line 2463
    :cond_7
    const v3, 0x7f0d026c

    if-ne v2, v3, :cond_8

    .line 2464
    iget-object v2, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {p0, v2}, Lcom/android/mail/utils/ag;->e(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    move v2, v1

    goto :goto_0

    .line 2465
    :cond_8
    const v3, 0x102002c

    if-ne v2, v3, :cond_a

    .line 2466
    iget-boolean v2, p0, Lcom/android/mail/compose/g;->avU:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->onBackPressed()V

    move v2, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v2}, Lcom/android/mail/utils/ag;->x(Lcom/android/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x1000c000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/mail/compose/g;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->finish()V

    move v2, v1

    goto :goto_0

    .line 2467
    :cond_a
    const v3, 0x7f0d026d

    if-ne v2, v3, :cond_b

    .line 2468
    iget-object v2, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    const v3, 0x7f090062

    invoke-virtual {p0, v3}, Lcom/android/mail/compose/g;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mail/utils/ag;->b(Landroid/content/Context;Lcom/android/mail/providers/Account;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_0

    :cond_b
    move v2, v0

    .line 2470
    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 972
    invoke-super {p0}, Landroid/support/v7/app/g;->onPause()V

    .line 976
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mail/compose/g;->sz()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/compose/g;->avK:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/mail/compose/g;->c(ZZZ)V

    .line 979
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mail/compose/g;->awf:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/mail/compose/g;->sA()Z

    move-result v0

    if-nez v0, :cond_1

    .line 982
    invoke-direct {p0, v1}, Lcom/android/mail/compose/g;->aQ(Z)V

    .line 985
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 977
    goto :goto_0
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 1010
    :goto_0
    if-eqz v1, :cond_0

    .line 1011
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sq()V

    .line 1013
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1014
    iget-object v0, p0, Lcom/android/mail/compose/g;->awa:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/android/mail/compose/g;->awa:Landroid/os/Bundle;

    const-string v2, "focusSelectionStart"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/android/mail/compose/g;->awa:Landroid/os/Bundle;

    const-string v2, "focusSelectionStart"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1017
    iget-object v0, p0, Lcom/android/mail/compose/g;->awa:Landroid/os/Bundle;

    const-string v3, "focusSelectionEnd"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1020
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1021
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1022
    if-ge v2, v4, :cond_1

    if-ge v3, v4, :cond_1

    .line 1023
    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 1027
    :cond_1
    if-eqz v1, :cond_2

    .line 1028
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sr()V

    .line 1030
    :cond_2
    return-void

    .line 1009
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 962
    invoke-super {p0}, Landroid/support/v7/app/g;->onResume()V

    .line 965
    iget-object v0, p0, Lcom/android/mail/compose/g;->avJ:Lcom/android/mail/compose/FromAddressSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/mail/compose/g;->avJ:Lcom/android/mail/compose/FromAddressSpinner;

    iget v1, p0, Lcom/android/mail/compose/g;->avC:I

    iget-object v2, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    iget-object v3, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    iget-object v4, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mail/compose/FromAddressSpinner;->a(ILcom/android/mail/providers/Account;[Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V

    .line 968
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 1034
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1035
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1036
    iget-object v0, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/compose/g;->awd:[Lcom/android/mail/providers/Account;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1037
    :cond_0
    :goto_0
    const-string v0, "compose_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1038
    return-void

    .line 1036
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/widget/EditText;

    const-string v2, "focusSelectionStart"

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "focusSelectionEnd"

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/android/mail/compose/g;->avJ:Lcom/android/mail/compose/FromAddressSpinner;

    invoke-virtual {v0}, Lcom/android/mail/compose/FromAddressSpinner;->sR()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mail/compose/g;->avJ:Lcom/android/mail/compose/FromAddressSpinner;

    invoke-virtual {v2}, Lcom/android/mail/compose/FromAddressSpinner;->getSelectedItemPosition()I

    move-result v2

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ReplyFromAccount;

    :goto_1
    if-eqz v0, :cond_7

    const-string v2, "replyFromAccount"

    invoke-virtual {v0}, Lcom/android/mail/providers/ReplyFromAccount;->vG()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account"

    iget-object v3, v0, Lcom/android/mail/providers/ReplyFromAccount;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_2
    iget-wide v2, p0, Lcom/android/mail/compose/g;->avQ:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/mail/compose/g;->awc:I

    if-eqz v2, :cond_3

    const-string v2, "requestId"

    iget v3, p0, Lcom/android/mail/compose/g;->awc:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/mail/compose/g;->getMode()I

    move-result v2

    const-string v3, "action"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    iget-object v4, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mail/compose/g;->b(Landroid/text/Spanned;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-direct {p0, v0, v3, v2, v4}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/providers/ReplyFromAccount;Lcom/android/mail/providers/Message;ILandroid/text/Spanned;)Lcom/android/mail/providers/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    iget-wide v2, v2, Lcom/android/mail/providers/Message;->id:J

    iput-wide v2, v0, Lcom/android/mail/providers/Message;->id:J

    iget-object v2, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    iget-object v2, v2, Lcom/android/mail/providers/Message;->aBd:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/mail/providers/Message;->aBd:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mail/compose/g;->avR:Lcom/android/mail/providers/Message;

    iget-object v2, v2, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    :cond_4
    const-string v2, "extraMessage"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    if-eqz v2, :cond_8

    const-string v0, "in-reference-to-message"

    iget-object v2, p0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_5
    :goto_3
    const-string v0, "showCc"

    iget-object v2, p0, Lcom/android/mail/compose/g;->avv:Lcom/android/mail/compose/CcBccView;

    invoke-virtual {v2}, Lcom/android/mail/compose/CcBccView;->sl()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "showBcc"

    iget-object v2, p0, Lcom/android/mail/compose/g;->avv:Lcom/android/mail/compose/CcBccView;

    invoke-virtual {v2}, Lcom/android/mail/compose/CcBccView;->sm()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "respondedInline"

    iget-boolean v2, p0, Lcom/android/mail/compose/g;->awe:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "saveEnabled"

    iget-object v0, p0, Lcom/android/mail/compose/g;->avO:Landroid/view/MenuItem;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mail/compose/g;->avO:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "attachmentPreviews"

    iget-object v2, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v2}, Lcom/android/mail/compose/AttachmentsView;->sd()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "extra-values"

    iget-object v2, p0, Lcom/android/mail/compose/g;->awb:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "extraTextChanged"

    iget-boolean v2, p0, Lcom/android/mail/compose/g;->avM:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "extraSkipParsingBody"

    invoke-virtual {p0}, Lcom/android/mail/compose/g;->isChangingConfigurations()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    const-string v2, "account"

    iget-object v3, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    :cond_8
    iget-boolean v0, v0, Lcom/android/mail/providers/Message;->aBl:Z

    if-eqz v0, :cond_5

    const-string v0, "quotedText"

    iget-object v2, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    invoke-virtual {v2}, Lcom/android/mail/compose/QuotedTextView;->sT()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    goto :goto_4
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 948
    invoke-super {p0}, Landroid/support/v7/app/g;->onStart()V

    .line 950
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->e(Landroid/app/Activity;)V

    .line 951
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 955
    invoke-super {p0}, Landroid/support/v7/app/g;->onStop()V

    .line 957
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->f(Landroid/app/Activity;)V

    .line 958
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 3828
    return-void
.end method

.method protected p(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2703
    new-instance v0, Lcom/android/b/a/a;

    invoke-direct {v0, p0}, Lcom/android/b/a/a;-><init>(Landroid/content/Context;)V

    .line 2704
    invoke-virtual {v0, p1}, Lcom/android/b/a/a;->a(Ljava/util/Collection;)Z

    .line 2705
    return-void
.end method

.method public final sD()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3687
    iget-object v0, p0, Lcom/android/mail/compose/g;->avJ:Lcom/android/mail/compose/FromAddressSpinner;

    invoke-virtual {v0}, Lcom/android/mail/compose/FromAddressSpinner;->sP()Lcom/android/mail/providers/ReplyFromAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    .line 3688
    iget-object v0, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, p0, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    iget-object v1, v1, Lcom/android/mail/providers/ReplyFromAccount;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3690
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3691
    iget-object v0, p0, Lcom/android/mail/compose/g;->XI:Ljava/lang/String;

    .line 3692
    iget-object v1, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3693
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3694
    invoke-direct {p0, v0, v1}, Lcom/android/mail/compose/g;->A(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3695
    if-ltz v0, :cond_0

    .line 3696
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/android/mail/compose/g;->b(Ljava/lang/CharSequence;Z)V

    .line 3699
    :cond_0
    iget-object v0, p0, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    iget-object v0, v0, Lcom/android/mail/providers/ReplyFromAccount;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/g;->d(Lcom/android/mail/providers/Account;)V

    .line 3700
    iget-object v0, p0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3704
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sA()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3705
    invoke-direct {p0, v4}, Lcom/android/mail/compose/g;->aR(Z)V

    .line 3707
    :cond_1
    iput-boolean v4, p0, Lcom/android/mail/compose/g;->avN:Z

    .line 3708
    invoke-direct {p0}, Lcom/android/mail/compose/g;->su()V

    .line 3710
    invoke-virtual {p0}, Lcom/android/mail/compose/g;->invalidateOptionsMenu()V

    .line 3712
    :cond_2
    return-void
.end method

.method public final sg()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3798
    iput-boolean v0, p0, Lcom/android/mail/compose/g;->avL:Z

    .line 3801
    iget-object v1, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    iget-object v2, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v2}, Lcom/android/mail/compose/AttachmentsView;->sc()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/mail/compose/QuotedTextView;->aU(Z)V

    .line 3802
    invoke-direct {p0}, Lcom/android/mail/compose/g;->sy()V

    .line 3803
    return-void

    .line 3801
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final sh()V
    .locals 2

    .prologue
    .line 3807
    iget-object v1, p0, Lcom/android/mail/compose/g;->avE:Lcom/android/mail/compose/QuotedTextView;

    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/android/mail/compose/AttachmentsView;->sc()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/mail/compose/QuotedTextView;->aU(Z)V

    .line 3808
    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/android/mail/compose/AttachmentsView;->sf()V

    .line 3809
    return-void

    .line 3807
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sj()Z
    .locals 1

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/android/mail/compose/g;->avw:Lcom/android/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/android/mail/compose/AttachmentsView;->sc()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sk()Z
    .locals 1

    .prologue
    .line 3075
    iget-object v0, p0, Lcom/android/mail/compose/g;->avy:Lcom/android/mail/providers/Settings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/compose/g;->avy:Lcom/android/mail/providers/Settings;

    iget-boolean v0, v0, Lcom/android/mail/providers/Settings;->aBV:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected ss()Lcom/google/android/mail/common/html/parser/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/mail/common/html/parser/s",
            "<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1554
    new-instance v0, Lcom/android/mail/utils/y;

    invoke-direct {v0}, Lcom/android/mail/utils/y;-><init>()V

    return-object v0
.end method

.method public sv()Lcom/android/ex/chips/a;
    .locals 2

    .prologue
    .line 2341
    new-instance v0, Lcom/android/mail/compose/C;

    iget-object v1, p0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/compose/C;-><init>(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    return-object v0
.end method

.method public sw()Lcom/android/ex/chips/DropdownChipLayouter;
    .locals 1

    .prologue
    .line 2350
    const/4 v0, 0x0

    return-object v0
.end method
