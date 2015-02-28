.class public final Lcom/android/mail/browse/WebViewContextMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private final auG:Lcom/android/mail/browse/ar;

.field private final auH:Z

.field private final auI:Z

.field private auJ:Lcom/android/mail/browse/bh;

.field private final pe:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/mail/browse/ar;)V
    .locals 7

    .prologue
    const/high16 v6, 0x10000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/mail/browse/WebViewContextMenu;->pe:Landroid/app/Activity;

    .line 98
    iput-object p2, p0, Lcom/android/mail/browse/WebViewContextMenu;->auG:Lcom/android/mail/browse/ar;

    .line 103
    iget-object v0, p0, Lcom/android/mail/browse/WebViewContextMenu;->pe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    const-string v5, "tel:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/browse/WebViewContextMenu;->auH:Z

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/mail/browse/WebViewContextMenu;->auI:Z

    .line 110
    return-void

    :cond_0
    move v0, v2

    .line 104
    goto :goto_0

    :cond_1
    move v1, v2

    .line 107
    goto :goto_1
.end method

.method private static a(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I
    .locals 2

    .prologue
    .line 428
    sget-object v0, Lcom/android/mail/browse/bf;->auK:[I

    invoke-virtual {p0}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 452
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected MenuType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :pswitch_0
    const v0, 0x7f0d02b5

    .line 450
    :goto_0
    return v0

    .line 432
    :pswitch_1
    const v0, 0x7f0d02b6

    goto :goto_0

    .line 434
    :pswitch_2
    const v0, 0x7f0d02b7

    goto :goto_0

    .line 436
    :pswitch_3
    const v0, 0x7f0d02ab

    goto :goto_0

    .line 438
    :pswitch_4
    const v0, 0x7f0d02ac

    goto :goto_0

    .line 440
    :pswitch_5
    const v0, 0x7f0d02ad

    goto :goto_0

    .line 442
    :pswitch_6
    const v0, 0x7f0d02ae

    goto :goto_0

    .line 444
    :pswitch_7
    const v0, 0x7f0d02b0

    goto :goto_0

    .line 446
    :pswitch_8
    const v0, 0x7f0d0291

    goto :goto_0

    .line 448
    :pswitch_9
    const v0, 0x7f0d02b2

    goto :goto_0

    .line 450
    :pswitch_a
    const v0, 0x7f0d02b3

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/mail/browse/WebViewContextMenu;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mail/browse/WebViewContextMenu;->pe:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/view/ContextMenu;)V
    .locals 5

    .prologue
    .line 369
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auP:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-static {v0}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mail/browse/WebViewContextMenu;->pe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 376
    invoke-interface {p2, p1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 378
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auO:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-static {v0}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/mail/browse/bi;

    const-string v2, "copy_link"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/mail/browse/bi;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 381
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auN:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-static {v0}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 383
    new-instance v1, Lcom/android/mail/browse/bj;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "open_link"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/mail/browse/bj;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 386
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auP:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-static {v0}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/mail/browse/bk;

    const-string v2, "share_link"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/mail/browse/bk;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 388
    return-void

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I
    .locals 2

    .prologue
    .line 462
    sget-object v0, Lcom/android/mail/browse/bf;->auK:[I

    invoke-virtual {p0}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 466
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected MenuType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :pswitch_0
    const v0, 0x7f0900e2

    return v0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/lang/String;Landroid/view/ContextMenu;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const v4, 0x7f0d02b8

    .line 398
    iget-object v0, p0, Lcom/android/mail/browse/WebViewContextMenu;->auJ:Lcom/android/mail/browse/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/WebViewContextMenu;->auJ:Lcom/android/mail/browse/bh;

    invoke-interface {v0, p1}, Lcom/android/mail/browse/bh;->bm(Ljava/lang/String;)Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    .line 400
    :goto_0
    if-nez v0, :cond_1

    .line 401
    invoke-interface {p2, v4, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 415
    :goto_1
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/android/mail/browse/WebViewContextMenu;->auG:Lcom/android/mail/browse/ar;

    iget-object v2, p0, Lcom/android/mail/browse/WebViewContextMenu;->pe:Landroid/app/Activity;

    invoke-interface {v1, v2, p1, v0}, Lcom/android/mail/browse/ar;->a(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/browse/ConversationMessage;)Landroid/content/Intent;

    move-result-object v0

    .line 406
    if-nez v0, :cond_2

    .line 407
    invoke-interface {p2, v4, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    goto :goto_1

    .line 411
    :cond_2
    const v1, 0x7f0d02b9

    invoke-interface {p2, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 412
    new-instance v2, Lcom/android/mail/browse/bj;

    const-string v3, "view_image"

    invoke-direct {v2, p0, v0, v3}, Lcom/android/mail/browse/bj;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 414
    const/4 v0, 0x1

    invoke-interface {p2, v4, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/bh;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/mail/browse/WebViewContextMenu;->auJ:Lcom/android/mail/browse/bh;

    .line 114
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 210
    check-cast p2, Landroid/webkit/WebView;

    .line 211
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v2

    .line 212
    if-nez v2, :cond_0

    .line 362
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v3

    .line 217
    sparse-switch v3, :sswitch_data_0

    .line 233
    iget-object v0, p0, Lcom/android/mail/browse/WebViewContextMenu;->pe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 236
    const v7, 0x7f100016

    invoke-virtual {v0, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move v0, v6

    .line 240
    :goto_1
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 241
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 242
    invoke-interface {v7, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    :sswitch_0
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "web_context_menu"

    const-string v2, "long_press"

    const-string v3, "unknown"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 223
    :sswitch_1
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "web_context_menu"

    const-string v2, "long_press"

    const-string v3, "edit_text"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v7

    .line 248
    const v2, 0x7f0d02aa

    const/4 v0, 0x2

    if-ne v3, v0, :cond_5

    move v0, v1

    :goto_2
    invoke-interface {p1, v2, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 249
    const v2, 0x7f0d02af

    const/4 v0, 0x4

    if-ne v3, v0, :cond_6

    move v0, v1

    :goto_3
    invoke-interface {p1, v2, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 250
    const v2, 0x7f0d02b1

    const/4 v0, 0x3

    if-ne v3, v0, :cond_7

    move v0, v1

    :goto_4
    invoke-interface {p1, v2, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 251
    const v2, 0x7f0d02b4

    const/4 v0, 0x7

    if-eq v3, v0, :cond_2

    if-ne v3, v8, :cond_8

    :cond_2
    move v0, v1

    :goto_5
    invoke-interface {p1, v2, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 253
    const v0, 0x7f0d02b8

    const/4 v2, 0x5

    if-eq v3, v2, :cond_3

    if-ne v3, v8, :cond_9

    :cond_3
    :goto_6
    invoke-interface {p1, v0, v1}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 257
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 259
    :pswitch_1
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "web_context_menu"

    const-string v2, "long_press"

    const-string v3, "phone"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 263
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 272
    const-string v1, " "

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 279
    :cond_4
    :goto_7
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 281
    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auQ:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-static {v1}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 284
    iget-boolean v2, p0, Lcom/android/mail/browse/WebViewContextMenu;->auH:Z

    if-eqz v2, :cond_a

    .line 285
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 287
    new-instance v3, Lcom/android/mail/browse/bj;

    const-string v4, "dial"

    invoke-direct {v3, p0, v2, v4}, Lcom/android/mail/browse/bj;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 293
    :goto_8
    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auR:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-static {v1}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 295
    iget-boolean v2, p0, Lcom/android/mail/browse/WebViewContextMenu;->auI:Z

    if-eqz v2, :cond_b

    .line 296
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "smsto:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 298
    new-instance v3, Lcom/android/mail/browse/bj;

    const-string v4, "sms"

    invoke-direct {v3, p0, v2, v4}, Lcom/android/mail/browse/bj;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 304
    :goto_9
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    const-string v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v2, "phone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auS:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-static {v0}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 310
    new-instance v2, Lcom/android/mail/browse/bj;

    const-string v3, "add_contact"

    invoke-direct {v2, p0, v1, v3}, Lcom/android/mail/browse/bj;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 314
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auT:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-static {v0}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/mail/browse/bi;

    const-string v2, "copy_phone"

    invoke-direct {v1, p0, v7, v2}, Lcom/android/mail/browse/bi;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_5
    move v0, v6

    .line 248
    goto/16 :goto_2

    :cond_6
    move v0, v6

    .line 249
    goto/16 :goto_3

    :cond_7
    move v0, v6

    .line 250
    goto/16 :goto_4

    :cond_8
    move v0, v6

    .line 251
    goto/16 :goto_5

    :cond_9
    move v1, v6

    .line 253
    goto/16 :goto_6

    .line 276
    :catch_0
    move-exception v0

    move-object v0, v7

    goto/16 :goto_7

    .line 289
    :cond_a
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_8

    .line 300
    :cond_b
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9

    .line 318
    :pswitch_2
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "web_context_menu"

    const-string v2, "long_press"

    const-string v3, "email"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 320
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 321
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mailto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 323
    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-static {v1}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/mail/browse/bj;

    const-string v3, "send_email"

    invoke-direct {v2, p0, v0, v3}, Lcom/android/mail/browse/bj;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 325
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auV:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-static {v0}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/mail/browse/bi;

    const-string v2, "copy_email"

    invoke-direct {v1, p0, v7, v2}, Lcom/android/mail/browse/bi;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 329
    :pswitch_3
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "web_context_menu"

    const-string v2, "long_press"

    const-string v3, "geo"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 331
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 332
    const-string v0, ""

    .line 334
    :try_start_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 338
    :goto_a
    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auW:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-static {v1}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 341
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "geo:0,0?q="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 343
    new-instance v0, Lcom/android/mail/browse/bj;

    const-string v3, "view_map"

    invoke-direct {v0, p0, v2, v3}, Lcom/android/mail/browse/bj;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 344
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auX:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-static {v0}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/mail/browse/bi;

    const-string v2, "copy_geo"

    invoke-direct {v1, p0, v7, v2}, Lcom/android/mail/browse/bi;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 348
    :pswitch_4
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "web_context_menu"

    const-string v2, "long_press"

    const-string v3, "src_anchor"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 350
    invoke-direct {p0, v7, p1}, Lcom/android/mail/browse/WebViewContextMenu;->a(Ljava/lang/String;Landroid/view/ContextMenu;)V

    goto/16 :goto_0

    .line 353
    :pswitch_5
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "web_context_menu"

    const-string v2, "long_press"

    const-string v3, "src_image_anchor"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 355
    invoke-direct {p0, v7, p1}, Lcom/android/mail/browse/WebViewContextMenu;->a(Ljava/lang/String;Landroid/view/ContextMenu;)V

    .line 356
    invoke-direct {p0, v7, p1}, Lcom/android/mail/browse/WebViewContextMenu;->b(Ljava/lang/String;Landroid/view/ContextMenu;)V

    goto/16 :goto_0

    .line 359
    :pswitch_6
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "web_context_menu"

    const-string v2, "long_press"

    const-string v3, "image"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 361
    invoke-direct {p0, v7, p1}, Lcom/android/mail/browse/WebViewContextMenu;->b(Ljava/lang/String;Landroid/view/ContextMenu;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_a

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch

    .line 257
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/mail/browse/WebViewContextMenu;->pe:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
