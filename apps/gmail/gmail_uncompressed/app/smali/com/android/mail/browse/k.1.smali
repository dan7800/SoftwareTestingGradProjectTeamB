.class public final Lcom/android/mail/browse/k;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private final alp:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/android/mail/browse/l;

    invoke-direct {v0, p0}, Lcom/android/mail/browse/l;-><init>(Lcom/android/mail/browse/k;)V

    iput-object v0, p0, Lcom/android/mail/browse/k;->alp:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    return-void
.end method

.method public static q(Ljava/lang/CharSequence;)Lcom/android/mail/browse/k;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/android/mail/browse/k;

    invoke-direct {v0}, Lcom/android/mail/browse/k;-><init>()V

    .line 76
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string v2, "message"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/k;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public final b(Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 97
    const-string v0, "confirm-dialog"

    invoke-virtual {p0, p1, v0}, Lcom/android/mail/browse/k;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/mail/browse/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/mail/browse/k;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09012b

    iget-object v3, p0, Lcom/android/mail/browse/k;->alp:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09012c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
