.class final Lcom/google/android/gm/r;
.super Lcom/google/android/gm/c/h;
.source "SourceFile"


# instance fields
.field final synthetic aXl:Lcom/google/android/gm/ComposeActivityGmail;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ComposeActivityGmail;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/gm/r;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    const v3, 0x10002

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/c/h;-><init>(Landroid/app/Activity;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final CA()Lcom/google/android/gms/common/api/n;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public final CB()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/google/android/gm/c/h;->CB()V

    .line 156
    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v0

    const-string v1, "drive-client"

    invoke-virtual {v0, v1}, Lcom/android/mail/a/c;->bb(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public final CC()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Lcom/google/android/gm/c/h;->CC()V

    .line 162
    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v0

    const-string v1, "drive-client"

    invoke-virtual {v0, v1}, Lcom/android/mail/a/c;->bc(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 6

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/google/android/gm/c/h;->a(Lcom/google/android/gms/common/a;)V

    .line 186
    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v0

    const-string v1, "drive-client"

    const/4 v2, 0x1

    const-string v3, "drive_client"

    const-string v4, "failed"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mail/a/c;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "drive_client"

    const-string v2, "failed"

    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 190
    return-void
.end method

.method public final dz(I)V
    .locals 5

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/google/android/gm/c/h;->dz(I)V

    .line 179
    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v0

    const-string v1, "drive-client"

    const/4 v2, 0x0

    const-string v3, "drive_client"

    const-string v4, "suspended"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mail/a/c;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public final r(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 167
    invoke-super {p0, p1}, Lcom/google/android/gm/c/h;->r(Landroid/os/Bundle;)V

    .line 168
    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v0

    const-string v1, "drive-client"

    const-string v2, "drive_client"

    const-string v3, "connected"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/mail/a/c;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/gm/r;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v0}, Lcom/google/android/gm/ComposeActivityGmail;->a(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/gm/r;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v0}, Lcom/google/android/gm/ComposeActivityGmail;->a(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 172
    iget-object v0, p0, Lcom/google/android/gm/r;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeActivityGmail;->D()V

    .line 174
    :cond_0
    return-void
.end method
