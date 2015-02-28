.class public Lcom/google/android/gm/LabelsActivity;
.super Lcom/google/android/gm/y;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/N;
.implements Lcom/google/android/gm/W;
.implements Lcom/google/android/gm/Z;


# instance fields
.field private aYF:Lcom/google/android/gm/Y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/gm/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final Cr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const v0, 0x7f0902f9

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Cu()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0}, Lcom/google/android/gm/Y;->Cu()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final Cv()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0}, Lcom/google/android/gm/Y;->Cv()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final Cw()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0}, Lcom/google/android/gm/Y;->Cw()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gm/X;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0, p1}, Lcom/google/android/gm/Y;->a(Lcom/google/android/gm/X;)V

    .line 88
    return-void
.end method

.method public final b(Lcom/google/android/gm/X;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0, p1}, Lcom/google/android/gm/Y;->b(Lcom/google/android/gm/X;)V

    .line 93
    return-void
.end method

.method public final dx(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0, p1}, Lcom/google/android/gm/Y;->du(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public final i(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0, p1}, Lcom/google/android/gm/Y;->i(Ljava/util/ArrayList;)V

    .line 118
    return-void
.end method

.method public final j(Lcom/google/android/gm/K;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0, p1}, Lcom/google/android/gm/Y;->k(Lcom/google/android/gm/K;)V

    .line 61
    return-void
.end method

.method public final j(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0, p1}, Lcom/google/android/gm/Y;->j(Ljava/util/ArrayList;)V

    .line 123
    return-void
.end method

.method public final notifyChanged()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0}, Lcom/google/android/gm/Y;->notifyChanged()V

    .line 98
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0}, Lcom/google/android/gm/Y;->Ct()Z

    .line 49
    invoke-super {p0}, Lcom/google/android/gm/y;->onBackPressed()V

    .line 51
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/google/android/gm/y;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-interface {p0}, Lcom/google/android/gm/Z;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->b(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gm/av;

    invoke-direct {v0, p0}, Lcom/google/android/gm/av;-><init>(Lcom/google/android/gm/Z;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    .line 29
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0, p1}, Lcom/google/android/gm/Y;->q(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gm/LabelsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 34
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 35
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 37
    :cond_0
    return-void

    .line 28
    :cond_1
    new-instance v0, Lcom/google/android/gm/ad;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ad;-><init>(Lcom/google/android/gm/Z;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0, p1}, Lcom/google/android/gm/Y;->g(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0, p1}, Lcom/google/android/gm/Y;->l(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/gm/y;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/google/android/gm/y;->onPause()V

    .line 43
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0}, Lcom/google/android/gm/Y;->Cs()V

    .line 44
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    const/4 v0, 0x1

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/android/gm/y;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->aYF:Lcom/google/android/gm/Y;

    invoke-interface {v0, p1}, Lcom/google/android/gm/Y;->p(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method
