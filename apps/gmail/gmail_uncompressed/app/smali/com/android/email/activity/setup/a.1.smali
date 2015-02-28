.class final Lcom/android/email/activity/setup/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/emailcommon/mail/MessagingException;",
        ">;"
    }
.end annotation


# instance fields
.field final Mf:I

.field final Mj:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

.field final Mk:Lcom/android/email/activity/setup/SetupDataFragment;

.field final Ml:Lcom/android/emailcommon/provider/Account;

.field final Mm:Ljava/lang/String;

.field final Mn:Ljava/lang/String;

.field final Mo:Ljava/lang/String;

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/email/activity/setup/SetupDataFragment;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 327
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/android/email/activity/setup/a;->mContext:Landroid/content/Context;

    .line 329
    iput-object p2, p0, Lcom/android/email/activity/setup/a;->Mj:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    .line 330
    iput p3, p0, Lcom/android/email/activity/setup/a;->Mf:I

    .line 331
    iput-object p4, p0, Lcom/android/email/activity/setup/a;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    .line 332
    invoke-virtual {p4}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/a;->Ml:Lcom/android/emailcommon/provider/Account;

    .line 333
    iget-object v0, p0, Lcom/android/email/activity/setup/a;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/email/activity/setup/a;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/a;->Mm:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/android/email/activity/setup/a;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/a;->Mn:Ljava/lang/String;

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/a;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->NP:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/a;->Mo:Ljava/lang/String;

    .line 341
    return-void

    .line 337
    :cond_0
    iput-object v1, p0, Lcom/android/email/activity/setup/a;->Mm:Ljava/lang/String;

    .line 338
    iput-object v1, p0, Lcom/android/email/activity/setup/a;->Mn:Ljava/lang/String;

    goto :goto_0
.end method

.method private varargs hm()Lcom/android/emailcommon/mail/MessagingException;
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 346
    :try_start_0
    iget v2, p0, Lcom/android/email/activity/setup/a;->Mf:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 347
    invoke-virtual {p0}, Lcom/android/email/activity/setup/a;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 442
    :goto_0
    return-object v0

    .line 348
    :cond_0
    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v3, "Begin auto-discover for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/email/activity/setup/a;->Mo:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 349
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/a;->publishProgress([Ljava/lang/Object;)V

    .line 350
    iget-object v2, p0, Lcom/android/email/activity/setup/a;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v3, p0, Lcom/android/email/activity/setup/a;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/email/mail/b;->a(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;

    move-result-object v2

    .line 351
    iget-object v3, p0, Lcom/android/email/activity/setup/a;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/a;->Mo:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/activity/setup/a;->Mn:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/email/mail/b;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 357
    if-nez v2, :cond_1

    .line 358
    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    goto :goto_0

    .line 360
    :cond_1
    const-string v3, "autodiscover_error_code"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 362
    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    .line 363
    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 364
    :cond_2
    if-eq v3, v0, :cond_3

    .line 365
    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 367
    :cond_3
    const-string v0, "autodiscover_host_auth"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/HostAuthCompat;

    .line 370
    if-eqz v0, :cond_4

    .line 371
    invoke-virtual {v0}, Lcom/android/emailcommon/service/HostAuthCompat;->lY()Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 373
    :cond_4
    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 378
    :cond_5
    iget v2, p0, Lcom/android/email/activity/setup/a;->Mf:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    .line 379
    invoke-virtual {p0}, Lcom/android/email/activity/setup/a;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v1

    goto :goto_0

    .line 380
    :cond_6
    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v3, "Begin check of incoming email settings"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 381
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/a;->publishProgress([Ljava/lang/Object;)V

    .line 382
    iget-object v2, p0, Lcom/android/email/activity/setup/a;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v3, p0, Lcom/android/email/activity/setup/a;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/email/mail/b;->a(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;

    move-result-object v2

    .line 383
    invoke-virtual {v2}, Lcom/android/email/mail/b;->iL()Landroid/os/Bundle;

    move-result-object v3

    .line 384
    if-nez v3, :cond_7

    .line 385
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto/16 :goto_0

    .line 387
    :cond_7
    iget-object v2, p0, Lcom/android/email/activity/setup/a;->Ml:Lcom/android/emailcommon/provider/Account;

    const-string v4, "validate_protocol_version"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/emailcommon/provider/Account;->XG:Ljava/lang/String;

    .line 389
    const-string v2, "validate_result_code"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 390
    const-string v4, "validate_redirect_address"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 392
    if-eqz v4, :cond_8

    .line 393
    iget-object v5, p0, Lcom/android/email/activity/setup/a;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iput-object v4, v5, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    .line 396
    :cond_8
    if-ne v2, v6, :cond_9

    iget-object v4, p0, Lcom/android/email/activity/setup/a;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/Account;->lF()Z

    move-result v4

    if-eqz v4, :cond_9

    move v2, v0

    .line 400
    :cond_9
    if-ne v2, v6, :cond_a

    .line 401
    iget-object v1, p0, Lcom/android/email/activity/setup/a;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    const-string v0, "validate_policy_set"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/SetupDataFragment;->c(Lcom/android/emailcommon/provider/Policy;)V

    .line 403
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    iget-object v1, p0, Lcom/android/email/activity/setup/a;->Mm:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :cond_a
    const/16 v4, 0x8

    if-ne v2, v4, :cond_b

    .line 405
    const-string v0, "validate_policy_set"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    .line 407
    iget-object v0, v0, Lcom/android/emailcommon/provider/Policy;->aag:Ljava/lang/String;

    .line 408
    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 410
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    iget-object v3, p0, Lcom/android/email/activity/setup/a;->Mm:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 411
    :cond_b
    if-eq v2, v0, :cond_c

    .line 413
    const-string v0, "validate_error_message"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v0, v2, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 420
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/setup/a;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v0, :cond_e

    .line 421
    iget-object v0, p0, Lcom/android/email/activity/setup/a;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    .line 422
    iget-object v2, p0, Lcom/android/email/activity/setup/a;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v0

    .line 429
    :goto_1
    if-eqz v0, :cond_d

    iget-boolean v0, v0, Lcom/android/email/service/o;->UK:Z

    if-eqz v0, :cond_10

    :cond_d
    iget v0, p0, Lcom/android/email/activity/setup/a;->Mf:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    .line 431
    invoke-virtual {p0}, Lcom/android/email/activity/setup/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    move-object v0, v1

    .line 425
    goto :goto_1

    .line 432
    :cond_f
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "Begin check of outgoing email settings"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 433
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/a;->publishProgress([Ljava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/android/email/activity/setup/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/a;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v2}, Lcom/android/email/mail/a;->f(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/a;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/android/email/mail/a;->close()V

    .line 436
    invoke-virtual {v0}, Lcom/android/email/mail/a;->open()V

    .line 437
    invoke-virtual {v0}, Lcom/android/email/mail/a;->close()V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_10
    move-object v0, v1

    .line 441
    goto/16 :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/android/email/activity/setup/a;->hm()Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 310
    check-cast p1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/a;->Mj:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->a(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/mail/MessagingException;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->lr()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/a;->Mj:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-static {v1, v0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->a(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/mail/MessagingException;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 310
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/a;->Mj:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->a(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/mail/MessagingException;)V

    :cond_0
    return-void
.end method
