.class public final Lcom/android/email/activity/setup/ak;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static t(Ljava/lang/String;)Lcom/android/email/activity/setup/ak;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/android/email/activity/setup/ak;

    invoke-direct {v0}, Lcom/android/email/activity/setup/ak;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 48
    const-string v2, "NoteDialogFragment.Note"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/ak;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v0
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ak;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/an;

    .line 89
    invoke-interface {v0}, Lcom/android/email/activity/setup/an;->ia()V

    .line 90
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ak;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ak;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NoteDialogFragment.Note"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/ak;->setCancelable(Z)V

    .line 60
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/email/activity/setup/am;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/am;-><init>(Lcom/android/email/activity/setup/ak;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/email/activity/setup/al;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/al;-><init>(Lcom/android/email/activity/setup/ak;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
