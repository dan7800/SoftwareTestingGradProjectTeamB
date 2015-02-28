.class final Lcom/google/android/gm/provider/aV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/provider/ba;


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0

    .prologue
    .line 5284
    iput-object p1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/gm/provider/bm;JJLcom/google/android/gm/provider/MailEngine$ClientCreated;)V
    .locals 22

    .prologue
    .line 6338
    new-instance v15, Landroid/util/TimingLogger;

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "addOrUpdateMessageNoNotifyWithoutWritingOperations"

    invoke-direct {v15, v2, v3}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 6343
    :try_start_0
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 6344
    const-string v2, "messageId"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6345
    const-string v2, "conversation"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gm/provider/bm;->bku:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6346
    const-string v2, "fromAddress"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->blC:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6347
    const-string v2, "toAddresses"

    const-string v3, "\n"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gm/provider/bm;->blN:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6350
    const-string v2, "ccAddresses"

    const-string v3, "\n"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gm/provider/bm;->blO:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6353
    const-string v2, "bccAddresses"

    const-string v3, "\n"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gm/provider/bm;->blP:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6356
    const-string v2, "replyToAddresses"

    const-string v3, "\n"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gm/provider/bm;->blQ:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6359
    const-string v2, "dateSentMs"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gm/provider/bm;->blR:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6360
    const-string v2, "dateReceivedMs"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gm/provider/bm;->aBf:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6361
    const-string v2, "subject"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->ayV:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6362
    const-string v2, "listInfo"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->blS:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6363
    const-string v2, "personalLevel"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->blF:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->Ex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6364
    const-string v2, "clientCreated"

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->Ex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6365
    const-string v2, "snippet"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->abh:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6366
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    .line 6368
    const-string v2, "_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6371
    :cond_0
    const-string v3, "synced"

    const-wide/16 v4, 0x0

    cmp-long v2, p4, v4

    if-nez v2, :cond_f

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6372
    const-string v2, "queryId"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6373
    const-string v2, "pre body"

    invoke-virtual {v15, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 6374
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 6375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gmail_db_compression_type"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 6378
    if-nez v2, :cond_10

    .line 6379
    const-string v2, "body"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6380
    const-string v2, "bodyCompressed"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 6400
    :cond_1
    :goto_1
    const-string v2, "body"

    invoke-virtual {v15, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 6402
    const-string v3, "bodyEmbedsExternalResources"

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/google/android/gm/provider/bm;->blU:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6406
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bm;->bma:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6407
    const-string v2, "customFromAddress"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->bma:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6412
    :cond_2
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/gm/provider/bm;->blZ:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 6413
    const-string v2, "refMessageId"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gm/provider/bm;->blZ:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6417
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bm;->bmg:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 6418
    const-string v2, "refAdEventId"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->bmg:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6422
    :cond_4
    const-string v2, "spamDisplayedReasonType"

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gm/provider/bm;->bmb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6425
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/gm/provider/bm;->bmd:I

    if-ltz v2, :cond_5

    .line 6426
    const-string v2, "showSendersFullEmailAddress"

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gm/provider/bm;->bmd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6430
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bm;->aBw:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 6431
    const-string v2, "viaDomain"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->aBw:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6433
    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/gm/provider/bm;->bmc:I

    if-ltz v2, :cond_7

    .line 6434
    const-string v2, "showForgedFromMeWarning"

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gm/provider/bm;->bmc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6438
    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/gm/provider/bm;->bme:I

    if-eqz v2, :cond_8

    .line 6439
    const-string v2, "deliveryChannel"

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gm/provider/bm;->bme:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6443
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bm;->bmf:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 6444
    const-string v2, "referencesRfc822MessageIds"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->bmf:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6448
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bm;->aBy:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 6449
    const-string v2, "permalink"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->aBy:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6451
    :cond_a
    const-string v2, "clipped"

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gm/provider/bm;->bmh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->c(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/D;->Ek()J

    move-result-wide v18

    .line 6455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gm/provider/bm;->bku:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/gm/provider/bm;->blT:Ljava/util/List;

    invoke-static/range {v3 .. v8}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJLjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 6457
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 6459
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bm;->blT:Ljava/util/List;

    move-object v3, v2

    .line 6461
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_18

    .line 6462
    invoke-static {v3}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->K(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    .line 6466
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-nez v2, :cond_20

    const-wide/16 v4, 0x0

    cmp-long v2, p4, v4

    if-nez v2, :cond_20

    .line 6467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->x(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/aU;

    move-result-object v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->x(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/aU;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/MailEngine;->FP()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/gm/provider/aU;->dK(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    move v14, v2

    .line 6476
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_c
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 6477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->FP()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    const/4 v3, 0x1

    invoke-static {v2, v4, v5, v8, v3}, Lcom/google/android/gm/provider/Gmail;->a(Ljava/lang/String;JLcom/google/android/gm/provider/uiprovider/GmailAttachment;I)Landroid/net/Uri;

    move-result-object v2

    .line 6482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/android/mail/utils/I;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v20

    .line 6485
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v2

    const-string v3, "sync_attachment"

    invoke-virtual {v8}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mail/utils/ag;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, v8, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->size:I

    int-to-long v6, v6

    invoke-interface/range {v2 .. v7}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 6490
    invoke-virtual {v8}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->bjR:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_d

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 6493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->t(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/g;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gm/provider/bm;->bku:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/gm/provider/g;->a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;IZZI)V

    .line 6503
    :cond_d
    sget-object v2, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->bjR:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_c

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    if-nez v14, :cond_e

    iget v2, v8, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    :cond_e
    if-eqz v20, :cond_c

    .line 6508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->t(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/g;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gm/provider/bm;->bku:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/gm/provider/g;->a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;IZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    .line 6603
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 6604
    const-string v3, "post body"

    invoke-virtual {v15, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 6605
    invoke-virtual {v15}, Landroid/util/TimingLogger;->dumpToLog()V

    throw v2

    .line 6371
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 6382
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gmail_db_compression_threshold"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 6385
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_11

    .line 6386
    const-string v2, "body"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6387
    const-string v2, "bodyCompressed"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 6390
    :cond_11
    :try_start_2
    const-string v2, "bodyCompressed"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Lcom/google/android/gm/provider/bJ;->b([BI)[B

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 6392
    const-string v2, "body"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 6395
    :catch_0
    move-exception v2

    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "UTF-8 not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6402
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 6467
    :cond_13
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_4

    :cond_14
    move-object v2, v13

    .line 6518
    :goto_6
    const-string v3, "joinedAttachmentInfos"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6521
    const-wide/16 v6, 0x0

    .line 6522
    const/4 v4, 0x0

    .line 6523
    const/4 v3, 0x0

    .line 6524
    const/4 v2, 0x0

    .line 6525
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "conversation"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "queryId"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "joinedAttachmentInfos"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "clientCreated"

    aput-object v10, v8, v9

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-virtual {v5, v8, v10, v11}, Lcom/google/android/gm/provider/MailEngine;->c([Ljava/lang/String;J)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 6534
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 6535
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 6536
    const/4 v2, 0x1

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_19

    const/4 v4, 0x1

    .line 6537
    :goto_7
    const/4 v2, 0x2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6538
    const/4 v2, 0x3

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v8, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->bjS:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    invoke-static {v8}, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->a(Lcom/google/android/gm/provider/MailEngine$ClientCreated;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v8

    if-ne v2, v8, :cond_1a

    const/4 v2, 0x1

    .line 6542
    :cond_15
    :goto_8
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 6545
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1c

    .line 6546
    if-eqz v2, :cond_16

    if-eqz v3, :cond_16

    .line 6553
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 6554
    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->eV(Ljava/lang/String;)V

    .line 6564
    :cond_16
    :goto_9
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-eqz v2, :cond_17

    if-eqz v4, :cond_17

    .line 6565
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Message %d already synced. Keep it that way"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6567
    const-string v2, "queryId"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6568
    const-string v2, "synced"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6570
    :cond_17
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Updating message %d. queryId=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "messages"

    const-string v4, "messageId = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 6574
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1d

    .line 6575
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "surprising number of rows updated: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6516
    :cond_18
    const-string v2, ""

    goto/16 :goto_6

    .line 6536
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 6538
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 6542
    :catchall_1
    move-exception v2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v2

    .line 6561
    :cond_1b
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/google/android/gm/provider/MailEngine;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 6579
    :cond_1c
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Inserting message %d. queryId=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "messages"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 6581
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    .line 6582
    new-instance v2, Landroid/database/SQLException;

    const-string v3, "error inserting message"

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6585
    :cond_1d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    if-eqz v2, :cond_1e

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1e

    .line 6587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->y(Lcom/google/android/gm/provider/MailEngine;)V

    .line 6590
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gm/provider/ae;->a(JLjava/util/Set;)V

    .line 6593
    sget-object v2, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmo:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 6595
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-eqz v3, :cond_1f

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gm/provider/bm;->bku:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_1f

    .line 6597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v4, 0x0

    invoke-static {v3, v6, v7, v2, v4}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;JLcom/google/android/gm/provider/MailSync$SyncRationale;Z)V

    .line 6601
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 6604
    const-string v2, "post body"

    invoke-virtual {v15, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 6605
    invoke-virtual {v15}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 6606
    return-void

    :cond_20
    move-object v2, v13

    goto/16 :goto_6

    :cond_21
    move-object v3, v2

    goto/16 :goto_3
.end method

.method private aG(J)J
    .locals 5

    .prologue
    .line 5966
    const-wide/16 v0, 0x0

    .line 5967
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT MAX(messageId) FROM messages WHERE conversation = ? and queryId = 0 and clientCreated = 0"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 5972
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5974
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 5978
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 5981
    :goto_0
    return-wide v0

    .line 5978
    :catch_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0
.end method


# virtual methods
.method public final Dc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6611
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final GA()V
    .locals 18

    .prologue
    .line 5687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    if-nez v2, :cond_0

    .line 5767
    :goto_0
    return-void

    .line 5691
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 5693
    :try_start_0
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "updateNotificationLabels: Updating notification labels"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5694
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync;->Hv()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync;->Hw()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->c(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/D;->El()J

    move-result-wide v12

    .line 5703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->c(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/D;->Ep()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v9

    .line 5706
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->u(Lcom/google/android/gm/provider/MailEngine;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 5711
    const/4 v2, 0x0

    .line 5713
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v5}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "notification-requires-us"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    .line 5715
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v5, "^us"

    invoke-virtual {v4, v5}, Lcom/google/android/gm/provider/ae;->eG(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v4

    iget-wide v0, v4, Lcom/google/android/gm/provider/af;->id:J

    move-wide/from16 v16, v0

    .line 5718
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v3, v2

    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5719
    invoke-static {}, Lcom/google/android/gm/provider/Y;->Fk()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5721
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "updateNotificationLabels:   Adding: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5724
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v4, v2}, Lcom/google/android/gm/provider/ae;->eG(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v2

    .line 5725
    iget-wide v4, v2, Lcom/google/android/gm/provider/af;->id:J

    .line 5726
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v6, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/af;)Z

    move-result v2

    or-int/2addr v2, v3

    .line 5729
    if-eqz v14, :cond_2

    .line 5730
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/google/common/collect/ImmutableSet;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v8

    .line 5736
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/provider/MailEngine;->aw(J)Lcom/google/android/gm/provider/af;

    move-result-object v3

    iget-wide v6, v3, Lcom/google/android/gm/provider/af;->id:J

    .line 5737
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5738
    new-instance v3, Lcom/google/android/gm/provider/ah;

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/provider/ah;-><init>(JJLjava/util/Set;Ljava/util/Set;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 5744
    goto :goto_1

    .line 5732
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/common/collect/ImmutableSet;->t(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v8

    goto :goto_2

    .line 5747
    :cond_3
    const-string v2, ","

    invoke-static {v2, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 5748
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "conversation_labels"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "labels_id IN (SELECT _id FROM labels WHERE canonicalName LIKE \'^^unseen-%\' AND _id NOT IN ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "))"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "labels"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "canonicalName LIKE \'^^unseen-%\' AND _id NOT IN ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x1

    .line 5760
    :goto_3
    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    .line 5761
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/ae;->FI()V

    .line 5763
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v2, v10}, Lcom/google/android/gm/provider/ae;->A(Ljava/util/Collection;)V

    .line 5764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    goto/16 :goto_0

    .line 5755
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 5766
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v2
.end method

.method public final Hb()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 5390
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "deleting starred ads"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5392
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 5394
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 5396
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ads"

    invoke-static {}, Lcom/google/android/gm/provider/MailEngine;->GD()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "starred = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 5399
    if-eqz v1, :cond_1

    .line 5401
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5402
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5405
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5412
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0

    .line 5405
    :cond_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5408
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ads"

    const-string v2, "starred = 1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5410
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5412
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 5415
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5416
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, v9}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/util/Collection;)V

    .line 5418
    :cond_2
    return-void
.end method

.method public final Hc()Z
    .locals 1

    .prologue
    .line 5566
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    move-result v0

    return v0
.end method

.method public final Hd()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6191
    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "select _id from messages_to_fetch"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6194
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6195
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 6196
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6199
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6202
    return-object v0
.end method

.method public final He()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6279
    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT DISTINCT _id FROM conversations WHERE dirty = 1"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6282
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6283
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 6284
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6287
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6289
    return-object v0
.end method

.method public final Z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 5919
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gm/provider/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5920
    return-void
.end method

.method public final a([Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 5673
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gm/provider/MailEngine;->a([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gm/provider/aX;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/aX;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/bj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6133
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/google/android/gm/provider/aX;->bkF:Z

    if-eqz v0, :cond_1

    .line 6134
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 6135
    const-string v1, "select conversations_to_fetch._id as _id,   max(\n    case when not clientCreated then messages.messageId else 0 end)\n    as highestMessageId,   max(messages.clientCreated) as hasClientCreatedMessages from   conversations_to_fetch left outer join messages on   messages.conversation = conversations_to_fetch._id   and messages.queryId = 0 where nextAttemptDateMs < ?group by conversations_to_fetch._id order by conversations_to_fetch._id desc limit 50"

    .line 6149
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 6167
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6168
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 6169
    const-string v2, "highestMessageId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 6172
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6174
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6175
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 6176
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 6177
    new-instance v8, Lcom/google/android/gm/provider/bj;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/google/android/gm/provider/bj;-><init>(JJ)V

    .line 6179
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 6183
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6151
    :cond_1
    const-string v1, "select send_without_sync_conversations_to_fetch._id as _id,   max(\n    case when not clientCreated then messages.messageId else 0 end)\n    as highestMessageId,   max(messages.clientCreated) as hasClientCreatedMessages from   send_without_sync_conversations_to_fetch left outer join messages on   messages.conversation = send_without_sync_conversations_to_fetch._id   and messages.queryId = 0 group by send_without_sync_conversations_to_fetch._id order by send_without_sync_conversations_to_fetch._id desc limit 50"

    .line 6164
    const/4 v0, 0x0

    goto :goto_0

    .line 6183
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v3
.end method

.method public final a(JLcom/google/android/gm/provider/aX;)V
    .locals 7

    .prologue
    .line 6067
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 6069
    :try_start_0
    iget-boolean v0, p3, Lcom/google/android/gm/provider/aX;->bkF:Z

    if-eqz v0, :cond_0

    .line 6070
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "conversations_to_fetch"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6090
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "conversations_to_fetch"

    const-string v2, "_id in (SELECT messageId FROM messages WHERE conversation = ?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6104
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6106
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 6107
    return-void

    .line 6095
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "send_without_sync_conversations_to_fetch"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6097
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "send_without_sync_conversations_to_fetch"

    const-string v2, "_id in (SELECT messageId FROM messages WHERE conversation = ?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6106
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0
.end method

.method public final a(JLjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5571
    new-array v6, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 5572
    const-string v0, "dup"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5573
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Deleting message %d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5574
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT conversation FROM messages WHERE messageId=?"

    invoke-virtual {v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5578
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5579
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 5580
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v4, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/google/android/gm/provider/aV;->a(JLjava/util/List;Lcom/google/android/gm/provider/MailSync$SyncRationale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5589
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5630
    :cond_0
    :goto_1
    return-void

    .line 5585
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Handling server \'dup\' response. Missing message: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5589
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 5591
    :cond_2
    if-eqz p3, :cond_3

    .line 5594
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Handling server error response for not updated message (messageId: %d): %s"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5599
    const-string v0, ">"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5600
    :goto_2
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "errors"

    const-string v2, "sync_message_not_updated"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 5603
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 5604
    const-string v1, "error"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5605
    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages"

    const-string v3, "messageId = ?"

    invoke-virtual {v1, v2, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5607
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biz:Lcom/google/android/gm/provider/ba;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/provider/ba;->aJ(J)V

    .line 5610
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v1, "^^out"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    .line 5611
    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v2, "^^failed"

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v1

    .line 5612
    if-eqz v0, :cond_4

    if-nez v1, :cond_6

    .line 5613
    :cond_4
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "null labels in notifyMessageNotUpdated. outbox: %s failed: %s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    :cond_5
    move-object v3, p3

    .line 5599
    goto :goto_2

    .line 5617
    :cond_6
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v2, p1, p2, v7}, Lcom/google/android/gm/provider/MailEngine;->c(JZ)Lcom/google/android/gm/provider/bm;

    move-result-object v2

    .line 5618
    iget-object v3, v2, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    iget-wide v4, v0, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    iget-wide v2, v1, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5620
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 5622
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/ae;->av(J)J

    move-result-wide v0

    .line 5623
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    sget-object v3, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-static {v2, v0, v1, v3}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 5624
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5626
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0
.end method

.method public final a(JLjava/util/List;Lcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5423
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 5425
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p3}, Lcom/google/android/gm/provider/ae;->G(Ljava/util/List;)V

    .line 5426
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p4, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;JLcom/google/android/gm/provider/MailSync$SyncRationale;Z)V

    .line 5428
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5430
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 5431
    return-void

    .line 5430
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0
.end method

.method public final a(JLjava/util/List;Lcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/af;",
            "Z",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5635
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v3, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 5637
    const/4 v3, 0x0

    .line 5638
    :try_start_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 5639
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT COUNT(*) FROM messages WHERE messageId = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v2, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .line 5643
    :goto_1
    if-eqz v2, :cond_4

    .line 5644
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v2, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    sget-object v8, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmN:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gm/provider/ae;->a(JLcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 5646
    const/4 v2, 0x1

    :goto_2
    move v3, v2

    .line 5648
    goto :goto_0

    .line 5639
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 5657
    :cond_1
    if-nez v3, :cond_2

    sget-object v2, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmn:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/MailSync$SyncRationale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5658
    :cond_2
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-static {v2, p1, p2, v0, v3}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;JLcom/google/android/gm/provider/MailSync$SyncRationale;Z)V

    .line 5665
    :cond_3
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5667
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 5668
    return-void

    .line 5667
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v2

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gm/provider/af;IIIILjava/lang/String;)V
    .locals 7

    .prologue
    .line 5880
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/provider/ae;->a(Lcom/google/android/gm/provider/af;IIIILjava/lang/String;)V

    .line 5882
    return-void
.end method

.method public final a(Lcom/google/android/gm/provider/af;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 5837
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 5839
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    const v4, 0x7fffffff

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/ae;->a(Lcom/google/android/gm/provider/af;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 5840
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->FI()V

    .line 5841
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5843
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 5844
    return-void

    .line 5843
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0
.end method

.method public final a(Lcom/google/android/gm/provider/be;Lcom/google/android/gm/provider/aX;J)V
    .locals 7

    .prologue
    .line 5935
    iget-boolean v0, p2, Lcom/google/android/gm/provider/aX;->bkF:Z

    if-eqz v0, :cond_0

    .line 5936
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/Operations;->b(Lcom/google/android/gm/provider/be;Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/aX;J)V

    .line 5940
    :goto_0
    return-void

    .line 5938
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/Operations;->a(Lcom/google/android/gm/provider/be;Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/aX;J)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gm/provider/bi;)V
    .locals 4

    .prologue
    .line 5678
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Got conversation header with MainSync: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5679
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/bi;JLcom/google/android/gm/provider/af;)J

    .line 5683
    return-void
.end method

.method public final a(Lcom/google/android/gm/provider/bm;J)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5342
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "addOrUpdateMessage: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5344
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 5350
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT COUNT(*) FROM operations WHERE message_messageId = ? AND action IN (?, ?) AND value2 = ?"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "messageSaved"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "messageSent"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p1, Lcom/google/android/gm/provider/bm;->bku:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 5358
    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    .line 5359
    const-wide/16 v2, 0x0

    sget-object v6, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->bjR:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/aV;->a(Lcom/google/android/gm/provider/bm;JJLcom/google/android/gm/provider/MailEngine$ClientCreated;)V

    .line 5363
    iget-object v0, p1, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 5364
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/google/android/gm/provider/bm;->aBf:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/gm/provider/ae;->g(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5384
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0

    .line 5366
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->FI()V

    .line 5380
    :goto_1
    iget-wide v0, p1, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 5381
    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages_to_fetch"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5382
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5384
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 5385
    return-void

    .line 5368
    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "addOrUpdateMessage ignoring message %d because of a pending save/send operation"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final aH(J)V
    .locals 7

    .prologue
    .line 6125
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages_to_fetch"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6126
    return-void
.end method

.method public final aI(J)V
    .locals 7

    .prologue
    .line 6207
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "operations"

    const-string v2, "_id <= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6208
    return-void
.end method

.method public final aJ(J)V
    .locals 1

    .prologue
    .line 6212
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/Operations;->aQ(J)V

    .line 6213
    return-void
.end method

.method public final aK(J)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 6266
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6267
    const-string v1, "dirty"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6268
    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "conversations"

    const-string v3, "_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 6270
    if-nez v0, :cond_0

    .line 6271
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Failed to mark conversation as dirty"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6273
    :cond_0
    return-void
.end method

.method public final aL(J)V
    .locals 13

    .prologue
    const-wide/16 v2, 0x7

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 6294
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 6295
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT numAttempts FROM conversations_to_fetch WHERE _id = ?"

    invoke-static {v0, v1, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    .line 6299
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->Ey()J

    move-result-wide v0

    .line 6300
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_0

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    :cond_0
    move-wide v0, v2

    .line 6303
    :cond_1
    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    cmp-long v0, v6, v0

    if-lez v0, :cond_3

    .line 6305
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Giving up on conversation %d after %d attempts"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6306
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "conversations_to_fetch"

    const-string v2, "_id = ?"

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6323
    :cond_2
    :goto_0
    return-void

    .line 6308
    :cond_3
    long-to-int v0, v6

    shl-int v0, v10, v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6309
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    mul-int/lit8 v1, v0, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v8, v1

    add-long/2addr v2, v8

    .line 6310
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 6311
    const-string v5, "nextAttemptDateMs"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6312
    const-string v5, "numAttempts"

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6313
    iget-object v5, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "conversations_to_fetch"

    const-string v7, "_id = ?"

    invoke-virtual {v5, v6, v1, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6318
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6319
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v4, "Delayed sync of conversation %d by %d hours till after %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v10

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    aput-object v0, v5, v12

    invoke-static {v1, v4, v5}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final aq(J)Lcom/google/android/gm/provider/af;
    .locals 1

    .prologue
    .line 5864
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/ae;->aq(J)Lcom/google/android/gm/provider/af;

    move-result-object v0

    return-object v0
.end method

.method public final ar(J)Lcom/google/android/gm/provider/af;
    .locals 1

    .prologue
    .line 5854
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/ae;->ar(J)Lcom/google/android/gm/provider/af;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gm/provider/uiprovider/GmailAttachment;)Ljava/io/InputStream;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6222
    iget-object v0, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mail/common/base/K;->gK(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6223
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Loading cached attachment: %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6225
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6237
    :goto_0
    return-object v0

    .line 6226
    :catch_0
    move-exception v0

    .line 6227
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Failed to load cached attachment %s. Will attempt original URI %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    aput-object v4, v3, v6

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6236
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Loading attachment URI: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6237
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    .line 6239
    :catch_1
    move-exception v0

    .line 6240
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Failed to attach %s due to a FileNotFoundException. Since the cached file has already been tried, this file cannotbe attached. Notify the user."

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    aput-object v4, v3, v5

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6243
    throw v0

    .line 6244
    :catch_2
    move-exception v0

    .line 6245
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Failed to attach %s due to a SecurityException. Since the cached file has already been tried, this file cannot be attached. Notify the user."

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    aput-object v4, v3, v5

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6249
    throw v0
.end method

.method public final b(Lcom/google/android/gm/provider/af;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5874
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-static {p1}, Lcom/google/android/gm/provider/ae;->b(Lcom/google/android/gm/provider/af;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 3

    .prologue
    .line 6113
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 6115
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;JLcom/google/android/gm/provider/MailSync$SyncRationale;Z)V

    .line 6117
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6119
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 6120
    return-void

    .line 6119
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0
.end method

.method public final b(Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 5293
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 5295
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5297
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "labelsIncluded"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "labelsPartial"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "conversationAgeDays"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "maxAttachmentSize"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 5299
    iget-object v3, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gm/provider/MailEngine;->Y(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5307
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5310
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0

    .line 5298
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 5301
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5304
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 5305
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5307
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5310
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 5315
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    if-eqz v0, :cond_4

    .line 5316
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync;->Hu()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/ae;->an(J)V

    .line 5317
    if-eqz p2, :cond_4

    .line 5318
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->w(Lcom/google/android/gm/provider/MailEngine;)V

    .line 5322
    :cond_4
    if-eqz p2, :cond_5

    .line 5323
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5324
    const-string v1, "syncRationale"

    sget-object v2, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmo:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync$SyncRationale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5326
    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "conversations"

    const-string v3, "queryId = 0"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5327
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->o(Lcom/google/android/gm/provider/MailEngine;)V

    .line 5330
    :cond_5
    const-string v0, "lowestMessageIdInDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5336
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Gr()Z

    .line 5338
    :cond_6
    return-void
.end method

.method public final c(JJJ)V
    .locals 9

    .prologue
    .line 5437
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 5439
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->c([Ljava/lang/String;J)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 5445
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 5461
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5506
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 5507
    :goto_0
    return-void

    .line 5454
    :cond_0
    :try_start_3
    const-string v0, "_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 5455
    const-string v0, "conversation"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 5457
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, v4}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Landroid/database/Cursor;)Lcom/google/android/gm/provider/bm;

    move-result-object v1

    .line 5458
    iput-wide p3, v1, Lcom/google/android/gm/provider/bm;->bkt:J

    .line 5459
    iput-wide p5, v1, Lcom/google/android/gm/provider/bm;->bku:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5461
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 5466
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->t(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/g;

    move-result-object v0

    iget-wide v4, v1, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-virtual {v0, p1, p2, v4, v5}, Lcom/google/android/gm/provider/g;->e(JJ)V

    .line 5467
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    iget-wide v4, v1, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-virtual {v0, p1, p2, v4, v5}, Lcom/google/android/gm/provider/Operations;->e(JJ)V

    .line 5475
    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    .line 5476
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Long;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v4}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gm/provider/ae;->G(Ljava/util/List;)V

    .line 5478
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    sget-object v4, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmo:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v5, 0x1

    invoke-static {v0, v6, v7, v4, v5}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;JLcom/google/android/gm/provider/MailSync$SyncRationale;Z)V

    .line 5485
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v4, "^^out"

    invoke-virtual {v0, v4}, Lcom/google/android/gm/provider/ae;->eF(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    .line 5486
    iget-object v4, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v5, "^^retry"

    invoke-virtual {v4, v5}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v4

    .line 5487
    iget-object v5, v1, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    iget-wide v6, v0, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5488
    iget-object v5, v1, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    iget-wide v6, v0, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5489
    if-eqz v4, :cond_2

    .line 5490
    iget-object v0, v1, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    iget-wide v4, v4, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5492
    :cond_2
    iget-object v0, v1, Lcom/google/android/gm/provider/bm;->blG:Ljava/util/Set;

    iget-object v4, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v5, "^f"

    invoke-virtual {v4, v5}, Lcom/google/android/gm/provider/ae;->eF(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5497
    :cond_3
    const-wide/16 v4, 0x0

    sget-object v6, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->bjS:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/aV;->a(Lcom/google/android/gm/provider/bm;JJLcom/google/android/gm/provider/MailEngine$ClientCreated;)V

    .line 5500
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-wide v2, v1, Lcom/google/android/gm/provider/bm;->bku:J

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmo:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v1, v4}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;JLcom/google/android/gm/provider/MailSync$SyncRationale;Z)V

    .line 5504
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5506
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    goto/16 :goto_0

    .line 5461
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5506
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0
.end method

.method public final c(Lcom/google/android/gm/provider/af;)V
    .locals 2

    .prologue
    .line 5824
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 5826
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/ae;->c(Lcom/google/android/gm/provider/af;)V

    .line 5827
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->FI()V

    .line 5828
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5830
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 5831
    return-void

    .line 5830
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0
.end method

.method public final c(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/bb;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 5893
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gm/provider/ae;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 5894
    return-void
.end method

.method public final commit()V
    .locals 1

    .prologue
    .line 5560
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V

    .line 5561
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 5562
    return-void
.end method

.method public final eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;
    .locals 1

    .prologue
    .line 5859
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    return-object v0
.end method

.method public final eH(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 5898
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/ae;->eH(Ljava/lang/String;)V

    .line 5899
    return-void
.end method

.method public final eI(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 5909
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/ae;->eI(Ljava/lang/String;)V

    .line 5910
    return-void
.end method

.method public final eP(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 5288
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, p1}, Lcom/google/android/gm/provider/MailEngine;->b(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)V

    .line 5289
    return-void
.end method

.method public final eW(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5914
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/ae;->eM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final eX(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 5929
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gm/provider/ae;->U(Ljava/lang/String;Ljava/lang/String;)V

    .line 5930
    return-void
.end method

.method public final h(JJ)V
    .locals 5

    .prologue
    .line 5945
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/aV;->aG(J)J

    move-result-wide v0

    .line 5947
    cmp-long v0, v0, p3

    if-gez v0, :cond_0

    .line 5948
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "  device is lower than server. Will check conversation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5953
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5954
    const-string v1, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5955
    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "send_without_sync_conversations_to_fetch"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 5963
    :cond_0
    return-void
.end method

.method public final h(Lcom/google/android/gm/provider/Advertisement;)V
    .locals 5

    .prologue
    .line 5512
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5513
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Received invalid Advertisment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5516
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 5518
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    const/16 v0, 0x19

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 5519
    const-string v0, "event_id"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5520
    const-string v0, "advertiser_name"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bce:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5521
    const-string v0, "title"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcf:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5522
    const-string v0, "line1"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcg:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5523
    const-string v0, "visible_url"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bch:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5524
    const-string v0, "redirect_url"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bci:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5525
    const-string v0, "advertiser_image_data"

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Advertisement;->DL()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 5526
    const-string v0, "body"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bck:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5527
    const-string v0, "expiration"

    iget-wide v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcl:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5528
    const-string v0, "reason"

    iget v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5529
    const-string v0, "apm_extra_targeting_data"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcn:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5530
    const-string v2, "starred"

    iget-boolean v0, p1, Lcom/google/android/gm/provider/Advertisement;->azc:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5531
    const-string v0, "view_status"

    iget v2, p1, Lcom/google/android/gm/provider/Advertisement;->bco:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5532
    const-string v0, "view"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcp:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5533
    const-string v0, "slot"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcq:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5534
    const-string v0, "apm_xsrf_token"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcr:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5535
    const-string v0, "wta_data"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bct:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5536
    const-string v0, "obfuscated_data"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcx:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5537
    const-string v0, "view_url"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcu:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5538
    const-string v0, "click_url"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcv:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5539
    const-string v0, "interaction_url"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcw:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5540
    const-string v0, "click_id"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcz:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5541
    const-string v0, "report_ad_server"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    iget-boolean v2, v2, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcA:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5542
    const-string v0, "report_bow"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    iget-boolean v2, v2, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcB:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5543
    const-string v0, "send_body"

    iget-object v2, p1, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    iget-boolean v2, v2, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcC:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5545
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ads"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 5547
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5549
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 5550
    return-void

    .line 5530
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5549
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0
.end method

.method public final i(JJ)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5991
    const-string v0, ""

    .line 5993
    iget-object v3, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT syncRationale FROM conversations WHERE _id = ?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 5996
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5997
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 6001
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 6004
    :goto_0
    sget-object v3, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmn:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailSync$SyncRationale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6005
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 6007
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmo:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;JLcom/google/android/gm/provider/MailSync$SyncRationale;Z)V

    .line 6010
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6012
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 6021
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6022
    const-string v1, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6023
    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "conversations_to_fetch"

    invoke-virtual {v1, v2, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 6061
    :cond_0
    :goto_1
    return-void

    .line 6001
    :catch_0
    move-exception v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 6012
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0

    .line 6027
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/aV;->aG(J)J

    move-result-wide v4

    .line 6029
    cmp-long v0, v4, p3

    if-gez v0, :cond_2

    .line 6030
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "  device is lower than server. Will check conversation"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6035
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6036
    const-string v1, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6037
    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "conversations_to_fetch"

    invoke-virtual {v1, v2, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 6046
    :cond_2
    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select count(*) from messages where messageId = ? and queryId = 0"

    new-array v6, v1, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v3, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    move v0, v1

    .line 6050
    :goto_2
    if-nez v0, :cond_4

    .line 6051
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "  we do not have the server\'s message. Will check message"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6053
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6054
    const-string v1, "_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6055
    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages_to_fetch"

    invoke-virtual {v1, v2, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    :cond_3
    move v0, v2

    .line 6046
    goto :goto_2

    .line 6058
    :cond_4
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6059
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "  nothing to check"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1
.end method

.method public final j(JJ)V
    .locals 5

    .prologue
    .line 6327
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM messages WHERE conversation = ? AND messageId >= ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6329
    return-void
.end method

.method public final k(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5904
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/ae;->k(Ljava/util/Map;)V

    .line 5905
    return-void
.end method

.method public final m(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 5924
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/ae;->m(Ljava/util/Map;)V

    .line 5925
    return-void
.end method

.method public final n(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/bd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5778
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v3, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 5781
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 5782
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 5788
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/ae;->Fo()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/af;

    .line 5789
    iget-wide v6, v2, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-wide v6, v2, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v6, v7}, Lcom/google/android/gm/provider/ae;->au(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5791
    iget-object v5, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v5, v2}, Lcom/google/android/gm/provider/ae;->c(Lcom/google/android/gm/provider/af;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5816
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v2

    .line 5795
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5798
    iget-object v3, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v3, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gm/provider/ae;->as(J)Lcom/google/android/gm/provider/af;

    move-result-object v3

    .line 5799
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gm/provider/bd;

    move-object v8, v0

    .line 5800
    iget-object v2, v8, Lcom/google/android/gm/provider/bd;->bhU:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gm/provider/ae;->eN(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v4, v3, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/ae;->au(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5802
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Server label appears to be local: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/google/android/gm/provider/af;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gm/provider/bd;->bhU:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5806
    :cond_3
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v4, v8, Lcom/google/android/gm/provider/bd;->bhU:Ljava/lang/String;

    iget-object v5, v8, Lcom/google/android/gm/provider/bd;->name:Ljava/lang/String;

    iget v6, v8, Lcom/google/android/gm/provider/bd;->color:I

    iget-object v7, v8, Lcom/google/android/gm/provider/bd;->bli:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gm/provider/ae;->a(Lcom/google/android/gm/provider/af;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 5808
    iget v4, v8, Lcom/google/android/gm/provider/bd;->blf:I

    iget v5, v8, Lcom/google/android/gm/provider/bd;->blg:I

    iget v6, v8, Lcom/google/android/gm/provider/bd;->blh:I

    iget v7, v8, Lcom/google/android/gm/provider/bd;->color:I

    iget-object v8, v8, Lcom/google/android/gm/provider/bd;->bli:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gm/provider/aV;->a(Lcom/google/android/gm/provider/af;IIIILjava/lang/String;)V

    goto :goto_1

    .line 5812
    :cond_4
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/ae;->FI()V

    .line 5813
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->n(Lcom/google/android/gm/provider/MailEngine;)V

    .line 5814
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5816
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 5819
    iget-object v2, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2, v9}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/util/Set;)V

    .line 5820
    return-void
.end method

.method public final o(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/bc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5887
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gm/provider/ae;->d(Ljava/lang/String;Ljava/util/Map;)V

    .line 5888
    return-void
.end method

.method public final prepare()V
    .locals 2

    .prologue
    .line 5555
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 5556
    return-void
.end method

.method public final q(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5772
    iget-object v0, p0, Lcom/google/android/gm/provider/aV;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, p1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/util/Set;)V

    .line 5773
    return-void
.end method
