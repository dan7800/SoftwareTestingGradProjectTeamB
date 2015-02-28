.class public final Lcom/google/android/gm/vacation/i;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private brM:[Ljava/lang/String;

.field private brN:Lcom/google/android/gm/vacation/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static fw(Ljava/lang/String;)Lcom/google/android/gm/vacation/i;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/gm/vacation/i;

    invoke-direct {v0}, Lcom/google/android/gm/vacation/i;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 63
    const-string v2, "endDate"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/android/gm/vacation/i;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v0
.end method


# virtual methods
.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    check-cast p1, Lcom/google/android/gm/vacation/j;

    iput-object p1, p0, Lcom/google/android/gm/vacation/i;->brN:Lcom/google/android/gm/vacation/j;

    .line 73
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 101
    packed-switch p2, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gm/vacation/i;->brN:Lcom/google/android/gm/vacation/j;

    invoke-interface {v0}, Lcom/google/android/gm/vacation/j;->IH()V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gm/vacation/i;->brN:Lcom/google/android/gm/vacation/j;

    invoke-interface {v0}, Lcom/google/android/gm/vacation/j;->II()V

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gm/vacation/i;->brN:Lcom/google/android/gm/vacation/j;

    invoke-interface {v0}, Lcom/google/android/gm/vacation/j;->IJ()V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gm/vacation/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 80
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gm/vacation/i;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "endDate"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0901b1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0901b2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/google/android/gm/vacation/i;->brM:[Ljava/lang/String;

    .line 83
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gm/vacation/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/vacation/i;->brM:[Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final onDetach()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/vacation/i;->brN:Lcom/google/android/gm/vacation/j;

    .line 97
    return-void
.end method
