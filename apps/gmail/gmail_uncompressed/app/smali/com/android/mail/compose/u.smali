.class public final Lcom/android/mail/compose/u;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private awy:Z

.field private awz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3090
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static b(IZLjava/util/ArrayList;)Lcom/android/mail/compose/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/mail/compose/u;"
        }
    .end annotation

    .prologue
    .line 3094
    new-instance v0, Lcom/android/mail/compose/u;

    invoke-direct {v0}, Lcom/android/mail/compose/u;-><init>()V

    .line 3095
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 3096
    const-string v2, "messageId"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3097
    const-string v2, "showToast"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3098
    const-string v2, "recipients"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3099
    invoke-virtual {v0, v1}, Lcom/android/mail/compose/u;->setArguments(Landroid/os/Bundle;)V

    .line 3100
    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 3121
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3122
    invoke-virtual {p0}, Lcom/android/mail/compose/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mail/compose/g;

    iget-boolean v1, p0, Lcom/android/mail/compose/u;->awy:Z

    iget-object v2, p0, Lcom/android/mail/compose/u;->awz:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/compose/g;ZLjava/util/ArrayList;)V

    .line 3124
    :cond_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 3105
    invoke-virtual {p0}, Lcom/android/mail/compose/u;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "messageId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3106
    invoke-virtual {p0}, Lcom/android/mail/compose/u;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "showToast"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/compose/u;->awy:Z

    .line 3107
    invoke-virtual {p0}, Lcom/android/mail/compose/u;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "recipients"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/u;->awz:Ljava/util/ArrayList;

    .line 3109
    const v0, 0x7f090097

    if-ne v1, v0, :cond_0

    const v0, 0x7f09012b

    .line 3112
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/mail/compose/u;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 3109
    :cond_0
    const v0, 0x7f09009b

    goto :goto_0
.end method
