.class public final Lcom/google/android/gm/drive/j;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private awy:Z

.field private baD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;"
        }
    .end annotation
.end field

.field private baE:Lcom/google/android/gm/drive/FixPermissionDialogState;

.field private baj:I

.field private bat:Lcom/google/android/gm/drive/PotentialFix;

.field private bau:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static b(Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;IZ)Lcom/google/android/gm/drive/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/drive/PotentialFix;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/drive/FixPermissionDialogState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;IZ)",
            "Lcom/google/android/gm/drive/j;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v6, Lcom/google/android/gm/drive/j;

    invoke-direct {v6}, Lcom/google/android/gm/drive/j;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 56
    const-string v1, "fix"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    const-string v1, "role"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "dialogState"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    const-string v1, "potentialFixes"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 60
    const-string v1, "numFiles"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string v1, "showToast"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    invoke-virtual {v6, v0}, Lcom/google/android/gm/drive/j;->setArguments(Landroid/os/Bundle;)V

    .line 64
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "acl_fixer"

    const-string v2, "outside_domain_dialog"

    const-string v3, "shown"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 67
    return-object v6
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 6

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/android/gm/drive/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ComposeActivityGmail;

    iget-object v1, p0, Lcom/google/android/gm/drive/j;->baE:Lcom/google/android/gm/drive/FixPermissionDialogState;

    iget-object v2, p0, Lcom/google/android/gm/drive/j;->baD:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/gm/drive/j;->baj:I

    iget-boolean v4, p0, Lcom/google/android/gm/drive/j;->awy:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gm/ComposeActivityGmail;->a(Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;IZ)V

    .line 114
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "acl_fixer"

    const-string v2, "outside_domain_dialog"

    const-string v3, "cancel"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 116
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 98
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gm/drive/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ComposeActivityGmail;

    iget-object v1, p0, Lcom/google/android/gm/drive/j;->bat:Lcom/google/android/gm/drive/PotentialFix;

    iget-object v2, p0, Lcom/google/android/gm/drive/j;->bau:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gm/drive/j;->awy:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/ComposeActivityGmail;->a(Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;Z)V

    .line 101
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "acl_fixer"

    const-string v2, "outside_domain_dialog"

    const-string v3, "confirm"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 105
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gm/drive/j;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gm/drive/j;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 74
    const-string v0, "fix"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/drive/PotentialFix;

    iput-object v0, p0, Lcom/google/android/gm/drive/j;->bat:Lcom/google/android/gm/drive/PotentialFix;

    .line 75
    const-string v0, "role"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/j;->bau:Ljava/lang/String;

    .line 76
    const-string v0, "dialogState"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/drive/FixPermissionDialogState;

    iput-object v0, p0, Lcom/google/android/gm/drive/j;->baE:Lcom/google/android/gm/drive/FixPermissionDialogState;

    .line 77
    const-string v0, "potentialFixes"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/j;->baD:Ljava/util/ArrayList;

    .line 78
    const-string v0, "numFiles"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/drive/j;->baj:I

    .line 79
    const-string v0, "showToast"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/drive/j;->awy:Z

    .line 82
    iget-object v0, p0, Lcom/google/android/gm/drive/j;->bat:Lcom/google/android/gm/drive/PotentialFix;

    invoke-virtual {v0}, Lcom/google/android/gm/drive/PotentialFix;->Dw()Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110020

    iget v6, p0, Lcom/google/android/gm/drive/j;->baj:I

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "<br>"

    invoke-static {}, Landroid/support/v4/e/a;->aC()Landroid/support/v4/e/a;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v9, v0}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0903b4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012c

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
