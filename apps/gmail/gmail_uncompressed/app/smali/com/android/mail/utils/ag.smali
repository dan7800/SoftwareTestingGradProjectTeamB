.class public final Lcom/android/mail/utils/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final aQJ:Ljava/lang/Character;

.field private static aQK:Ljava/lang/String;

.field public static final aQL:Lcom/android/mail/f/a;

.field private static final aQM:Ljava/lang/Object;

.field private static aQN:Lcom/android/mail/utils/ah;

.field private static aQO:I

.field private static aQP:Ljava/lang/String;

.field private static aQQ:Ljava/lang/String;

.field private static aQR:Ljava/lang/String;

.field private static aQS:I

.field private static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 88
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/ag;->aQJ:Ljava/lang/Character;

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mail/utils/ag;->aQK:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/ag;->mW:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/android/mail/f/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mail/f/a;-><init>(B)V

    const-string v1, "ConvLoadTimer"

    invoke-virtual {v0, v1}, Lcom/android/mail/f/a;->bA(Ljava/lang/String;)Lcom/android/mail/f/a;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/ag;->aQL:Lcom/android/mail/f/a;

    .line 248
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mail/utils/ag;->aQM:Ljava/lang/Object;

    .line 250
    sput v2, Lcom/android/mail/utils/ag;->aQO:I

    .line 254
    sput v2, Lcom/android/mail/utils/ag;->aQS:I

    return-void
.end method

.method public static Be()Z
    .locals 2

    .prologue
    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Bf()Z
    .locals 2

    .prologue
    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Bg()Z
    .locals 2

    .prologue
    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Bh()Z
    .locals 2

    .prologue
    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Bi()V
    .locals 2

    .prologue
    .line 1029
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 1030
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1032
    :cond_0
    return-void
.end method

.method static synthetic Bj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/mail/utils/ag;->aQM:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic Bk()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, -0x1

    sput v0, Lcom/android/mail/utils/ag;->aQO:I

    return v0
.end method

.method static synthetic Bl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mail/utils/ag;->aQP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Bm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mail/utils/ag;->aQQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Bn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mail/utils/ag;->aQR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Bo()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, -0x1

    sput v0, Lcom/android/mail/utils/ag;->aQS:I

    return v0
.end method

