.class public final Lcom/android/email/activity/setup/w;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static p(Ljava/lang/String;)Lcom/android/email/activity/setup/w;
    .locals 3

    .prologue
    .line 515
    new-instance v0, Lcom/android/email/activity/setup/w;

    invoke-direct {v0}, Lcom/android/email/activity/setup/w;-><init>()V

    .line 516
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 517
    const-string v2, "account_name"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/w;->setArguments(Landroid/os/Bundle;)V

    .line 519
    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 542
    invoke-virtual {p0}, Lcom/android/email/activity/setup/w;->dismiss()V

    .line 543
    invoke-virtual {p0}, Lcom/android/email/activity/setup/w;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSecurity;

    .line 544
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSecurity;->b(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    if-nez v1, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 565
    :goto_0
    return-void

    .line 549
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 557
    :pswitch_0
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 558
    const-string v1, "Email/AccountSecurity"

    const-string v2, "User declines; repost notification"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 560
    :cond_1
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSecurity;->b(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->w(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSecurity;->b(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 562
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 551
    :pswitch_1
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 552
    const-string v1, "Email/AccountSecurity"

    const-string v2, "User accepts; advance to next step"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 554
    :cond_2
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSecurity;->b(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSecurity;->a(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0

    .line 549
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 524
    invoke-virtual {p0}, Lcom/android/email/activity/setup/w;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-virtual {p0}, Lcom/android/email/activity/setup/w;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 528
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 529
    const v1, 0x7f09027e

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 530
    const v1, 0x1010355

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 531
    const v1, 0x7f09027f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 532
    const v0, 0x104000a

    invoke-virtual {v3, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 533
    const/high16 v0, 0x1040000

    invoke-virtual {v3, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 534
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 535
    const-string v0, "Email/AccountSecurity"

    const-string v1, "Posting security needed dialog"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 537
    :cond_0
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
