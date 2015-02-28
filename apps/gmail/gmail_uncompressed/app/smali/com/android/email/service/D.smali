.class public Lcom/android/email/service/D;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private VF:Lcom/android/email/service/E;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/service/D;->VF:Lcom/android/email/service/E;

    .line 55
    return-void
.end method

.method private static a(Landroid/content/Context;JLandroid/os/Bundle;Landroid/content/SyncResult;ZI)V
    .locals 15

    .prologue
    .line 105
    invoke-static {p0}, Lcom/android/emailcommon/e;->V(Landroid/content/Context;)V

    .line 106
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    .line 107
    if-nez v9, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-wide v2, v9, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v10

    .line 109
    if-eqz v10, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 111
    invoke-virtual {v10, p0}, Lcom/android/emailcommon/provider/Account;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 112
    iget v3, v9, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    const v3, 0x7f0902e5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0902e7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v9, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget v3, v9, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    iget v3, v9, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_6

    .line 116
    sget-object v3, Lcom/android/emailcommon/provider/g;->YF:Landroid/net/Uri;

    const-string v4, "mailboxKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v8, v9, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v9, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 120
    :cond_6
    const-string v3, "PopImapSyncService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "About to sync mailbox: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v9, Lcom/android/emailcommon/provider/Mailbox;->Xy:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 122
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 123
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 125
    if-eqz p5, :cond_7

    const/4 v3, 0x1

    move v8, v3

    .line 127
    :goto_2
    const-string v3, "uiSyncStatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v12, v13, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    const v3, 0x7f0902e5

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 133
    iget v3, v9, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    .line 134
    iget-wide v4, v10, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {p0, v4, v5}, Lcom/android/email/service/l;->h(Landroid/content/Context;J)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_3
    const-string v3, "uiSyncStatus"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v3, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v12, v13, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 125
    :cond_7
    const/4 v3, 0x4

    move v8, v3

    goto :goto_2

    .line 136
    :cond_8
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v8, v3}, Lcom/android/mail/providers/E;->P(II)I

    move-result v7

    .line 138
    const/4 v6, 0x1

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/emailcommon/service/n;->a(Landroid/content/ContentResolver;Landroid/os/Bundle;JII)V

    .line 141
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 142
    if-eqz p6, :cond_9

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, p5

    invoke-static {p0, v10, v9, v3, v0}, Lcom/android/email/service/ImapService;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZ)I

    .line 148
    :goto_5
    const/4 v6, 0x0

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/emailcommon/service/n;->a(Landroid/content/ContentResolver;Landroid/os/Bundle;JII)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 151
    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/MessagingException;->lr()I

    move-result v3

    .line 154
    sparse-switch v3, :sswitch_data_0

    .line 177
    const/4 v3, 0x5

    invoke-static {v8, v3}, Lcom/android/mail/providers/E;->P(II)I

    move-result v7

    .line 179
    const/4 v6, 0x2

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/emailcommon/service/n;->a(Landroid/content/ContentResolver;Landroid/os/Bundle;JII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 185
    :catchall_0
    move-exception v3

    const-string v4, "uiSyncStatus"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v4, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v12, v13, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    throw v3

    .line 142
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 145
    :cond_a
    :try_start_3
    move/from16 v0, p6

    invoke-static {p0, v10, v9, v0}, Lcom/android/email/service/Pop3Service;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)I
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 156
    :sswitch_0
    const/4 v3, 0x1

    :try_start_4
    invoke-static {v8, v3}, Lcom/android/mail/providers/E;->P(II)I

    move-result v7

    .line 158
    const/4 v6, 0x2

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/emailcommon/service/n;->a(Landroid/content/ContentResolver;Landroid/os/Bundle;JII)V

    .line 160
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_3

    .line 163
    :sswitch_1
    const/4 v3, 0x2

    invoke-static {v8, v3}, Lcom/android/mail/providers/E;->P(II)I

    move-result v7

    .line 165
    const/4 v6, 0x2

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/emailcommon/service/n;->a(Landroid/content/ContentResolver;Landroid/os/Bundle;JII)V

    .line 167
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    goto/16 :goto_3

    .line 170
    :sswitch_2
    const/4 v3, 0x6

    invoke-static {v8, v3}, Lcom/android/mail/providers/E;->P(II)I

    move-result v7

    .line 172
    const/4 v6, 0x2

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/emailcommon/service/n;->a(Landroid/content/ContentResolver;Landroid/os/Bundle;JII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x13 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 11

    .prologue
    .line 49
    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->XO:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v8

    if-eqz v8, :cond_c

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v5, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/Account;-><init>()V

    invoke-virtual {v5, v8}, Lcom/android/emailcommon/provider/Account;->b(Landroid/database/Cursor;)V

    const-string v0, "upload"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "PopImapSyncService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upload sync request for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lcom/android/emailcommon/provider/Account;->Xy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v1, Lcom/android/emailcommon/provider/g;->YF:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "mailboxKey"

    aput-object v3, v2, v0

    const-string v3, "accountKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v6, v5, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Lcom/android/email/service/D;->a(Landroid/content/Context;JLandroid/os/Bundle;Landroid/content/SyncResult;ZI)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :cond_9
    :try_start_8
    const-string v0, "PopImapSyncService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sync request for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lcom/android/emailcommon/provider/Account;->Xy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "PopImapSyncService"

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-wide v0, v5, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {p0, v0, v1}, Lcom/android/email/service/n;->i(Landroid/content/Context;J)Lcom/android/emailcommon/service/a;

    move-result-object v0

    iget-wide v2, v5, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/service/a;->B(J)V

    invoke-static {p2}, Lcom/android/emailcommon/provider/Mailbox;->i(Landroid/os/Bundle;)[J

    move-result-object v0

    if-eqz v0, :cond_a

    array-length v1, v0

    if-nez v1, :cond_b

    :cond_a
    iget-wide v2, v5, Lcom/android/emailcommon/provider/Account;->Ln:J

    const/4 v1, 0x0

    invoke-static {p0, v2, v3, v1}, Lcom/android/emailcommon/provider/Mailbox;->c(Landroid/content/Context;JI)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    :cond_b
    move-object v9, v0

    if-eqz v9, :cond_c

    const-string v0, "expedited"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v0, "__deltaMessageCount__"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    array-length v10, v9

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v10, :cond_c

    aget-wide v2, v9, v0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Lcom/android/email/service/D;->a(Landroid/content/Context;JLandroid/os/Bundle;Landroid/content/SyncResult;ZI)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v8, v6

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v8, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v6

    goto/16 :goto_2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/email/service/D;->VF:Lcom/android/email/service/E;

    invoke-virtual {v0}, Lcom/android/email/service/E;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 73
    new-instance v0, Lcom/android/email/service/E;

    invoke-virtual {p0}, Lcom/android/email/service/D;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/service/E;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/service/D;->VF:Lcom/android/email/service/E;

    .line 74
    return-void
.end method
