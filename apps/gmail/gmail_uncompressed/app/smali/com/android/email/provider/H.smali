.class public final Lcom/android/email/provider/H;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 59
    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/g;->XO:[Ljava/lang/String;

    const-string v3, "accountKey=? AND mailboxKey=? AND syncServerId=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v8, p2, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v8, p3, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 74
    if-nez v6, :cond_1

    .line 85
    if-eqz v6, :cond_0

    .line 86
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    const-class v0, Lcom/android/emailcommon/provider/g;

    invoke-static {p0, v6, v0}, Lcom/android/emailcommon/provider/EmailContent;->a(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/g;

    .line 81
    :goto_1
    iget-wide v2, p3, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/g;->YR:J

    .line 82
    iget-wide v2, p2, Lcom/android/emailcommon/provider/Account;->Ln:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/g;->Lq:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    iget-wide v2, v0, Lcom/android/emailcommon/provider/g;->Ln:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    iget-wide v2, v0, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/e;->q(Landroid/content/Context;J)Lcom/android/emailcommon/provider/e;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_5

    new-instance v1, Lcom/android/emailcommon/provider/e;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/e;-><init>()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v1

    :goto_3
    :try_start_3
    iget-wide v2, v0, Lcom/android/emailcommon/provider/g;->Lq:J

    iget-wide v4, v0, Lcom/android/emailcommon/provider/g;->YR:J

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/l;->a(Lcom/android/emailcommon/provider/g;Lcom/android/emailcommon/mail/Message;JJ)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/a/i;->a(Lcom/android/emailcommon/mail/j;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/android/emailcommon/b/c;->b(Ljava/util/ArrayList;)Lcom/android/emailcommon/b/d;

    move-result-object v3

    iget-boolean v4, v3, Lcom/android/emailcommon/b/d;->abi:Z

    iget-boolean v5, v3, Lcom/android/emailcommon/b/d;->abj:Z

    invoke-virtual {v0, v4, v5}, Lcom/android/emailcommon/provider/g;->c(ZZ)V

    iget-object v4, v3, Lcom/android/emailcommon/b/d;->abh:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/emailcommon/provider/g;->YZ:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/emailcommon/b/d;->abf:Ljava/lang/String;

    iput-object v4, v7, Lcom/android/emailcommon/provider/e;->Yz:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/emailcommon/b/d;->abg:Ljava/lang/String;

    iput-object v3, v7, Lcom/android/emailcommon/provider/e;->Yy:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/email/provider/H;->a(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    iget-wide v4, v0, Lcom/android/emailcommon/provider/g;->Ln:J

    iput-wide v4, v7, Lcom/android/emailcommon/provider/e;->Yq:J

    invoke-static {v7, p0}, Lcom/android/email/provider/H;->a(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    if-eq p4, v10, :cond_4

    const/4 v3, 0x4

    if-eq p4, v3, :cond_4

    invoke-static {p0, v0, v2}, Lcom/android/email/l;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/g;Ljava/util/ArrayList;)V

    invoke-static {p0, v0, v1}, Lcom/android/email/l;->b(Landroid/content/Context;Lcom/android/emailcommon/provider/g;Ljava/util/ArrayList;)V

    :goto_4
    iput p4, v0, Lcom/android/emailcommon/provider/g;->Vu:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "flagAttachment"

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/g;->YN:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "flagLoaded"

    iget v3, v0, Lcom/android/emailcommon/provider/g;->Vu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :goto_5
    if-eqz v6, :cond_0

    .line 86
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 79
    :cond_2
    :try_start_4
    new-instance v0, Lcom/android/emailcommon/provider/g;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/g;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 85
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_6
    if-eqz v1, :cond_3

    .line 86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 83
    :cond_4
    :try_start_5
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    const-string v2, ""

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lo:J

    const-string v2, "text/plain"

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ym:Ljava/lang/String;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/g;->Ln:J

    iput-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    iget-wide v2, v0, Lcom/android/emailcommon/provider/g;->Lq:J

    iput-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lq:J

    const/16 v2, 0x400

    iput v2, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ac(Landroid/content/Context;)Landroid/net/Uri;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/emailcommon/provider/g;->YN:Z
    :try_end_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_6
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while copying downloaded message."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_7
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while storing downloaded message."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_5

    :catch_2
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while storing attachment."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 85
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto/16 :goto_6

    :cond_5
    move-object v7, v1

    goto/16 :goto_3

    :cond_6
    move-object v1, v7

    goto/16 :goto_2
.end method

.method public static a(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->lF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->lB()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/emailcommon/provider/EmailContent;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent;->ac(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public static parseMode(Ljava/lang/String;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 208
    invoke-static {}, Lcom/android/mail/utils/ag;->Bg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v0

    .line 232
    :goto_0
    return v0

    .line 212
    :cond_0
    const-string v0, "r"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const/high16 v0, 0x10000000

    goto :goto_0

    .line 214
    :cond_1
    const-string v0, "w"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "wt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    :cond_2
    const/high16 v0, 0x2c000000

    goto :goto_0

    .line 218
    :cond_3
    const-string v0, "wa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    const/high16 v0, 0x2a000000

    goto :goto_0

    .line 222
    :cond_4
    const-string v0, "rw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    const/high16 v0, 0x38000000

    goto :goto_0

    .line 225
    :cond_5
    const-string v0, "rwt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    const/high16 v0, 0x3c000000    # 0.0078125f

    goto :goto_0

    .line 230
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad mode \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
