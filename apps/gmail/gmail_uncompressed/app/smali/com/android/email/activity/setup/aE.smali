.class public final Lcom/android/email/activity/setup/aE;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private Pi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static aR(I)Lcom/android/email/activity/setup/aE;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lcom/android/email/activity/setup/aE;

    invoke-direct {v0}, Lcom/android/email/activity/setup/aE;-><init>()V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 59
    const-string v2, "CheckProgressDialog.Mode"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/aE;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v0
.end method


# virtual methods
.method protected final aS(I)V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aE;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/aE;->Pi:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aE;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 71
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/aE;->Pi:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/email/activity/setup/aE;->Pi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aE;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/aG;

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lcom/android/email/activity/setup/aG;->hF()V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Null callback in CheckSettings dialog onCancel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aE;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 79
    if-eqz p1, :cond_0

    .line 80
    const-string v0, "CheckProgressDialog.Progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/aE;->Pi:Ljava/lang/String;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/aE;->Pi:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aE;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "CheckProgressDialog.Mode"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aE;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/aE;->Pi:Ljava/lang/String;

    .line 90
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/aE;->setCancelable(Z)V

    .line 92
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 94
    iget-object v1, p0, Lcom/android/email/activity/setup/aE;->Pi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v1, -0x2

    const/high16 v2, 0x1040000

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/aF;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/aF;-><init>(Lcom/android/email/activity/setup/aE;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    return-object v0

    .line 84
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    const-string v0, "CheckProgressDialog.Progress"

    iget-object v1, p0, Lcom/android/email/activity/setup/aE;->Pi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method
