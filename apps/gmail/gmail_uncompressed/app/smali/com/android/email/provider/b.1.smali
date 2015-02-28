.class public final Lcom/android/email/provider/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static E(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->XO:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 82
    if-nez v1, :cond_0

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 86
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->Zs()Lcom/google/common/collect/x;

    move-result-object v0

    .line 88
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    new-instance v2, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 90
    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/Account;->b(Landroid/database/Cursor;)V

    .line 91
    invoke-virtual {v0, v2}, Lcom/google/common/collect/x;->aF(Ljava/lang/Object;)Lcom/google/common/collect/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 96
    invoke-virtual {v0}, Lcom/google/common/collect/x;->Zt()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized F(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 113
    const-class v1, Lcom/android/email/provider/b;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const v3, 0x7f0902db

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0902d9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0902d8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->Zs()Lcom/google/common/collect/x;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/collect/x;->h([Ljava/lang/Object;)Lcom/google/common/collect/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/google/common/collect/x;->Zt()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 114
    invoke-static {p0}, Lcom/android/email/provider/b;->E(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 115
    invoke-static {p0, v2, v0}, Lcom/android/email/provider/b;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    monitor-exit v1

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 160
    const/4 v1, 0x0

    .line 161
    const/4 v0, 0x0

    .line 163
    sget-object v3, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v4, "reconcileAccountsInternal"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 165
    invoke-static {}, Lcom/android/emailcommon/b/m;->mj()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "deferring reconciliation, migration in progress"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 167
    const/4 v4, 0x0

    .line 309
    :cond_0
    :goto_0
    return v4

    .line 171
    :cond_1
    const v3, 0x7f0902e8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/email/service/n;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 173
    invoke-static {p0}, Lcom/android/email/service/n;->S(Landroid/content/Context;)V

    .line 179
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    move v4, v2

    move v2, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 180
    iget-object v6, v0, Lcom/android/emailcommon/provider/Account;->NP:Ljava/lang/String;

    .line 181
    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {p0, v8, v9}, Lcom/android/email/service/n;->j(Landroid/content/Context;J)Lcom/android/email/service/o;

    move-result-object v7

    .line 187
    if-eqz v7, :cond_3

    iget-object v8, v7, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v10, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_16

    .line 189
    :cond_3
    if-eqz v7, :cond_6

    iget v1, v0, Lcom/android/emailcommon/provider/Account;->dM:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    .line 191
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "Account reconciler noticed incomplete account; ignoring"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 175
    :cond_4
    invoke-static {p0}, Lcom/android/email/service/n;->R(Landroid/content/Context;)V

    goto :goto_1

    .line 187
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 196
    :cond_6
    const/4 v4, 0x1

    .line 197
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Account deleted in AccountManager; deleting from provider: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 203
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 204
    sget-object v6, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "deleted account with hostAuth "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 205
    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    const v6, 0x7f0902e8

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 207
    const/4 v2, 0x1

    .line 210
    :cond_7
    invoke-static {p0}, Lcom/android/email/o;->r(Landroid/content/Context;)Lcom/android/email/m;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_8

    .line 213
    invoke-interface {v1, p0, v0}, Lcom/android/email/m;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 216
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "uiaccount"

    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v6, v8, v9}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 219
    add-int/lit8 v1, v3, 0x1

    move v0, v2

    move v2, v4

    :goto_4
    move v3, v1

    move v4, v2

    move v2, v0

    .line 223
    goto/16 :goto_2

    .line 226
    :cond_9
    const/4 v0, 0x0

    .line 227
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :cond_a
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 228
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 229
    invoke-static {p1, v6}, Lcom/android/email/provider/b;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 231
    const/4 v4, 0x1

    .line 233
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Account deleted from provider; deleting from AccountManager: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 238
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v6, v7}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 243
    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 253
    :goto_6
    const/4 v0, 0x1

    move v1, v0

    .line 254
    goto :goto_5

    .line 244
    :catch_0
    move-exception v0

    .line 245
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_6

    .line 246
    :catch_1
    move-exception v0

    .line 247
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_6

    .line 248
    :catch_2
    move-exception v0

    .line 249
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_6

    .line 259
    :cond_b
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 260
    invoke-static {p0, v6}, Lcom/android/email/service/n;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 262
    invoke-static {p0, v6}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v6

    .line 263
    if-eqz v6, :cond_c

    iget-boolean v7, v6, Lcom/android/email/service/o;->UT:Z

    if-nez v7, :cond_d

    .line 264
    :cond_c
    const-string v7, "com.android.calendar"

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 267
    :cond_d
    if-eqz v6, :cond_e

    iget-boolean v6, v6, Lcom/android/email/service/o;->US:Z

    if-nez v6, :cond_a

    .line 268
    :cond_e
    const-string v6, "com.android.contacts"

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 274
    :cond_f
    if-eqz v1, :cond_10

    .line 277
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->w(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->he()V

    .line 280
    :cond_10
    const v0, 0x7f0902eb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 284
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-lez v0, :cond_13

    const/4 v0, 0x1

    .line 285
    :goto_7
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    :goto_8
    const/4 v7, 0x1

    invoke-virtual {v6, v5, v1, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 290
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Setting compose activity to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_15

    const-string v0, "enabled"

    :goto_9
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 301
    :cond_11
    if-lez v3, :cond_0

    .line 302
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "Restarting because account deleted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 303
    if-eqz v2, :cond_12

    .line 304
    const v0, 0x7f0902e8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/email/service/n;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    :cond_12
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 284
    :cond_13
    const/4 v0, 0x0

    goto :goto_7

    .line 286
    :cond_14
    const/4 v1, 0x2

    goto :goto_8

    .line 290
    :cond_15
    const-string v0, "disabled"

    goto :goto_9

    :cond_16
    move v0, v2

    move v1, v3

    move v2, v4

    goto/16 :goto_4
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 141
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 142
    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->NP:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
