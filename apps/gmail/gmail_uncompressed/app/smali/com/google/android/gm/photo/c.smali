.class public final Lcom/google/android/gm/photo/c;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/android/gm/photo/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog-error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 214
    invoke-virtual {p0}, Lcom/google/android/gm/photo/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x2328

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/f;->a(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/gm/photo/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mail/g/e;

    invoke-interface {v0}, Lcom/android/mail/g/e;->nG()Lcom/android/ex/photo/k;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/photo/b;

    invoke-virtual {v0}, Lcom/google/android/gm/photo/b;->DE()V

    .line 222
    return-void
.end method
