.class public final Lcom/android/mail/browse/g;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private ale:Lcom/android/mail/providers/Attachment;

.field private alf:Lcom/android/mail/browse/d;

.field private all:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static c(Lcom/android/mail/providers/Attachment;)Lcom/android/mail/browse/g;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/android/mail/browse/g;

    invoke-direct {v0}, Lcom/android/mail/browse/g;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 44
    const-string v2, "attachment"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/g;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v0
.end method


# virtual methods
.method public final d(Lcom/android/mail/providers/Attachment;)Z
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/mail/browse/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->uA()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/g;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->uA()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isIndeterminate()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    new-instance v0, Lcom/android/mail/browse/d;

    invoke-virtual {p0}, Lcom/android/mail/browse/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mail/browse/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mail/browse/g;->alf:Lcom/android/mail/browse/d;

    .line 64
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    .line 90
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/mail/browse/g;->alf:Lcom/android/mail/browse/d;

    iget-object v2, p0, Lcom/android/mail/browse/g;->ale:Lcom/android/mail/providers/Attachment;

    iget-object v2, v2, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/browse/d;->b(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 91
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 92
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/mail/browse/g;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    iput-object v0, p0, Lcom/android/mail/browse/g;->ale:Lcom/android/mail/providers/Attachment;

    .line 58
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 68
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/mail/browse/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 70
    iget-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mail/browse/g;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 72
    iget-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mail/browse/g;->ale:Lcom/android/mail/providers/Attachment;

    iget v1, v1, Lcom/android/mail/providers/Attachment;->size:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 74
    iget-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    .line 82
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 83
    return-void
.end method

.method public final setIndeterminate(Z)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 115
    :cond_0
    return-void
.end method

.method public final setProgress(I)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/mail/browse/g;->all:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 105
    :cond_0
    return-void
.end method
