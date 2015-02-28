.class final Lcom/google/android/gm/drive/b;
.super Lcom/android/mail/ui/ca;
.source "SourceFile"


# instance fields
.field final synthetic bak:Lcom/google/android/gm/drive/d;

.field final synthetic bal:Lcom/google/android/gm/drive/a;


# direct methods
.method constructor <init>(Lcom/google/android/gm/drive/a;Ljava/lang/String;Landroid/app/Fragment;Lcom/google/android/gm/drive/d;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/gm/drive/b;->bal:Lcom/google/android/gm/drive/a;

    iput-object p4, p0, Lcom/google/android/gm/drive/b;->bak:Lcom/google/android/gm/drive/d;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/ca;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final xe()V
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gm/drive/b;->bal:Lcom/google/android/gm/drive/a;

    invoke-virtual {v0}, Lcom/google/android/gm/drive/a;->dismiss()V

    .line 93
    iget-object v0, p0, Lcom/google/android/gm/drive/b;->bal:Lcom/google/android/gm/drive/a;

    invoke-virtual {v0}, Lcom/google/android/gm/drive/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ComposeActivityGmail;

    .line 94
    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/drive/b;->bak:Lcom/google/android/gm/drive/d;

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/google/android/gm/drive/b;->bal:Lcom/google/android/gm/drive/a;

    invoke-static {v1}, Lcom/google/android/gm/drive/a;->a(Lcom/google/android/gm/drive/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeActivityGmail;->bP(Z)V

    goto :goto_0

    .line 98
    :cond_1
    const-string v1, "NONE_FIXABLE"

    iget-object v2, p0, Lcom/google/android/gm/drive/b;->bak:Lcom/google/android/gm/drive/d;

    iget-object v2, v2, Lcom/google/android/gm/drive/d;->ban:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/google/android/gm/drive/b;->bal:Lcom/google/android/gm/drive/a;

    invoke-static {v1}, Lcom/google/android/gm/drive/a;->b(Lcom/google/android/gm/drive/a;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gm/drive/b;->bal:Lcom/google/android/gm/drive/a;

    invoke-static {v2}, Lcom/google/android/gm/drive/a;->a(Lcom/google/android/gm/drive/a;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/ComposeActivityGmail;->n(IZ)V

    goto :goto_0

    .line 101
    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/drive/b;->bak:Lcom/google/android/gm/drive/d;

    iget-object v2, v2, Lcom/google/android/gm/drive/d;->bao:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gm/drive/b;->bal:Lcom/google/android/gm/drive/a;

    invoke-static {v3}, Lcom/google/android/gm/drive/a;->b(Lcom/google/android/gm/drive/a;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gm/drive/b;->bal:Lcom/google/android/gm/drive/a;

    invoke-static {v4}, Lcom/google/android/gm/drive/a;->a(Lcom/google/android/gm/drive/a;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gm/ComposeActivityGmail;->a(Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;IZ)V

    goto :goto_0
.end method
