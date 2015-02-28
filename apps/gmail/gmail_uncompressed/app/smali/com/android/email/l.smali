.class public final Lcom/android/email/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/l;->LR:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/emailcommon/provider/g;)Lcom/android/emailcommon/mail/Message;
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 373
    new-instance v6, Lcom/android/emailcommon/a/f;

    invoke-direct {v6}, Lcom/android/emailcommon/a/f;-><init>()V

    .line 376
    iget-object v0, p1, Lcom/android/emailcommon/provider/g;->YL:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_0
    invoke-virtual {v6, v0}, Lcom/android/emailcommon/a/f;->setSubject(Ljava/lang/String;)V

    .line 377
    iget-object v0, p1, Lcom/android/emailcommon/provider/g;->YT:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->ao(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 378
    array-length v4, v0

    if-lez v4, :cond_0

    .line 379
    aget-object v0, v0, v2

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/a/f;->a(Lcom/android/emailcommon/mail/Address;)V

    .line 381
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/g;->YK:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/a/f;->a(Ljava/util/Date;)V

    .line 382
    iget-object v0, p1, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/a/f;->ap(Ljava/lang/String;)V

    .line 383
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->WP:Lcom/android/emailcommon/mail/Flag;

    iget v0, p1, Lcom/android/emailcommon/provider/g;->Vu:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v6, v4, v0}, Lcom/android/emailcommon/a/f;->a(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 385
    sget-object v0, Lcom/android/emailcommon/mail/Flag;->WQ:Lcom/android/emailcommon/mail/Flag;

    iget-boolean v1, p1, Lcom/android/emailcommon/provider/g;->Vs:Z

    invoke-virtual {v6, v0, v1}, Lcom/android/emailcommon/a/f;->a(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 386
    sget-object v0, Lcom/android/emailcommon/mail/Flag;->WS:Lcom/android/emailcommon/mail/Flag;

    iget-boolean v1, p1, Lcom/android/emailcommon/provider/g;->Vt:Z

    invoke-virtual {v6, v0, v1}, Lcom/android/emailcommon/a/f;->a(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 388
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->Xo:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v1, p1, Lcom/android/emailcommon/provider/g;->YU:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->ao(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/android/emailcommon/a/f;->a(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 389
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->Xp:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v1, p1, Lcom/android/emailcommon/provider/g;->YV:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->ao(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/android/emailcommon/a/f;->a(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 390
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->Xq:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v1, p1, Lcom/android/emailcommon/provider/g;->YW:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->ao(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/android/emailcommon/a/f;->a(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 391
    iget-object v0, p1, Lcom/android/emailcommon/provider/g;->YX:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->ao(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/a/f;->a([Lcom/android/emailcommon/mail/Address;)V

    .line 392
    new-instance v0, Ljava/util/Date;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/g;->YO:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/a/f;->b(Ljava/util/Date;)V

    .line 393
    iget-object v0, p1, Lcom/android/emailcommon/provider/g;->YQ:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/a/f;->ab(Ljava/lang/String;)V

    .line 396
    const-string v0, "Content-Type"

    const-string v1, "multipart/mixed"

    invoke-virtual {v6, v0, v1}, Lcom/android/emailcommon/a/f;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v7, Lcom/android/emailcommon/a/h;

    invoke-direct {v7}, Lcom/android/emailcommon/a/h;-><init>()V

    .line 398
    const-string v0, "mixed"

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/a/h;->ae(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v6, v7}, Lcom/android/emailcommon/a/f;->a(Lcom/android/emailcommon/mail/c;)V

    .line 402
    :try_start_0
    const-string v0, "text/html"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/e;->s(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/android/email/l;->a(Lcom/android/emailcommon/a/h;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 409
    :goto_2
    :try_start_1
    const-string v0, "text/plain"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/e;->r(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/android/email/l;->a(Lcom/android/emailcommon/a/h;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 416
    :goto_3
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yh:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->XO:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 422
    :goto_4
    if-eqz v1, :cond_a

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 423
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 424
    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->b(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    :try_start_3
    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yu:[B

    if-eqz v0, :cond_5

    .line 430
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yu:[B

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 443
    :goto_5
    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ym:Ljava/lang/String;

    .line 444
    iget-wide v8, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lo:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 445
    iget-object v8, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yn:Ljava/lang/String;

    .line 446
    iget-object v9, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    .line 447
    if-eqz v0, :cond_9

    .line 448
    new-instance v10, Lcom/android/emailcommon/mail/b;

    invoke-direct {v10, v0}, Lcom/android/emailcommon/mail/b;-><init>(Ljava/io/InputStream;)V

    new-instance v11, Lcom/android/emailcommon/a/c;

    invoke-direct {v11, v10, v4}, Lcom/android/emailcommon/a/c;-><init>(Lcom/android/emailcommon/mail/c;Ljava/lang/String;)V

    const-string v0, "Content-Transfer-Encoding"

    const-string v4, "base64"

    invoke-virtual {v11, v0, v4}, Lcom/android/emailcommon/a/c;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Disposition"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v0, "attachment;\n "

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "filename=\""

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "size="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v4, v0}, Lcom/android/emailcommon/a/c;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_1

    const-string v0, "Content-ID"

    invoke-virtual {v11, v0, v8}, Lcom/android/emailcommon/a/c;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v7, v11}, Lcom/android/emailcommon/mail/h;->a(Lcom/android/emailcommon/mail/d;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 453
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v4, "File Not Found error on %s while upsyncing message"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lK()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v0, v4, v5}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 458
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 459
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 376
    :cond_3
    iget-object v0, p1, Lcom/android/emailcommon/provider/g;->YL:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 383
    goto/16 :goto_1

    .line 404
    :catch_1
    move-exception v0

    .line 405
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception while reading html body "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 411
    :catch_2
    move-exception v0

    .line 412
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception while reading text body "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_3

    .line 432
    :cond_5
    :try_start_5
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lK()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 434
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lL()Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v0, v3

    .line 437
    goto/16 :goto_5

    .line 439
    :cond_7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto/16 :goto_5

    .line 448
    :cond_8
    const-string v0, ""

    goto/16 :goto_6

    .line 450
    :cond_9
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v4, "Could not open attachment file for upsync"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 458
    :cond_a
    if-eqz v1, :cond_b

    .line 459
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_b
    return-object v6
.end method

.method private static a(Lcom/android/emailcommon/mail/j;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 197
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/a/i;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/android/emailcommon/a/i;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->kP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/a/i;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v1, "filename"

    invoke-static {v0, v1}, Lcom/android/emailcommon/a/i;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_0
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->kP()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 209
    const-string v5, "size"

    invoke-static {v1, v5}, Lcom/android/emailcommon/a/i;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 212
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 222
    :cond_1
    :goto_0
    const-string v1, "X-Android-Attachment-StoreData"

    invoke-interface {p0, v1}, Lcom/android/emailcommon/mail/j;->Y(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_2

    aget-object v1, v1, v9

    .line 225
    :goto_1
    new-instance v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 229
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/emailcommon/b/a;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ym:Ljava/lang/String;

    .line 230
    iput-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    .line 231
    iput-wide v2, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lo:J

    .line 232
    invoke-interface {p0}, Lcom/android/emailcommon/mail/j;->kQ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yn:Ljava/lang/String;

    .line 233
    invoke-virtual {v5, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ax(Ljava/lang/String;)V

    .line 234
    iput-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yr:Ljava/lang/String;

    .line 235
    const-string v0, "B"

    iput-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ys:Ljava/lang/String;

    .line 237
    return-object v5

    .line 213
    :catch_0
    move-exception v1

    .line 214
    sget-object v5, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v6, "Could not decode size \"%s\" from attachment part"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v1, v6, v7}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 223
    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Lcom/android/emailcommon/provider/g;Lcom/android/emailcommon/mail/j;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 260
    invoke-static {p2}, Lcom/android/email/l;->a(Lcom/android/emailcommon/mail/j;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v7

    .line 261
    iget-wide v0, p1, Lcom/android/emailcommon/provider/g;->Ln:J

    iput-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    .line 262
    iget-wide v0, p1, Lcom/android/emailcommon/provider/g;->Lq:J

    iput-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lq:J

    .line 273
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yh:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->XO:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 276
    const/4 v0, 0x0

    .line 278
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 280
    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->b(Landroid/database/Cursor;)V

    .line 283
    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ym:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ym:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yn:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yn:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yr:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yr:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    iput-wide v4, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    .line 295
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 302
    if-nez v0, :cond_2

    .line 303
    invoke-virtual {v7, p0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ac(Landroid/content/Context;)Landroid/net/Uri;

    .line 307
    :cond_2
    iget-wide v4, p1, Lcom/android/emailcommon/provider/g;->Lq:J

    invoke-interface {p2}, Lcom/android/emailcommon/mail/j;->kO()Lcom/android/emailcommon/mail/c;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-wide v8, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/b/a;->A(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create attachment directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 307
    :cond_3
    invoke-static {p0, v4, v5, v8, v9}, Lcom/android/emailcommon/b/a;->b(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v0

    :try_start_1
    invoke-interface {p2}, Lcom/android/emailcommon/mail/j;->kO()Lcom/android/emailcommon/mail/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/emailcommon/mail/c;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v2, v1}, Lorg/apache/a/a/a;->c(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-wide v10

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v4, v5, v8, v9}, Lcom/android/emailcommon/b/a;->c(JJ)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-wide v10, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lo:J

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ax(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v12}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "size"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "contentUri"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uiState"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    :cond_5
    iget-object v0, p1, Lcom/android/emailcommon/provider/g;->Zf:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/android/emailcommon/provider/g;->Zf:Ljava/util/ArrayList;

    .line 312
    :cond_6
    iget-object v0, p1, Lcom/android/emailcommon/provider/g;->Zf:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iput-boolean v6, p1, Lcom/android/emailcommon/provider/g;->YN:Z

    .line 314
    return-void

    .line 307
    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    throw v0

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/android/emailcommon/provider/g;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/g;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/emailcommon/provider/g;->Zf:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/j;

    .line 170
    invoke-static {p0, p1, v0}, Lcom/android/email/l;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/g;Lcom/android/emailcommon/mail/j;)V

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method private static a(Lcom/android/emailcommon/a/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 476
    if-nez p2, :cond_0

    .line 482
    :goto_0
    return-void

    .line 479
    :cond_0
    new-instance v0, Lcom/android/emailcommon/a/k;

    invoke-direct {v0, p2}, Lcom/android/emailcommon/a/k;-><init>(Ljava/lang/String;)V

    .line 480
    new-instance v1, Lcom/android/emailcommon/a/c;

    invoke-direct {v1, v0, p1}, Lcom/android/emailcommon/a/c;-><init>(Lcom/android/emailcommon/mail/c;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/a/h;->a(Lcom/android/emailcommon/mail/d;)V

    goto :goto_0
.end method

.method public static a(Lcom/android/emailcommon/provider/g;Lcom/android/emailcommon/mail/Message;JJ)Z
    .locals 10

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->kU()[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/android/emailcommon/mail/Message$RecipientType;->Xo:Lcom/android/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/mail/Message;->a(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 84
    sget-object v2, Lcom/android/emailcommon/mail/Message$RecipientType;->Xp:Lcom/android/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v2}, Lcom/android/emailcommon/mail/Message;->a(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 85
    sget-object v3, Lcom/android/emailcommon/mail/Message$RecipientType;->Xq:Lcom/android/emailcommon/mail/Message$RecipientType;

    invoke-virtual {p1, v3}, Lcom/android/emailcommon/mail/Message;->a(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    .line 86
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->kV()[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    .line 87
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->kT()Ljava/util/Date;

    move-result-object v6

    .line 89
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->lo()Ljava/util/Date;

    move-result-object v7

    .line 91
    if-eqz v0, :cond_0

    array-length v8, v0

    if-lez v8, :cond_0

    .line 92
    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->ll()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/emailcommon/provider/g;->Xy:Ljava/lang/String;

    .line 94
    :cond_0
    if-eqz v6, :cond_9

    .line 95
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/emailcommon/provider/g;->YK:J

    .line 100
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    .line 101
    iput-object v5, p0, Lcom/android/emailcommon/provider/g;->YL:Ljava/lang/String;

    .line 103
    :cond_2
    sget-object v5, Lcom/android/emailcommon/mail/Flag;->WQ:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v5}, Lcom/android/emailcommon/mail/Message;->b(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/emailcommon/provider/g;->Vs:Z

    .line 104
    sget-object v5, Lcom/android/emailcommon/mail/Flag;->WR:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v5}, Lcom/android/emailcommon/mail/Message;->b(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    iget v5, p0, Lcom/android/emailcommon/provider/g;->dM:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/emailcommon/provider/g;->dM:I

    .line 110
    :cond_3
    iget v5, p0, Lcom/android/emailcommon/provider/g;->Vu:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    .line 111
    iget-object v5, p0, Lcom/android/emailcommon/provider/g;->Xy:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v5, ""

    iget-object v6, p0, Lcom/android/emailcommon/provider/g;->Xy:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 112
    :cond_4
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/emailcommon/provider/g;->Vu:I

    .line 117
    :cond_5
    :goto_1
    sget-object v5, Lcom/android/emailcommon/mail/Flag;->WS:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v5}, Lcom/android/emailcommon/mail/Message;->b(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/emailcommon/provider/g;->Vt:Z

    .line 121
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    .line 122
    if-eqz v7, :cond_6

    .line 123
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/emailcommon/provider/g;->YO:J

    .line 129
    :cond_6
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->kW()Ljava/lang/String;

    move-result-object v5

    .line 130
    if-eqz v5, :cond_7

    .line 131
    iput-object v5, p0, Lcom/android/emailcommon/provider/g;->YQ:Ljava/lang/String;

    .line 135
    :cond_7
    iput-wide p4, p0, Lcom/android/emailcommon/provider/g;->YR:J

    .line 136
    iput-wide p2, p0, Lcom/android/emailcommon/provider/g;->Lq:J

    .line 138
    if-eqz v0, :cond_8

    array-length v5, v0

    if-lez v5, :cond_8

    .line 139
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->b([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->YT:Ljava/lang/String;

    .line 142
    :cond_8
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->b([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->YU:Ljava/lang/String;

    .line 143
    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->b([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->YV:Ljava/lang/String;

    .line 144
    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->b([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->YW:Ljava/lang/String;

    .line 145
    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->b([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->YX:Ljava/lang/String;

    .line 155
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_9
    if-eqz v7, :cond_1

    .line 97
    sget-object v6, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v8, "No sentDate, falling back to internalDate"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/emailcommon/provider/g;->YK:J

    goto/16 :goto_0

    .line 114
    :cond_a
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/emailcommon/provider/g;->Vu:I

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Lcom/android/emailcommon/provider/g;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/g;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/j;

    .line 178
    invoke-interface {v0}, Lcom/android/emailcommon/mail/j;->kP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/a/i;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/emailcommon/a/i;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-static {p0, p1, v0}, Lcom/android/email/l;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/g;Lcom/android/emailcommon/mail/j;)V

    goto :goto_0

    .line 185
    :cond_1
    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 517
    const-class v2, Lcom/android/email/l;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/android/email/l;->LR:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 519
    sget-object v0, Lcom/android/email/l;->LR:Ljava/util/HashMap;

    const v3, 0x7f0901eb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lcom/android/email/l;->LR:Ljava/util/HashMap;

    const v3, 0x7f0901ec

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/android/email/l;->LR:Ljava/util/HashMap;

    const v3, 0x7f0901ed

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/android/email/l;->LR:Ljava/util/HashMap;

    const v3, 0x7f0901ee

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/android/email/l;->LR:Ljava/util/HashMap;

    const v3, 0x7f0901ef

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/android/email/l;->LR:Ljava/util/HashMap;

    const v3, 0x7f0901f0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 545
    :goto_0
    monitor-exit v2

    return v0

    .line 541
    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/email/l;->LR:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 542
    if-eqz v0, :cond_3

    .line 543
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 545
    goto :goto_0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
