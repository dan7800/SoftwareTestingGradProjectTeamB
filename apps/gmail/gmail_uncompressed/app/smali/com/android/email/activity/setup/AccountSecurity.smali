.class public Lcom/android/email/activity/setup/AccountSecurity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private MD:Z

.field private ME:Z

.field private MF:Z

.field protected MG:Z

.field private MH:Z

.field private MI:Lcom/android/email/activity/setup/t;

.field private MJ:Landroid/os/Bundle;

.field private Ml:Lcom/android/emailcommon/provider/Account;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 572
    return-void
.end method

.method static synthetic a(Lcom/android/email/activity/setup/AccountSecurity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/Account;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSecurity;->g(Lcom/android/emailcommon/provider/Account;)V

    return-void
.end method

.method private static a(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V
    .locals 3

    .prologue
    .line 489
    if-nez p0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 490
    :cond_0
    new-instance v0, Lcom/android/email/activity/setup/r;

    invoke-direct {v0, p1, p0}, Lcom/android/email/activity/setup/r;-><init>(Lcom/android/email/SecurityPolicy;Lcom/android/emailcommon/provider/Account;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/r;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSecurity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 117
    const-string v1, "SHOW_DIALOG"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    return-object v0
.end method

.method static synthetic b(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->Ml:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic b(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V
    .locals 0

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/android/email/activity/setup/AccountSecurity;->a(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    return-void
.end method

.method public static c(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 128
    new-instance v1, Lcom/android/email/activity/setup/ForwardingIntent;

    const-class v0, Lcom/android/email/activity/setup/AccountSecurity;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/setup/ForwardingIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    const-string v0, "ACCOUNT_ID"

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 130
    if-eqz p3, :cond_0

    const-string v0, "EXPIRED"

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    return-object v1

    .line 130
    :cond_0
    const-string v0, "EXPIRING"

    goto :goto_0
.end method

.method private g(Lcom/android/emailcommon/provider/Account;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 378
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->w(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->hj()Z

    move-result v1

    if-nez v1, :cond_5

    .line 381
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSecurity;->MD:Z

    if-eqz v1, :cond_1

    .line 382
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 383
    const-string v1, "Email/AccountSecurity"

    const-string v2, "Not active admin: repost notification"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 385
    :cond_0
    invoke-static {p1, v0}, Lcom/android/email/activity/setup/AccountSecurity;->a(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 482
    :goto_0
    return-void

    .line 388
    :cond_1
    iput-boolean v6, p0, Lcom/android/email/activity/setup/AccountSecurity;->MD:Z

    .line 390
    iget-object v1, p1, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    .line 391
    if-nez v1, :cond_3

    .line 392
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 393
    const-string v1, "Email/AccountSecurity"

    const-string v2, "No HostAuth: repost notification"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 395
    :cond_2
    invoke-static {p1, v0}, Lcom/android/email/activity/setup/AccountSecurity;->a(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 398
    :cond_3
    sget-boolean v2, Lcom/android/email/b;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 399
    const-string v2, "Email/AccountSecurity"

    const-string v3, "Not active admin: post initial notification"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 402
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    const-string v3, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->hk()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 405
    const-string v0, "android.app.extra.ADD_EXPLANATION"

    const v3, 0x7f090287

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/email/activity/setup/AccountSecurity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v2, v6}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 416
    :cond_5
    invoke-virtual {v0, v2}, Lcom/android/email/SecurityPolicy;->a(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 417
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 418
    const-string v1, "Email/AccountSecurity"

    const-string v2, "Security active; clear holds"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 420
    :cond_6
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->ab(Landroid/content/Context;)V

    .line 421
    invoke-virtual {v0, p1}, Lcom/android/email/SecurityPolicy;->d(Lcom/android/emailcommon/provider/Account;)V

    .line 422
    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->hh()V

    .line 423
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 428
    :cond_7
    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->hg()V

    .line 432
    invoke-virtual {v0, v2}, Lcom/android/email/SecurityPolicy;->b(Lcom/android/emailcommon/provider/Policy;)I

    move-result v1

    .line 435
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_b

    .line 436
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSecurity;->ME:Z

    if-eqz v1, :cond_9

    .line 437
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 438
    const-string v1, "Email/AccountSecurity"

    const-string v2, "Password needed; repost notification"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 440
    :cond_8
    invoke-static {p1, v0}, Lcom/android/email/activity/setup/AccountSecurity;->a(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 441
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0

    .line 443
    :cond_9
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 444
    const-string v0, "Email/AccountSecurity"

    const-string v1, "Password needed; request it via DPM"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 446
    :cond_a
    iput-boolean v6, p0, Lcom/android/email/activity/setup/AccountSecurity;->ME:Z

    .line 448
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 455
    :cond_b
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_f

    .line 456
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSecurity;->MF:Z

    if-eqz v1, :cond_d

    .line 457
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 458
    const-string v1, "Email/AccountSecurity"

    const-string v2, "Encryption needed; repost notification"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 460
    :cond_c
    invoke-static {p1, v0}, Lcom/android/email/activity/setup/AccountSecurity;->a(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 461
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0

    .line 463
    :cond_d
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 464
    const-string v0, "Email/AccountSecurity"

    const-string v1, "Encryption needed; request it via DPM"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 466
    :cond_e
    iput-boolean v6, p0, Lcom/android/email/activity/setup/AccountSecurity;->MF:Z

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.START_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 475
    :cond_f
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_10

    .line 476
    const-string v1, "Email/AccountSecurity"

    const-string v2, "Policies enforced; clear holds"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 478
    :cond_10
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->ab(Landroid/content/Context;)V

    .line 479
    invoke-virtual {v0, p1}, Lcom/android/email/SecurityPolicy;->d(Lcom/android/emailcommon/provider/Account;)V

    .line 480
    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->hh()V

    .line 481
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0
.end method

.method private hy()V
    .locals 4

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->MG:Z

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity;->MJ:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSecurity;->MI:Lcom/android/email/activity/setup/t;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 220
    :cond_0
    return-void
.end method

.method public static l(J)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "auth://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->XX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACCOUNT_SECURITY/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 97
    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/b/k;->a(Landroid/net/Uri$Builder;J)V

    .line 98
    const-string v1, "SHOW_DIALOG"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/android/emailcommon/provider/Account;ZZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 316
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSecurity;->Ml:Lcom/android/emailcommon/provider/Account;

    .line 319
    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 321
    const-string v1, "password_expiration"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSecurity;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/android/email/activity/setup/v;->a(Ljava/lang/String;Z)Lcom/android/email/activity/setup/v;

    move-result-object v1

    .line 325
    sget-boolean v2, Lcom/android/email/b;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 326
    const-string v2, "Email/AccountSecurity"

    const-string v3, "Showing password expiration dialog"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 328
    :cond_1
    const-string v2, "password_expiration"

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/setup/v;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 353
    :cond_2
    :goto_0
    return-void

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->XJ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 335
    if-eqz p2, :cond_5

    .line 337
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 338
    const-string v1, "security_needed"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 339
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSecurity;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/activity/setup/w;->p(Ljava/lang/String;)Lcom/android/email/activity/setup/w;

    move-result-object v1

    .line 341
    sget-boolean v2, Lcom/android/email/b;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 342
    const-string v2, "Email/AccountSecurity"

    const-string v3, "Showing security needed dialog"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 344
    :cond_4
    const-string v2, "security_needed"

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/setup/w;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSecurity;->g(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0

    .line 352
    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0
.end method

.method protected final hx()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->MH:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSecurity;->g(Lcom/android/emailcommon/provider/Account;)V

    .line 361
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 362
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mHandler:Landroid/os/Handler;

    .line 140
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 143
    if-nez v2, :cond_1

    .line 146
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 147
    invoke-static {v0}, Lcom/android/emailcommon/b/k;->b(Landroid/content/Intent;)J

    move-result-wide v4

    .line 148
    const-string v3, "ACCOUNT_ID"

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v3, "SHOW_DIALOG"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 152
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 154
    :goto_0
    const-string v3, "SHOW_DIALOG"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    :goto_1
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->w(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->hh()V

    .line 162
    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 183
    :cond_0
    :goto_2
    return-void

    .line 156
    :cond_1
    const-string v2, "ACCOUNT_ID"

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 157
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    move-wide v4, v2

    move-object v2, v0

    goto :goto_1

    .line 167
    :cond_2
    if-eqz p1, :cond_3

    .line 168
    const-string v0, "initialized"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->MG:Z

    .line 170
    const-string v0, "triedAddAdministrator"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->MD:Z

    .line 172
    const-string v0, "triedSetpassword"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->ME:Z

    .line 174
    const-string v0, "triedSetEncryption"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->MF:Z

    .line 177
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->Ml:Lcom/android/emailcommon/provider/Account;

    .line 180
    :cond_3
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->MG:Z

    if-nez v0, :cond_0

    .line 181
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSecurity;->MJ:Landroid/os/Bundle;

    new-instance v0, Lcom/android/email/activity/setup/t;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/t;-><init>(Lcom/android/email/activity/setup/AccountSecurity;B)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->MI:Lcom/android/email/activity/setup/t;

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSecurity;->hy()V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->MH:Z

    .line 201
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->MH:Z

    .line 207
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSecurity;->hy()V

    .line 208
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    const-string v0, "initialized"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSecurity;->MG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    const-string v0, "triedAddAdministrator"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSecurity;->MD:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    const-string v0, "triedSetpassword"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSecurity;->ME:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    const-string v0, "triedSetEncryption"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSecurity;->MF:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    const-string v0, "account"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSecurity;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 195
    return-void
.end method
