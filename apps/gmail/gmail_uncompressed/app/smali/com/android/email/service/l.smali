.class public abstract Lcom/android/email/service/l;
.super Lcom/android/emailcommon/service/s;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/r;


# static fields
.field private static final Uw:[Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/service/l;->Uw:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/emailcommon/service/s;-><init>()V

    .line 256
    return-void
.end method

.method public static h(Landroid/content/Context;J)V
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 429
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 430
    if-nez v6, :cond_1

    .line 431
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "account %d not found in sendMailImpl"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    invoke-static {v6}, Lcom/android/emailcommon/f;->n(Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 435
    invoke-static {p0}, Lcom/android/email/o;->r(Landroid/content/Context;)Lcom/android/email/m;

    move-result-object v7

    .line 438
    iget-wide v0, v6, Lcom/android/emailcommon/provider/Account;->Ln:J

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->c(Landroid/content/Context;JI)J

    move-result-wide v8

    .line 439
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 443
    sget-object v1, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/g;->YI:[Ljava/lang/String;

    const-string v3, "mailboxKey=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 449
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_2

    .line 527
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 452
    :cond_2
    :try_start_1
    invoke-static {p0, v6}, Lcom/android/email/mail/a;->f(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/a;

    move-result-object v3

    .line 453
    invoke-static {v6, p0}, Lcom/android/email/mail/b;->a(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;

    .line 455
    invoke-static {}, Lcom/android/email/mail/b;->iJ()Z

    .line 456
    const/4 v1, 0x5

    invoke-static {p0, p1, p2, v1}, Lcom/android/emailcommon/provider/Mailbox;->d(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 458
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 459
    const-string v5, "mailboxKey"

    iget-wide v8, v1, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 460
    :cond_3
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 467
    const-string v1, "flags"

    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 473
    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/b/s;->D(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 474
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 475
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Can\'t send #"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "; unloaded attachments"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v5, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 481
    :catch_0
    move-exception v1

    :try_start_3
    instance-of v1, v1, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v1, :cond_3

    if-eqz v7, :cond_3

    .line 484
    iget-wide v8, v6, Lcom/android/emailcommon/provider/Account;->Ln:J

    const/4 v1, 0x0

    invoke-interface {v7, v8, v9, v1}, Lcom/android/email/m;->a(JZ)V
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 522
    :catch_1
    move-exception v0

    :try_start_4
    instance-of v0, v0, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    .line 524
    iget-wide v0, v6, Lcom/android/emailcommon/provider/Account;->Ln:J

    const/4 v3, 0x0

    invoke-interface {v7, v0, v1, v3}, Lcom/android/email/m;->a(JZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 527
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 480
    :cond_5
    :try_start_5
    invoke-virtual {v3, v8, v9}, Lcom/android/email/mail/a;->o(J)V
    :try_end_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 490
    :try_start_6
    sget-object v1, Lcom/android/emailcommon/provider/g;->YD:Landroid/net/Uri;

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 493
    iget-wide v10, v6, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/b/a;->B(Landroid/content/Context;J)V

    .line 494
    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v5

    .line 499
    iget v10, v5, Lcom/android/emailcommon/provider/g;->dM:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_6

    .line 500
    iget-wide v10, v6, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {p0, v10, v11, v8, v9}, Lcom/android/emailcommon/b/a;->c(Landroid/content/Context;JJ)V

    .line 503
    :cond_6
    iget v5, v5, Lcom/android/emailcommon/provider/g;->dM:I

    const v8, -0x300004

    and-int/2addr v5, v8

    .line 508
    const-string v8, "flags"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v4, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 527
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 519
    :cond_7
    if-eqz v7, :cond_8

    .line 520
    :try_start_7
    iget-wide v0, v6, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-interface {v7, v0, v1}, Lcom/android/email/m;->f(J)V
    :try_end_7
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 527
    :cond_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected final A(J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 100
    iget-object v0, p0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 101
    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v1, v2, v3}, Lcom/android/email/service/n;->j(Landroid/content/Context;J)Lcom/android/email/service/o;

    move-result-object v1

    .line 106
    new-instance v2, Landroid/accounts/Account;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->NP:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->G(J)Landroid/os/Bundle;

    move-result-object v1

    .line 109
    const-string v3, "force"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    const-string v3, "do_not_retry"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    const-string v3, "expedited"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 118
    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v3, "requestSync EmailServiceStub startSync %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final B(J)V
    .locals 17

    .prologue
    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v7

    .line 287
    if-nez v7, :cond_1

    .line 288
    sget-object v2, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v3, "Account %d not found in updateFolderList"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    const-wide/16 v8, -0x1

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/emailcommon/f;->l(Lcom/android/emailcommon/provider/Account;)I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 293
    const/4 v11, 0x0

    .line 294
    const/4 v3, 0x0

    .line 296
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/android/email/mail/b;->a(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 299
    :try_start_1
    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->ZG:[I

    array-length v6, v5

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_3

    aget v2, v5, v4

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->c(Landroid/content/Context;JI)J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v3, v12, v14

    if-nez v3, :cond_e

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->b(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 302
    invoke-virtual {v10, v2}, Lcom/android/email/mail/b;->aU(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 306
    const/16 v12, 0x8

    iput v12, v3, Lcom/android/emailcommon/provider/Mailbox;->Zx:I

    .line 308
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Lcom/android/emailcommon/provider/Mailbox;->ac(Landroid/content/Context;)Landroid/net/Uri;

    .line 309
    if-nez v2, :cond_e

    .line 310
    iget-wide v2, v3, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    .line 299
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-wide v8, v2

    goto :goto_1

    .line 316
    :cond_3
    invoke-virtual {v10}, Lcom/android/email/mail/b;->iK()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    .line 317
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 318
    array-length v4, v3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    .line 319
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 323
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/service/l;->Uw:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v13, 0x0

    iget-wide v14, v7, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 331
    :cond_5
    :goto_4
    :pswitch_0
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 332
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {v12, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 335
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 339
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 340
    packed-switch v2, :pswitch_data_0

    .line 351
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1, v4, v5}, Lcom/android/emailcommon/b/a;->d(Landroid/content/Context;JJ)V

    .line 355
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 361
    :catch_0
    move-exception v2

    move-object v4, v3

    move-object v3, v10

    .line 362
    :goto_5
    :try_start_3
    sget-object v5, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v6, "Error in updateFolderList"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v2, v6, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 368
    if-eqz v4, :cond_6

    .line 369
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_6
    if-eqz v3, :cond_7

    .line 372
    invoke-virtual {v3}, Lcom/android/email/mail/b;->iM()V

    .line 375
    :cond_7
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-eqz v2, :cond_0

    .line 376
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/email/service/l;->A(J)V

    goto/16 :goto_0

    .line 368
    :cond_8
    if-eqz v3, :cond_9

    .line 369
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_9
    if-eqz v10, :cond_a

    .line 372
    invoke-virtual {v10}, Lcom/android/email/mail/b;->iM()V

    .line 375
    :cond_a
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-eqz v2, :cond_0

    .line 376
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/email/service/l;->A(J)V

    goto/16 :goto_0

    .line 368
    :catchall_0
    move-exception v2

    move-object v10, v3

    :goto_6
    if-eqz v11, :cond_b

    .line 369
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_b
    if-eqz v10, :cond_c

    .line 372
    invoke-virtual {v10}, Lcom/android/email/mail/b;->iM()V

    .line 375
    :cond_c
    const-wide/16 v4, -0x1

    cmp-long v3, v8, v4

    if-eqz v3, :cond_d

    .line 376
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/email/service/l;->A(J)V

    :cond_d
    throw v2

    .line 368
    :catchall_1
    move-exception v2

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v11, v3

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v10, v3

    move-object v11, v4

    goto :goto_6

    .line 361
    :catch_1
    move-exception v2

    move-object v4, v11

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v3, v10

    move-object v4, v11

    goto :goto_5

    :cond_e
    move-wide v2, v8

    goto/16 :goto_2

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final C(J)V
    .locals 5

    .prologue
    .line 414
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "pushModify invalid for account type for %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 415
    return-void
.end method

.method public final D(J)V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/email/service/l;->h(Landroid/content/Context;J)V

    .line 426
    return-void
.end method

.method public final R(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public final a(JLandroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public a(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/emailcommon/service/HostAuthCompat;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/android/emailcommon/service/u;JJZ)V
    .locals 18

    .prologue
    .line 125
    const/4 v13, 0x0

    .line 128
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p4

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->o(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v14

    .line 130
    if-nez v14, :cond_1

    .line 131
    const-wide/16 v4, 0x0

    const/16 v8, 0x11

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    invoke-interface/range {v3 .. v9}, Lcom/android/emailcommon/service/u;->a(JJII)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-wide v4, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    iget-wide v6, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    invoke-static {v2, v6, v7}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v15

    .line 139
    if-nez v15, :cond_2

    .line 140
    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    invoke-interface/range {v3 .. v9}, Lcom/android/emailcommon/service/u;->a(JJII)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v2

    move-object v10, v13

    .line 236
    :goto_1
    :try_start_1
    sget-object v3, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v4, "Error loading attachment"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 238
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 239
    const-string v3, "uiState"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p4

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 243
    const-wide/16 v4, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    invoke-interface/range {v3 .. v9}, Lcom/android/emailcommon/service/u;->a(JJII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    if-eqz v10, :cond_0

    .line 246
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Folder;->iY()V

    goto :goto_0

    .line 146
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    invoke-static {v2, v14}, Lcom/android/emailcommon/b/s;->b(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yv:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 148
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    invoke-interface/range {v3 .. v9}, Lcom/android/emailcommon/service/u;->a(JJII)V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v2

    move-object v10, v13

    :goto_2
    if-eqz v10, :cond_3

    .line 246
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Folder;->iY()V

    :cond_3
    throw v2

    .line 154
    :cond_4
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    :try_start_3
    invoke-interface/range {v3 .. v9}, Lcom/android/emailcommon/service/u;->a(JJII)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    iget-wide v6, v15, Lcom/android/emailcommon/provider/g;->Lq:J

    invoke-static {v2, v6, v7}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    iget-wide v6, v15, Lcom/android/emailcommon/provider/g;->YR:J

    invoke-static {v2, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_0

    .line 163
    iget v6, v2, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 164
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/emailcommon/provider/e;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "sourceMessageKey"

    aput-object v10, v8, v9

    const-string v9, "messageKey=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x0

    const-wide/16 v16, -0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static/range {v6 .. v12}, Lcom/android/emailcommon/b/s;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 168
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_5

    .line 169
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v7}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v6

    .line 171
    if-eqz v6, :cond_5

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    iget-wide v8, v6, Lcom/android/emailcommon/provider/g;->YR:J

    invoke-static {v2, v8, v9}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 173
    iget-object v6, v6, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    iput-object v6, v15, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    .line 180
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    if-nez v2, :cond_8

    .line 182
    :cond_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    invoke-interface/range {v3 .. v9}, Lcom/android/emailcommon/service/u;->a(JJII)V

    goto/16 :goto_0

    .line 176
    :cond_7
    iget v6, v2, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    iget-wide v6, v15, Lcom/android/emailcommon/provider/g;->YS:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    iget-wide v6, v15, Lcom/android/emailcommon/provider/g;->YS:J

    invoke-static {v2, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    goto :goto_3

    .line 186
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/emailcommon/f;->m(Lcom/android/emailcommon/provider/Account;)I

    move-result v6

    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/email/mail/b;->a(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;

    move-result-object v3

    .line 190
    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/email/mail/b;->y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 191
    :try_start_4
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v10, v2}, Lcom/android/emailcommon/mail/Folder;->a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 195
    iget-object v2, v15, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/android/emailcommon/mail/Folder;->C(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 196
    new-instance v9, Lcom/android/emailcommon/a/c;

    invoke-direct {v9}, Lcom/android/emailcommon/a/c;-><init>()V

    .line 197
    iget-wide v6, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lo:J

    long-to-int v3, v6

    invoke-virtual {v9, v3}, Lcom/android/emailcommon/a/c;->setSize(I)V

    .line 198
    const-string v3, "X-Android-Attachment-StoreData"

    iget-object v6, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yr:Ljava/lang/String;

    invoke-virtual {v9, v3, v6}, Lcom/android/emailcommon/a/c;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v3, "Content-Type"

    const-string v6, "%s;\n name=\"%s\""

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v11, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ym:Ljava/lang/String;

    aput-object v11, v7, v8

    const/4 v8, 0x1

    iget-object v11, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    aput-object v11, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v3, v6}, Lcom/android/emailcommon/a/c;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v3, "Content-Transfer-Encoding"

    const-string v6, "base64"

    invoke-virtual {v9, v3, v6}, Lcom/android/emailcommon/a/c;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v3, Lcom/android/emailcommon/a/h;

    invoke-direct {v3}, Lcom/android/emailcommon/a/h;-><init>()V

    .line 210
    const-string v6, "mixed"

    invoke-virtual {v3, v6}, Lcom/android/emailcommon/a/h;->ae(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v3, v9}, Lcom/android/emailcommon/a/h;->a(Lcom/android/emailcommon/mail/d;)V

    .line 213
    const-string v6, "Content-Type"

    const-string v7, "multipart/mixed"

    invoke-virtual {v2, v6, v7}, Lcom/android/emailcommon/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Message;->a(Lcom/android/emailcommon/mail/c;)V

    .line 217
    new-instance v11, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v11}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 218
    invoke-virtual {v11, v9}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 219
    const/4 v3, 0x1

    new-array v12, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v3, 0x0

    aput-object v2, v12, v3

    new-instance v2, Lcom/android/email/service/m;

    move-object/from16 v3, p0

    move-wide/from16 v6, p4

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/email/service/m;-><init>(Lcom/android/email/service/l;JJLcom/android/emailcommon/service/u;)V

    invoke-virtual {v10, v12, v11, v2}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V

    .line 224
    invoke-virtual {v9}, Lcom/android/emailcommon/a/c;->kO()Lcom/android/emailcommon/mail/c;

    move-result-object v2

    if-nez v2, :cond_9

    .line 225
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Attachment not loaded."

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :catch_1
    move-exception v2

    goto/16 :goto_1

    .line 229
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/android/emailcommon/a/c;->kO()Lcom/android/emailcommon/mail/c;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/emailcommon/mail/c;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v2, v3, v14}, Lcom/android/emailcommon/b/a;->a(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 233
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    invoke-interface/range {v3 .. v9}, Lcom/android/emailcommon/service/u;->a(JJII)V
    :try_end_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 245
    if-eqz v10, :cond_0

    .line 246
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Folder;->iY()V

    goto/16 :goto_0

    .line 245
    :catchall_1
    move-exception v2

    goto/16 :goto_2
.end method

.method public final bd(I)V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public final e(JI)V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method protected final g(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/email/service/l;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method public final kE()I
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x1

    return v0
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    return-object v0
.end method