.method public static C(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 762
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 763
    if-nez v0, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-object p0

    .line 764
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 765
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method public static D(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 816
    if-eqz p0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 386
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 387
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 388
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    .line 393
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 394
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    const/4 v3, -0x1

    invoke-static {v2, v0, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 397
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 398
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 390
    goto :goto_0
.end method

.method public static a(J[J)J
    .locals 6

    .prologue
    .line 1046
    array-length v3, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-wide v0, p2, v2

    .line 1047
    cmp-long v4, p0, v0

    if-gez v4, :cond_0

    .line 1051
    :goto_1
    return-wide v0

    .line 1046
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1051
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 495
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 496
    :cond_0
    sget-object v0, Lcom/android/mail/utils/ag;->mW:Ljava/lang/String;

    const-string v1, "Utils.createViewFolderIntent(%s,%s): Bad input"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 498
    const/4 v0, 0x0

    .line 506
    :goto_0
    return-object v0

    .line 500
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    const v1, 0x1000c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 503
    invoke-static {p0, p1}, Lcom/android/mail/utils/ag;->c(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p2, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string v1, "account"

    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->ud()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v1, "folderUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/Conversation;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 472
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    const v1, 0x1000c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 475
    iget-object v1, p1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/mail/utils/ag;->c(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "folderUri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 479
    iget-object v2, p3, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string v1, "account"

    invoke-virtual {p3}, Lcom/android/mail/providers/Account;->ud()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v1, "folderUri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 482
    const-string v1, "conversationUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 483
    return-object v0
.end method

.method public static a(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 775
    invoke-static {p1}, Lcom/android/mail/utils/ag;->C(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Lcom/android/mail/utils/ag;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spanned;
    .locals 5

    .prologue
    .line 1074
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1075
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1076
    if-ltz v0, :cond_0

    .line 1077
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v2, p0, p3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1083
    :cond_0
    return-object v1
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/emailcommon/mail/Address;"
        }
    .end annotation

    .prologue
    .line 1056
    monitor-enter p0

    .line 1057
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Address;

    .line 1058
    if-nez v0, :cond_0

    .line 1059
    invoke-static {p1}, Lcom/android/emailcommon/mail/Address;->ah(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1060
    if-eqz v0, :cond_0

    .line 1061
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    return-object v0

    .line 1064
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlParser;Lcom/google/android/mail/common/html/parser/v;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const-string v0, ""

    .line 351
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/mail/utils/ag;->b(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlParser;Lcom/google/android/mail/common/html/parser/v;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->Wm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/android/mail/providers/Account;)V
    .locals 4

    .prologue
    .line 636
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 637
    iget-object v0, p1, Lcom/android/mail/providers/Account;->ayq:Landroid/net/Uri;

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "reporting_problem"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/android/mail/utils/ag;->g(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "screen_shot"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-static {p0, v0, v1}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 639
    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 583
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    :cond_0
    sget-object v0, Lcom/android/mail/utils/ag;->mW:Ljava/lang/String;

    const-string v1, "invalid url in Utils.openUrl(): %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 596
    :goto_0
    return-void

    .line 587
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 589
    if-eqz p2, :cond_2

    .line 590
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 592
    :cond_2
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 595
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/database/Cursor;ZZ)V
    .locals 2

    .prologue
    .line 867
    new-instance v0, Lcom/android/mail/utils/ai;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mail/utils/ai;-><init>(Landroid/database/Cursor;ZZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mail/utils/ai;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 868
    return-void
.end method

.method public static a(Landroid/view/Menu;IZ)V
    .locals 1

    .prologue
    .line 787
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/mail/utils/ag;->a(Landroid/view/MenuItem;Z)V

    .line 788
    return-void
.end method

.method public static a(Landroid/view/MenuItem;Z)V
    .locals 0

    .prologue
    .line 795
    if-nez p0, :cond_0

    .line 800
    :goto_0
    return-void

    .line 798
    :cond_0
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 799
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 171
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 172
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 174
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 183
    invoke-static {p1}, Lcom/android/mail/utils/ag;->aG(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901e6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private static a(Landroid/database/Cursor;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 834
    invoke-interface {p0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 835
    const-string v1, "failed"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 838
    const-string v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static aF(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-static {}, Lcom/android/mail/utils/ag;->Bg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 157
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 157
    goto :goto_0

    :cond_1
    move v0, v1

    .line 159
    goto :goto_0
.end method

.method private static aG(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 194
    sget-object v0, Lcom/android/mail/utils/ag;->aQK:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 196
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/ag;->aQK:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/mail/utils/ag;->aQK:Ljava/lang/String;

    return-object v0

    .line 200
    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/mail/utils/ag;->mW:Ljava/lang/String;

    const-string v1, "Error finding package %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static aG(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 925
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 927
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 928
    invoke-virtual {p0}, Landroid/view/View;->buildLayer()V

    .line 930
    :cond_0
    return-void
.end method

.method private static aH(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 274
    sget-object v1, Lcom/android/mail/utils/ag;->aQM:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    sget-object v0, Lcom/android/mail/utils/ag;->aQP:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 277
    const v2, 0x7f0b001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/mail/utils/ag;->aQO:I

    .line 278
    const v2, 0x7f090133

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/utils/ag;->aQP:Ljava/lang/String;

    .line 279
    const v2, 0x7f090135

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/utils/ag;->aQQ:Ljava/lang/String;

    .line 280
    const v2, 0x7f090134

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/utils/ag;->aQR:Ljava/lang/String;

    .line 281
    const v2, 0x7f0a0089

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/mail/utils/ag;->aQS:I

    .line 283
    sget-object v0, Lcom/android/mail/utils/ag;->aQN:Lcom/android/mail/utils/ah;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Lcom/android/mail/utils/ah;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/mail/utils/ah;-><init>(B)V

    sput-object v0, Lcom/android/mail/utils/ag;->aQN:Lcom/android/mail/utils/ah;

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/android/mail/utils/ag;->aQN:Lcom/android/mail/utils/ah;

    invoke-virtual {v0, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 289
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static aI(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 293
    sget-object v1, Lcom/android/mail/utils/ag;->aQM:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/android/mail/utils/ag;->aH(Landroid/content/Context;)V

    .line 295
    sget v0, Lcom/android/mail/utils/ag;->aQO:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static aJ(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    sget-object v1, Lcom/android/mail/utils/ag;->aQM:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_0
    invoke-static {p0}, Lcom/android/mail/utils/ag;->aH(Landroid/content/Context;)V

    .line 302
    sget-object v0, Lcom/android/mail/utils/ag;->aQP:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static aK(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    sget-object v1, Lcom/android/mail/utils/ag;->aQM:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_0
    invoke-static {p0}, Lcom/android/mail/utils/ag;->aH(Landroid/content/Context;)V

    .line 309
    sget-object v0, Lcom/android/mail/utils/ag;->aQQ:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static aL(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    sget-object v1, Lcom/android/mail/utils/ag;->aQM:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_0
    invoke-static {p0}, Lcom/android/mail/utils/ag;->aH(Landroid/content/Context;)V

    .line 316
    sget-object v0, Lcom/android/mail/utils/ag;->aQR:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static aM(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 321
    sget-object v1, Lcom/android/mail/utils/ag;->aQM:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_0
    invoke-static {p0}, Lcom/android/mail/utils/ag;->aH(Landroid/content/Context;)V

    .line 323
    sget v0, Lcom/android/mail/utils/ag;->aQS:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static aN(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 1120
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1122
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1123
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlParser;Lcom/google/android/mail/common/html/parser/v;)Lcom/google/android/mail/common/html/parser/HtmlTree;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p1, p0}, Lcom/google/android/mail/common/html/parser/HtmlParser;->gN(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument;

    move-result-object v0

    .line 367
    invoke-virtual {v0, p2}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/m;)V

    .line 369
    invoke-virtual {p2}, Lcom/google/android/mail/common/html/parser/v;->Wv()Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/android/mail/providers/Account;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 537
    iget-object v0, p1, Lcom/android/mail/providers/Account;->ayp:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/mail/providers/Account;->ayp:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    sget-object v0, Lcom/android/mail/utils/ag;->mW:Ljava/lang/String;

    const-string v1, "unable to show help for account: %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 544
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 537
    goto :goto_0

    .line 543
    :cond_1
    iget-object v2, p1, Lcom/android/mail/providers/Account;->ayp:Landroid/net/Uri;

    if-nez v2, :cond_2

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/mail/utils/ag;->mW:Ljava/lang/String;

    const-string v1, "unable to show help for help URI: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {p0, v2, p2}, Lcom/android/mail/utils/s;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0, v0, v1}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mail/ui/cd;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "help.url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Z
    .locals 2

    .prologue
    .line 967
    invoke-static {p1}, Lcom/android/mail/utils/ag;->C(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 968
    const-string v1, "mailto"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    invoke-static {p0, p2, p1}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/net/Uri;)V

    .line 970
    const/4 v0, 0x1

    .line 972
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 331
    const v0, 0x7f0e0007

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/database/Cursor;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 77
    invoke-static {p0, p1, p2}, Lcom/android/mail/utils/ag;->a(Landroid/database/Cursor;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static bO(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 810
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    .line 811
    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 812
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 952
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "appVersion"

    invoke-static {p0}, Lcom/android/mail/utils/ag;->aG(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/database/Cursor;I)Z
    .locals 2

    .prologue
    .line 849
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 850
    const-string v1, "uiPositionChange"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 853
    const-string v1, "uiPositionChange"

    invoke-static {p0, v0, v1}, Lcom/android/mail/utils/ag;->a(Landroid/database/Cursor;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static cF(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x7

    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 226
    if-ge v1, v0, :cond_0

    .line 242
    :goto_0
    return-object p0

    .line 229
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 231
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 232
    const-string v0, "\u2026"

    .line 233
    if-ltz v4, :cond_1

    .line 235
    sub-int/2addr v1, v4

    const/4 v5, 0x5

    if-gt v1, v5, :cond_1

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v3, v1

    .line 240
    if-gez v1, :cond_2

    move v1, v2

    .line 242
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static cG(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const-string v0, ""

    .line 343
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlParser;

    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/HtmlParser;-><init>()V

    new-instance v1, Lcom/google/android/mail/common/html/parser/v;

    invoke-direct {v1}, Lcom/google/android/mail/common/html/parser/v;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/android/mail/utils/ag;->b(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlParser;Lcom/google/android/mail/common/html/parser/v;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->Wm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static cH(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlTree;
    .locals 2

    .prologue
    .line 358
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlParser;

    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/HtmlParser;-><init>()V

    new-instance v1, Lcom/google/android/mail/common/html/parser/v;

    invoke-direct {v1}, Lcom/google/android/mail/common/html/parser/v;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/android/mail/utils/ag;->b(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlParser;Lcom/google/android/mail/common/html/parser/v;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v0

    return-object v0
.end method

.method public static cI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 692
    const/4 v0, 0x0

    .line 693
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 695
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    .line 696
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 698
    :cond_0
    return-object v0

    .line 693
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static cJ(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1017
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 1018
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1020
    :cond_0
    return-void
.end method

.method public static cK(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mail/providers/Folder;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 985
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "allowHiddenFolders"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 991
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 994
    if-nez v1, :cond_0

    .line 1005
    :goto_0
    return-object v3

    .line 999
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    new-instance v3, Lcom/android/mail/providers/Folder;

    invoke-direct {v3, v1}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1002
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static d(Landroid/app/Fragment;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 820
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 821
    const-string v1, ""

    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 822
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ds(I)I
    .locals 1

    .prologue
    .line 779
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static e(Landroid/content/Context;Lcom/android/mail/providers/Account;)V
    .locals 3

    .prologue
    .line 602
    if-nez p1, :cond_0

    .line 603
    sget-object v0, Lcom/android/mail/utils/ag;->mW:Ljava/lang/String;

    const-string v1, "Invalid attempt to show setting screen with null account"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 612
    :goto_0
    return-void

    .line 606
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p1, Lcom/android/mail/providers/Account;->ayo:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 608
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 611
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;Lcom/android/mail/providers/Account;)V
    .locals 3

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 619
    sget-object v0, Lcom/android/mail/utils/ag;->mW:Ljava/lang/String;

    const-string v1, "Invalid attempt to show setting screen with null account"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 630
    :goto_0
    return-void

    .line 622
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p1, Lcom/android/mail/providers/Account;->ayo:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/mail/utils/ag;->c(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 625
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string v1, "extra_account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 627
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static g(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    const-wide v8, 0x4082c00000000000L    # 600.0

    const/4 v0, 0x0

    .line 657
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 658
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 659
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 660
    :goto_1
    if-eqz v1, :cond_0

    .line 661
    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 662
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 664
    if-eqz v1, :cond_0

    .line 666
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 667
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    .line 668
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    .line 669
    div-double v6, v8, v4

    .line 673
    div-double/2addr v8, v2

    .line 674
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 675
    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 676
    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 677
    const/4 v3, 0x1

    invoke-static {v1, v4, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 683
    :cond_0
    :goto_2
    return-object v0

    :cond_1
    move-object v1, v0

    .line 658
    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 659
    goto :goto_1

    .line 678
    :catch_0
    move-exception v1

    .line 679
    sget-object v2, Lcom/android/mail/utils/ag;->mW:Ljava/lang/String;

    const-string v3, "OOME when attempting to scale screenshot"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public static j(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 409
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "\"\""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 418
    invoke-static {p0}, Lcom/android/mail/utils/ag;->aI(Landroid/content/Context;)I

    move-result v0

    .line 419
    if-le p1, v0, :cond_0

    .line 420
    invoke-static {p0}, Lcom/android/mail/utils/ag;->aJ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 422
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 429
    :goto_0
    return-object v0

    .line 423
    :cond_0
    if-gtz p1, :cond_1

    .line 424
    const-string v0, ""

    goto :goto_0

    .line 427
    :cond_1
    const-string v0, "%d"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 437
    invoke-static {p0}, Lcom/android/mail/utils/ag;->aI(Landroid/content/Context;)I

    move-result v0

    .line 438
    if-le p1, v0, :cond_0

    .line 439
    invoke-static {p0}, Lcom/android/mail/utils/ag;->aL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 441
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 448
    :goto_0
    return-object v0

    .line 442
    :cond_0
    if-gtz p1, :cond_1

    .line 443
    const-string v0, ""

    goto :goto_0

    .line 446
    :cond_1
    invoke-static {p0}, Lcom/android/mail/utils/ag;->aK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 456
    and-int/lit8 v1, p1, 0xf

    .line 457
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 458
    const-string v0, ""

    .line 460
    :goto_0
    return-object v0

    :cond_0
    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 724
    if-nez p0, :cond_1

    .line 725
    const/4 v0, 0x0

    .line 734
    :cond_0
    :goto_0
    return-object v0

    .line 728
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 730
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 731
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 732
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static t(Lcom/android/mail/providers/Folder;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 939
    if-eqz p0, :cond_0

    .line 940
    const/high16 v1, 0x80000

    invoke-virtual {p0, v1}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    :cond_0
    :goto_0
    return v0

    .line 942
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/providers/Folder;->vc()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    iget v0, p0, Lcom/android/mail/providers/Folder;->aAg:I

    goto :goto_0

    .line 945
    :cond_2
    iget v0, p0, Lcom/android/mail/providers/Folder;->aAf:I

    goto :goto_0
.end method

.method public static x(Lcom/android/mail/providers/Account;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 516
    if-nez p0, :cond_0

    .line 517
    sget-object v0, Lcom/android/mail/utils/ag;->mW:Ljava/lang/String;

    const-string v1, "Utils.createViewInboxIntent(%s): Bad input"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 518
    const/4 v0, 0x0

    .line 525
    :goto_0
    return-object v0

    .line 520
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    const v1, 0x1000c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 523
    iget-object v1, p0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v1, v1, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const-string v1, "account"

    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->ud()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
