.class public final Lcom/android/mail/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/RemoteViewsService$RemoteViewsFactory;"
    }
.end annotation


# instance fields
.field private final Nc:Lcom/android/mail/providers/Account;

.field private final aIX:I

.field private final aKl:I

.field private final aRi:I

.field private final aRj:Landroid/net/Uri;

.field private final aRk:Landroid/net/Uri;

.field private final aRl:Ljava/lang/String;

.field private final aRm:Lcom/android/mail/widget/d;

.field private aRn:Landroid/content/CursorLoader;

.field private aRo:Landroid/database/Cursor;

.field private aRp:Landroid/content/CursorLoader;

.field private aRq:Landroid/content/CursorLoader;

.field private aRr:Lcom/android/mail/widget/i;

.field private aRs:I

.field private aRt:Z

.field private aRu:Z

.field private final aRv:Lcom/android/mail/widget/g;

.field private aRw:Ljava/lang/String;

.field private aRx:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/android/mail/widget/g;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-boolean v2, p0, Lcom/android/mail/widget/h;->aRu:Z

    .line 231
    iput-object p1, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    .line 232
    const-string v0, "appWidgetId"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/widget/h;->aKl:I

    .line 234
    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Account;->bH(Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    .line 235
    const-string v0, "folder-type"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/widget/h;->aIX:I

    .line 236
    const-string v0, "folder-capabilities"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/widget/h;->aRi:I

    .line 237
    const-string v0, "folder-display-name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/widget/h;->aRl:Ljava/lang/String;

    .line 239
    const-string v0, "folder-uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 240
    const-string v1, "folder-conversation-list-uri"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 242
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 243
    iput-object v0, p0, Lcom/android/mail/widget/h;->aRj:Landroid/net/Uri;

    .line 244
    iput-object v1, p0, Lcom/android/mail/widget/h;->aRk:Landroid/net/Uri;

    .line 263
    :goto_0
    new-instance v0, Lcom/android/mail/widget/d;

    invoke-direct {v0, p1}, Lcom/android/mail/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mail/widget/h;->aRm:Lcom/android/mail/widget/d;

    .line 265
    iput-object p3, p0, Lcom/android/mail/widget/h;->aRv:Lcom/android/mail/widget/g;

    .line 266
    return-void

    .line 247
    :cond_0
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/android/mail/providers/Folder;->bN(Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_1

    .line 251
    iget-object v1, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v1, v1, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mail/widget/h;->aRj:Landroid/net/Uri;

    .line 252
    iget-object v0, v0, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/widget/h;->aRk:Landroid/net/Uri;

    goto :goto_0

    .line 254
    :cond_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/widget/h;->aRj:Landroid/net/Uri;

    .line 255
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/widget/h;->aRk:Landroid/net/Uri;

    .line 257
    iget-object v0, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/mail/widget/h;->aKl:I

    iget-object v2, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    iget v3, p0, Lcom/android/mail/widget/h;->aIX:I

    iget v4, p0, Lcom/android/mail/widget/h;->aRi:I

    iget-object v5, p0, Lcom/android/mail/widget/h;->aRj:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/mail/widget/h;->aRk:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mail/widget/h;->aRl:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/android/mail/widget/b;->a(Landroid/content/Context;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private Bp()I
    .locals 3

    .prologue
    .line 383
    invoke-static {}, Lcom/android/mail/widget/g;->Bj()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRo:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/widget/h;->aRo:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 386
    :goto_0
    const/16 v2, 0x19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 384
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private Bq()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    .line 492
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400d0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 493
    const v1, 0x7f0d01c5

    iget-object v2, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    const v3, 0x7f090136

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 495
    const v1, 0x7f0d0269

    iget-object v2, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mail/widget/h;->aRj:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 497
    return-object v0
.end method

.method static synthetic a(Lcom/android/mail/widget/h;)Landroid/content/CursorLoader;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRp:Landroid/content/CursorLoader;

    return-object v0
.end method

.method private static a([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 481
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 482
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 483
    aget-object v1, p0, v3

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 485
    :cond_0
    return-object v0
.end method

.method private k(Ljava/util/List;)Landroid/text/SpannableStringBuilder;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/text/SpannableString;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 446
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 447
    const/4 v3, 0x0

    .line 452
    iget v0, p0, Lcom/android/mail/widget/h;->aRi:I

    invoke-static {v0}, Lcom/android/mail/providers/Folder;->cB(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 453
    invoke-static {}, Lcom/android/mail/browse/aR;->rV()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 454
    const/4 v0, 0x1

    .line 457
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v3

    move v3, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    .line 458
    if-nez v0, :cond_0

    .line 459
    invoke-static {}, Lcom/android/mail/widget/g;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null sender while iterating over styledSenders"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v7}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 462
    :cond_0
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v0, v2, v1, v7}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    .line 463
    sget-object v7, Lcom/android/mail/browse/aR;->auf:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mail/widget/h;->aRx:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/mail/widget/h;->aRx:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mail/widget/h;->a([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    move-object v9, v1

    move v1, v3

    move-object v3, v0

    move-object v0, v9

    .line 475
    :goto_2
    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v4, v3

    move v3, v1

    .line 476
    goto :goto_1

    .line 466
    :cond_1
    if-nez v3, :cond_3

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    if-eqz v4, :cond_2

    sget-object v7, Lcom/android/mail/browse/aR;->auf:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 470
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mail/widget/h;->aRw:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mail/widget/h;->a([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    move-object v9, v1

    move v1, v3

    move-object v3, v0

    move-object v0, v9

    goto :goto_2

    :cond_3
    move v1, v2

    move-object v3, v0

    .line 473
    goto :goto_2

    .line 477
    :cond_4
    return-object v5

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method private static n(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 602
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 367
    invoke-static {}, Lcom/android/mail/widget/g;->Bj()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 368
    :try_start_0
    invoke-direct {p0}, Lcom/android/mail/widget/h;->Bp()I

    move-result v4

    .line 369
    iget-object v2, p0, Lcom/android/mail/widget/h;->aRo:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mail/widget/h;->aRo:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 371
    :goto_0
    if-lt v4, v2, :cond_0

    iget v2, p0, Lcom/android/mail/widget/h;->aRs:I

    if-ge v4, v2, :cond_2

    :cond_0
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/android/mail/widget/h;->aRt:Z

    .line 372
    iget-boolean v2, p0, Lcom/android/mail/widget/h;->aRt:Z

    if-eqz v2, :cond_3

    :goto_2
    add-int/2addr v0, v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_1
    move v2, v1

    .line 369
    goto :goto_0

    :cond_2
    move v2, v1

    .line 371
    goto :goto_1

    :cond_3
    move v0, v1

    .line 372
    goto :goto_2

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 515
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 502
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400d0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 503
    const v1, 0x7f0d01c5

    iget-object v2, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    const v3, 0x7f090137

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 505
    return-object v0
.end method

.method public final getViewAt(I)Landroid/widget/RemoteViews;
    .locals 11

    .prologue
    .line 395
    invoke-static {}, Lcom/android/mail/widget/g;->Bj()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRo:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/widget/h;->aRo:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/widget/h;->aRt:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/mail/widget/h;->Bp()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/widget/h;->Bq()Landroid/widget/RemoteViews;

    move-result-object v0

    monitor-exit v9

    .line 441
    :goto_0
    return-object v0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRo:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 406
    invoke-static {}, Lcom/android/mail/widget/g;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to move to position %d in the cursor."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 407
    invoke-direct {p0}, Lcom/android/mail/widget/h;->Bq()Landroid/widget/RemoteViews;

    move-result-object v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 410
    :cond_2
    :try_start_1
    new-instance v10, Lcom/android/mail/providers/Conversation;

    iget-object v0, p0, Lcom/android/mail/widget/h;->aRo:Landroid/database/Cursor;

    invoke-direct {v10, v0}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    .line 413
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 414
    iget-object v0, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget-object v1, v10, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    const-string v2, ""

    const/16 v3, 0x19

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    iget v8, p0, Lcom/android/mail/widget/h;->aRi:I

    invoke-static {v8}, Lcom/android/mail/providers/Folder;->cB(I)Z

    move-result v8

    invoke-static/range {v0 .. v8}, Lcom/android/mail/browse/aR;->a(Landroid/content/Context;Lcom/android/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/mail/browse/S;Lcom/android/mail/providers/Account;Z)V

    .line 417
    invoke-direct {p0, v4}, Lcom/android/mail/widget/h;->k(Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 420
    iget-object v0, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget-wide v2, v10, Lcom/android/mail/providers/Conversation;->ayW:J

    invoke-static {v0, v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 424
    iget v0, p0, Lcom/android/mail/widget/h;->aIX:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 425
    const/4 v5, 0x2

    .line 431
    :goto_1
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRm:Lcom/android/mail/widget/d;

    iget-object v1, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/mail/utils/p;

    iget-object v3, p0, Lcom/android/mail/widget/h;->aRj:Landroid/net/Uri;

    invoke-direct {v4, v3}, Lcom/android/mail/utils/p;-><init>(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget-object v7, v10, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/android/mail/browse/ConversationItemView;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/mail/widget/d;->a(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/p;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 437
    const v1, 0x7f0d025d

    iget-object v2, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mail/widget/h;->aRj:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v2, v10, v3, v4}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;Lcom/android/mail/providers/Conversation;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 441
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 427
    :cond_3
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x2

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 271
    iget-object v0, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/mail/widget/h;->aKl:I

    iget-object v2, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    iget-object v3, p0, Lcom/android/mail/widget/h;->aRj:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/widget/g;->a(Landroid/content/Context;ILcom/android/mail/providers/Account;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRv:Lcom/android/mail/widget/g;

    iget-object v1, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/mail/widget/h;->aKl:I

    iget-object v3, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mail/widget/g;->a(Landroid/content/Context;ILcom/android/mail/providers/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/mail/widget/h;->aKl:I

    iget-object v2, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    iget v3, p0, Lcom/android/mail/widget/h;->aIX:I

    iget v4, p0, Lcom/android/mail/widget/h;->aRi:I

    iget-object v5, p0, Lcom/android/mail/widget/h;->aRj:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/mail/widget/h;->aRk:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mail/widget/h;->aRl:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/android/mail/widget/b;->a(Landroid/content/Context;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 281
    :cond_0
    iput-boolean v9, p0, Lcom/android/mail/widget/h;->aRu:Z

    .line 289
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRk:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 290
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    const-string v2, "limit"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "use_network"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "all_notifications"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 298
    iget-object v0, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 299
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/mail/providers/E;->aCx:[Ljava/lang/String;

    move-object v4, v8

    move-object v5, v8

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mail/widget/h;->aRn:Landroid/content/CursorLoader;

    .line 301
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRn:Landroid/content/CursorLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 302
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRn:Landroid/content/CursorLoader;

    const v1, 0x7f0b0022

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/CursorLoader;->setUpdateThrottle(J)V

    .line 304
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRn:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 305
    const v0, 0x7f09015d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/widget/h;->aRw:Ljava/lang/String;

    .line 306
    const v0, 0x7f090160

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/widget/h;->aRx:Ljava/lang/String;

    .line 307
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mail/widget/h;->aRj:Landroid/net/Uri;

    sget-object v3, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    move-object v4, v8

    move-object v5, v8

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mail/widget/h;->aRp:Landroid/content/CursorLoader;

    .line 309
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRp:Landroid/content/CursorLoader;

    invoke-virtual {v0, v9, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 310
    new-instance v0, Lcom/android/mail/widget/i;

    const v1, 0x7f0b0023

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/mail/widget/i;-><init>(Lcom/android/mail/widget/h;I)V

    iput-object v0, p0, Lcom/android/mail/widget/h;->aRr:Lcom/android/mail/widget/i;

    .line 312
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRr:Lcom/android/mail/widget/i;

    invoke-virtual {v0}, Lcom/android/mail/widget/i;->AP()V

    .line 314
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    iget-object v2, v2, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    sget-object v3, Lcom/android/mail/providers/E;->aCs:[Ljava/lang/String;

    move-object v4, v8

    move-object v5, v8

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mail/widget/h;->aRq:Landroid/content/CursorLoader;

    .line 316
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRq:Landroid/content/CursorLoader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 317
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRq:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 318
    return-void
.end method

.method public final onDataSetChanged()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRr:Lcom/android/mail/widget/i;

    invoke-virtual {v0}, Lcom/android/mail/widget/i;->AP()V

    .line 358
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    invoke-static {}, Lcom/android/mail/widget/g;->Bj()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRn:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRn:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 325
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRn:Landroid/content/CursorLoader;

    invoke-virtual {v0, p0}, Landroid/content/CursorLoader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/widget/h;->aRn:Landroid/content/CursorLoader;

    .line 331
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/widget/h;->aRo:Landroid/database/Cursor;

    .line 332
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRp:Landroid/content/CursorLoader;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRp:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 336
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRp:Landroid/content/CursorLoader;

    invoke-virtual {v0, p0}, Landroid/content/CursorLoader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 337
    iput-object v2, p0, Lcom/android/mail/widget/h;->aRp:Landroid/content/CursorLoader;

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRq:Landroid/content/CursorLoader;

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRq:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 342
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRq:Landroid/content/CursorLoader;

    invoke-virtual {v0, p0}, Landroid/content/CursorLoader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 343
    iput-object v2, p0, Lcom/android/mail/widget/h;->aRq:Landroid/content/CursorLoader;

    .line 345
    :cond_2
    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 200
    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    new-instance v11, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0400ce

    invoke-direct {v11, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/mail/widget/h;->aRv:Lcom/android/mail/widget/g;

    iget-object v1, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/mail/widget/h;->aKl:I

    iget-object v3, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mail/widget/g;->a(Landroid/content/Context;ILcom/android/mail/providers/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/mail/widget/h;->aKl:I

    iget-object v2, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    iget v3, p0, Lcom/android/mail/widget/h;->aIX:I

    iget v4, p0, Lcom/android/mail/widget/h;->aRi:I

    iget-object v5, p0, Lcom/android/mail/widget/h;->aRj:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/mail/widget/h;->aRk:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mail/widget/h;->aRl:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/android/mail/widget/b;->a(Landroid/content/Context;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRp:Landroid/content/CursorLoader;

    if-ne p1, v0, :cond_5

    invoke-static {p2}, Lcom/android/mail/widget/h;->n(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/mail/widget/h;->aKl:I

    iget-object v2, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    iget v3, p0, Lcom/android/mail/widget/h;->aIX:I

    iget v4, p0, Lcom/android/mail/widget/h;->aRi:I

    iget-object v5, p0, Lcom/android/mail/widget/h;->aRj:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/mail/widget/h;->aRk:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mail/widget/h;->aRl:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/android/mail/widget/b;->a(Landroid/content/Context;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0xb

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/widget/h;->aRs:I

    iget-boolean v0, p0, Lcom/android/mail/widget/h;->aRu:Z

    if-nez v0, :cond_3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/widget/h;->aRv:Lcom/android/mail/widget/g;

    iget-object v1, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/mail/widget/h;->aKl:I

    iget-object v4, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    iget v5, p0, Lcom/android/mail/widget/h;->aIX:I

    iget v6, p0, Lcom/android/mail/widget/h;->aRi:I

    iget-object v7, p0, Lcom/android/mail/widget/h;->aRj:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/mail/widget/h;->aRk:Landroid/net/Uri;

    move-object v2, v11

    invoke-virtual/range {v0 .. v9}, Lcom/android/mail/widget/g;->a(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/mail/widget/h;->aKl:I

    invoke-virtual {v10, v0, v11}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/widget/h;->aRu:Z

    :cond_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f0d0257

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0d0258

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0d0257

    invoke-virtual {v11, v0, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    iget v0, p0, Lcom/android/mail/widget/h;->aKl:I

    invoke-virtual {v10, v0, v11}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mail/widget/g;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Empty folder name"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRn:Landroid/content/CursorLoader;

    if-ne p1, v0, :cond_8

    invoke-static {}, Lcom/android/mail/widget/g;->Bj()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Lcom/android/mail/widget/h;->n(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/widget/h;->aRo:Landroid/database/Cursor;

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/android/mail/widget/h;->aKl:I

    const v1, 0x7f0d025a

    invoke-virtual {v10, v0, v1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    iget-object v0, p0, Lcom/android/mail/widget/h;->aRo:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mail/widget/h;->aRo:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_6
    const v0, 0x7f0d025b

    iget-object v1, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    const v2, 0x7f090101

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/mail/widget/h;->aKl:I

    invoke-virtual {v10, v0, v11}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    iput-object p2, p0, Lcom/android/mail/widget/h;->aRo:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/android/mail/widget/h;->aRq:Landroid/content/CursorLoader;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/widget/h;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/mail/widget/h;->aKl:I

    iget-object v2, p0, Lcom/android/mail/widget/h;->Nc:Lcom/android/mail/providers/Account;

    iget v3, p0, Lcom/android/mail/widget/h;->aIX:I

    iget v4, p0, Lcom/android/mail/widget/h;->aRi:I

    iget-object v5, p0, Lcom/android/mail/widget/h;->aRj:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/mail/widget/h;->aRk:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mail/widget/h;->aRl:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/android/mail/widget/b;->a(Landroid/content/Context;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
