.class public final Lcom/android/email/activity/setup/aX;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static v(Ljava/lang/String;)Lcom/android/email/activity/setup/aX;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/android/email/activity/setup/aX;

    invoke-direct {v0}, Lcom/android/email/activity/setup/aX;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 60
    const-string v2, "SecurityRequiredDialog.HostName"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/aX;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v0
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aX;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/ba;

    .line 103
    if-eqz v0, :cond_0

    .line 104
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/ba;->Y(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 67
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aX;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aX;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 69
    const-string v2, "SecurityRequiredDialog.HostName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/aX;->setCancelable(Z)V

    .line 73
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09027a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09027b

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/aZ;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/aZ;-><init>(Lcom/android/email/activity/setup/aX;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/email/activity/setup/aY;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/aY;-><init>(Lcom/android/email/activity/setup/aX;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
