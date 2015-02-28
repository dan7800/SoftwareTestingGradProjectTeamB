.class public Lcom/google/android/gm/GmailIntentService;
.super Lcom/android/mail/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "GmailIntentService"

    invoke-direct {p0, v0}, Lcom/android/mail/f;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private a(Landroid/content/Intent;Z)V
    .locals 7

    .prologue
    .line 149
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    const-string v0, "extraMessageSubject"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    const-string v0, "extraConversationId"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 152
    if-eqz p2, :cond_0

    const v6, 0x7f11001d

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gm/GmailIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gm/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 156
    return-void

    .line 152
    :cond_0
    const v6, 0x7f11001c

    goto :goto_0
.end method

.method private i(ZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-static {}, Lcom/google/android/gm/b/a;->tg()V

    .line 168
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.google"

    sget-object v3, Lcom/google/android/gm/a;->aWC:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 175
    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 177
    if-eqz p2, :cond_3

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gm/GmailIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gm/provider/MailEngine;->d(Landroid/content/Context;[Landroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_1
    if-eqz p1, :cond_2

    .line 194
    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    .line 197
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/google/android/gm/provider/GmailProvider;->ca(Landroid/content/Context;)V

    .line 198
    return-void

    .line 181
    :cond_3
    :try_start_1
    invoke-static {p0, v0}, Lcom/google/android/gm/ay;->a(Landroid/content/Context;[Landroid/accounts/Account;)V

    if-eqz p1, :cond_1

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 185
    :try_start_2
    sget-object v1, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v2, "Unexpected exception trying to get accounts."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    if-eqz p1, :cond_2

    .line 194
    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    goto :goto_0

    .line 186
    :catch_1
    move-exception v0

    .line 188
    :try_start_3
    sget-object v1, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v2, "Unexpected exception trying to get accounts."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    if-eqz p1, :cond_2

    .line 194
    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    goto :goto_0

    .line 189
    :catch_2
    move-exception v0

    .line 191
    :try_start_4
    sget-object v1, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v2, "Unexpected exception trying to get accounts."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 193
    if-eqz p1, :cond_2

    .line 194
    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_4

    .line 194
    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    :cond_4
    throw v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/mail/f;->onHandleIntent(Landroid/content/Intent;)V

    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "GmailIS"

    const-string v2, "Handling %s // %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 65
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/GmailIntentService;->i(ZZ)V

    .line 72
    invoke-static {p0}, Lcom/google/android/gm/ay;->bh(Landroid/content/Context;)V

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    const-string v0, "extra_download_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/g;->aa(J)Ljava/lang/String;

    move-result-object v0

    .line 78
    if-nez v0, :cond_3

    .line 79
    sget-object v0, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v2, "DownloadManager account = null for download %d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/GmailIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v2, "Error handling intent %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 87
    :cond_3
    :try_start_1
    invoke-static {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/google/android/gm/B;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gm/B;-><init>(Lcom/google/android/gm/GmailIntentService;Lcom/google/android/gm/provider/MailEngine;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 94
    :cond_4
    const-string v1, "com.google.android.gm.intent.CLEAR_ALL_NEW_MAIL_NOTIFICATIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 96
    invoke-static {p0}, Lcom/android/mail/utils/N;->az(Landroid/content/Context;)V

    goto :goto_0

    .line 97
    :cond_5
    const-string v1, "com.android.mail.action.update_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/GmailProvider;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v3

    new-instance v2, Lcom/google/android/gm/preference/i;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gm/preference/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/mail/i/a;->to()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "notificationLabel"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/MailEngine;->el(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "GmailIS"

    const-string v3, "Tried to notify for a hidden label"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, "GmailIS"

    const-string v3, "    %s / %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v1, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    invoke-static {p0, v0, v2}, Lcom/google/android/gm/persistence/b;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p0, v0, v2}, Lcom/google/android/gm/ay;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v4

    invoke-static {p0, v0}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v2, Lcom/google/android/gm/preference/j;

    invoke-direct {v2, p0, v0, v4, v1}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    invoke-virtual {v2}, Lcom/android/mail/i/e;->to()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "count"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "unseenCount"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "getAttention"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    new-instance v6, Lcom/google/android/gm/photo/a;

    invoke-direct {v6}, Lcom/google/android/gm/photo/a;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mail/utils/N;->a(Landroid/content/Context;IILcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;ZLcom/android/mail/g/a;)V

    goto/16 :goto_0

    .line 99
    :cond_7
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 100
    const-string v0, "GmailIS"

    const-string v1, "Receive LOGIN_ACCOUNTS_CHANGED intent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 102
    invoke-static {p0}, Lcom/google/android/gm/ay;->bf(Landroid/content/Context;)V

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/GmailIntentService;->i(ZZ)V

    goto/16 :goto_0

    .line 104
    :cond_8
    const-string v1, "com.google.android.gm.intent.VALIDATE_ACCOUNT_NOTIFICATIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 105
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {p0, v0}, Lcom/google/android/gm/provider/GmailProvider;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mail/utils/N;->d(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    goto/16 :goto_0

    .line 109
    :cond_9
    const-string v1, "com.google.android.gm.intent.ACTION_POST_SEND_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/GmailIntentService;->a(Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 111
    :cond_a
    const-string v1, "com.google.android.gm.intent.ACTION_POST_SAVE_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/GmailIntentService;->a(Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 113
    :cond_b
    const-string v1, "com.google.android.gm.intent.ACTION_PROVIDER_CREATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mail.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v1, "update-all-widgets"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const-string v1, "application/gmail-ls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Lcom/google/android/gm/GmailIntentService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 120
    :cond_c
    const-string v1, "com.google.android.gm.intent.ACTION_UPGRADE_SYNC_WINDOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 130
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Gc()Lcom/google/android/gm/provider/MailSync;

    move-result-object v0

    .line 133
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->bY(Landroid/content/Context;)J

    move-result-wide v2

    .line 134
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->Ey()J

    move-result-wide v0

    .line 136
    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 137
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gm/persistence/b;->bN(Landroid/content/Context;)V

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gm.intent.ACTION_DISPLAY_SYNC_WINDOW_UPGRADE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/GmailIntentService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 140
    :cond_d
    const-string v1, "com.android.mail.action.BACKUP_DATA_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const-string v0, "Broadcast - preferences"

    invoke-static {v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->dataChanged(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final oo()Lcom/android/mail/g/a;
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/google/android/gm/photo/a;

    invoke-direct {v0}, Lcom/google/android/gm/photo/a;-><init>()V

    return-object v0
.end method
