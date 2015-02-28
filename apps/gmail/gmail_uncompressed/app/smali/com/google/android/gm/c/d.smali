.class public final Lcom/google/android/gm/c/d;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private bqX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static T(II)Lcom/google/android/gm/c/d;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gm/c/d;

    invoke-direct {v0}, Lcom/google/android/gm/c/d;-><init>()V

    .line 20
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 21
    const-string v2, "error-code"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    const-string v2, "request-code"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gm/c/d;->setArguments(Landroid/os/Bundle;)V

    .line 24
    return-object v0
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/android/gm/c/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error-code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gm/c/d;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "request-code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/c/d;->bqX:I

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gm/c/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gm/c/d;->bqX:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/f;->a(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/gm/c/d;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 47
    instance-of v1, v0, Lcom/google/android/gm/c/e;

    if-eqz v1, :cond_0

    .line 48
    check-cast v0, Lcom/google/android/gm/c/e;

    iget v1, p0, Lcom/google/android/gm/c/d;->bqX:I

    invoke-interface {v0, v1}, Lcom/google/android/gm/c/e;->dy(I)V

    .line 50
    :cond_0
    return-void
.end method
