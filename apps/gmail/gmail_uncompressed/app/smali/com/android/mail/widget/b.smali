.class public abstract Lcom/android/mail/widget/b;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/widget/b;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 200
    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 298
    if-eqz p2, :cond_0

    if-nez p5, :cond_1

    .line 299
    :cond_0
    sget-object v0, Lcom/android/mail/widget/b;->mW:Ljava/lang/String;

    const-string v1, "Missing account or folder.  account: %s folder %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 315
    :goto_0
    return-void

    .line 303
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mail.ACTION_UPDATE_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    iget-object v1, p2, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    const-string v1, "account"

    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->ud()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v1, "folder-type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v1, "folder-capabilities"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string v1, "folder-uri"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 311
    const-string v1, "folder-conversation-list-uri"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 312
    const-string v1, "folder-display-name"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[I)[[Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    array-length v0, p1

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 103
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 106
    invoke-static {p0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/android/mail/i/g;->ct(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_0

    .line 110
    const-string v3, " "

    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 103
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_1
    return-object v0
.end method

.method public static aP(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f0901a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;[I)V
    .locals 4

    .prologue
    .line 400
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget v2, p2, v0

    .line 403
    invoke-static {p1}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/mail/i/g;->cs(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 404
    invoke-virtual {p0, p1, v2}, Lcom/android/mail/widget/b;->d(Landroid/content/Context;I)V

    .line 400
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_1
    return-void
.end method

.method private static e(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-static {p1}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 376
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    .line 377
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mail.ACTION_VALIDATE_ALL_WIDGETS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 389
    const-class v9, Lcom/android/mail/widget/g;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v9}, Lcom/android/mail/widget/g;->a(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Class;)V

    .line 392
    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/android/mail/providers/Account;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 358
    if-eqz p2, :cond_0

    .line 359
    invoke-static {p1}, Lcom/android/mail/utils/a;->aw(Landroid/content/Context;)[Lcom/android/mail/providers/Account;

    move-result-object v2

    .line 360
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 361
    if-eqz v4, :cond_1

    iget-object v5, p2, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v4, v4, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 362
    const/4 v0, 0x1

    .line 366
    :cond_0
    return v0

    .line 360
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected aO(Landroid/content/Context;)[I
    .locals 3

    .prologue
    .line 92
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/content/ComponentName;

    const v2, 0x7f0901a5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    return-object v0
.end method

.method protected final b(Landroid/content/Context;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 326
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400ce

    invoke-direct {v3, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 328
    invoke-virtual {p0, p1, p3}, Lcom/android/mail/widget/b;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p6

    invoke-static {p1, v0}, Lcom/android/mail/widget/b;->e(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    :cond_0
    const v1, 0x7f0d0257

    const/16 v2, 0x8

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 331
    const v1, 0x7f0d0258

    const/16 v2, 0x8

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 332
    const v1, 0x7f0d025a

    const/16 v2, 0x8

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 333
    const v1, 0x7f0d025b

    const/16 v2, 0x8

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 334
    const v1, 0x7f0d025c

    const/16 v2, 0x8

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 335
    const v1, 0x7f0d0259

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 337
    const v1, 0x7f0d025b

    const v2, 0x7f0900fc

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 340
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mail/ui/MailboxSelectionActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 343
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 344
    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v2, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 346
    const v2, 0x7f0d0259

    invoke-virtual {v3, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 354
    :goto_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 355
    return-void

    .line 349
    :cond_1
    if-nez p8, :cond_2

    const-string v10, " "

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v10}, Lcom/android/mail/widget/b;->a(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v10, p8

    goto :goto_1
.end method

.method protected abstract d(Landroid/content/Context;I)V
.end method

.method protected g(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/providers/Account;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 279
    if-eqz v1, :cond_0

    .line 280
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-static {v1}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 285
    :cond_0
    if-eqz v1, :cond_1

    .line 286
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_1
    return-object v6

    .line 285
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    .line 286
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 285
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 77
    invoke-static {p1}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/mail/i/g;->f([I)V

    .line 78
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/mail/widget/b;->aO(Landroid/content/Context;)[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/widget/b;->b(Landroid/content/Context;[I)V

    .line 125
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 126
    sget-object v0, Lcom/android/mail/widget/b;->mW:Ljava/lang/String;

    const-string v1, "BaseWidgetProvider.onReceive: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v1, "com.android.mail.ACTION_UPDATE_WIDGET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    const-string v0, "widgetId"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 131
    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Account;->bH(Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v3

    .line 132
    const-string v0, "folder-type"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 133
    const-string v0, "folder-capabilities"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 134
    const-string v0, "folder-uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 135
    const-string v0, "folder-conversation-list-uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 137
    const-string v0, "folder-display-name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 139
    if-eq v2, v9, :cond_0

    if-eqz v3, :cond_0

    if-eqz v6, :cond_0

    move-object v0, p0

    move-object v1, p1

    .line 140
    invoke-virtual/range {v0 .. v8}, Lcom/android/mail/widget/b;->b(Landroid/content/Context;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v1, "com.android.mail.ACTION_VALIDATE_ALL_WIDGETS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/mail/widget/b;->aO(Landroid/content/Context;)[I

    move-result-object v10

    array-length v11, v10

    move v9, v5

    :goto_1
    if-ge v9, v11, :cond_0

    aget v2, v10, v9

    invoke-static {p1}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mail/i/g;->ct(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, " "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    aget-object v1, v0, v5

    aget-object v0, v0, v4

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {p0, p1, v1}, Lcom/android/mail/widget/b;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v1

    :goto_3
    invoke-virtual {p0, p1, v1}, Lcom/android/mail/widget/b;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, v0}, Lcom/android/mail/widget/b;->e(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/mail/widget/b;->b(Landroid/content/Context;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_4
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_2

    .line 145
    :cond_5
    const-string v1, "com.android.mail.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 148
    const-string v0, "accountUri"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 149
    const-string v1, "folderUri"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 150
    const-string v3, "update-all-widgets"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 152
    if-nez v0, :cond_6

    invoke-static {v1}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v3, :cond_0

    .line 155
    :cond_6
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/mail/widget/b;->aO(Landroid/content/Context;)[I

    move-result-object v8

    array-length v9, v8

    move v6, v5

    :goto_4
    if-ge v6, v9, :cond_9

    aget v10, v8, v6

    .line 159
    invoke-static {p1}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/mail/i/g;->ct(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_7

    .line 162
    const-string v11, " "

    invoke-static {v2, v11}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 165
    if-nez v3, :cond_a

    .line 166
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v2, v5

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    move v2, v4

    .line 174
    :goto_5
    if-eqz v2, :cond_7

    .line 175
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_7
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_4

    .line 169
    :cond_8
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    aget-object v2, v2, v4

    invoke-static {v11, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v4

    .line 171
    goto :goto_5

    .line 179
    :cond_9
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    invoke-static {v7}, Lcom/google/common/primitives/Ints;->O(Ljava/util/Collection;)[I

    move-result-object v0

    .line 181
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const v2, 0x7f0d025a

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    goto/16 :goto_0

    :cond_a
    move v2, v3

    goto :goto_5

    :cond_b
    move-object v1, v3

    goto/16 :goto_3

    :cond_c
    move-object v0, v3

    move-object v1, v3

    goto/16 :goto_2
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0, p1, p3}, Lcom/android/mail/widget/b;->b(Landroid/content/Context;[I)V

    .line 194
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 197
    new-instance v0, Lcom/android/mail/widget/c;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/mail/widget/c;-><init>(Lcom/android/mail/widget/b;Landroid/content/Context;[I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mail/widget/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method
