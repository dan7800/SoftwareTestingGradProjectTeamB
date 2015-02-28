.class final Lcom/google/android/gm/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/u",
        "<",
        "Lcom/google/android/gms/drive/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aXl:Lcom/google/android/gm/ComposeActivityGmail;

.field final synthetic aXm:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ComposeActivityGmail;Lcom/google/android/gms/drive/DriveId;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/google/android/gm/s;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    iput-object p2, p0, Lcom/google/android/gm/s;->aXm:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/t;)V
    .locals 5

    .prologue
    .line 521
    check-cast p1, Lcom/google/android/gms/drive/k;

    invoke-interface {p1}, Lcom/google/android/gms/drive/k;->LW()Lcom/google/android/gms/drive/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/s;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    iget-object v2, p0, Lcom/google/android/gm/s;->aXm:Lcom/google/android/gms/drive/DriveId;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/DriveId;->LV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/drive/m;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/drive/m;->LX()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/drive/m;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/android/gm/ComposeActivityGmail;->a(Lcom/google/android/gm/ComposeActivityGmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/s;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v1}, Lcom/google/android/gm/ComposeActivityGmail;->h(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/s;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v2}, Lcom/google/android/gm/ComposeActivityGmail;->i(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gm/s;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v2}, Lcom/google/android/gm/ComposeActivityGmail;->j(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gm/s;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v3}, Lcom/google/android/gm/ComposeActivityGmail;->k(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/s;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v2}, Lcom/google/android/gm/ComposeActivityGmail;->l(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method
