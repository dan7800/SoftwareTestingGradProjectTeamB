.class public Lcom/android/ex/photo/g;
.super Landroid/support/v7/app/g;
.source "SourceFile"

# interfaces
.implements Lcom/android/ex/photo/t;


# instance fields
.field private agG:Lcom/android/ex/photo/k;

.field private agH:Lcom/android/ex/photo/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/app/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 118
    return-object p0
.end method

.method protected nF()Lcom/android/ex/photo/k;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/android/ex/photo/k;

    invoke-direct {v0, p0}, Lcom/android/ex/photo/k;-><init>(Lcom/android/ex/photo/t;)V

    return-object v0
.end method

.method public final nG()Lcom/android/ex/photo/k;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/ex/photo/g;->agG:Lcom/android/ex/photo/k;

    return-object v0
.end method

.method public final nH()Lcom/android/ex/photo/a;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/ex/photo/g;->agH:Lcom/android/ex/photo/c;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/android/ex/photo/c;

    invoke-virtual {p0}, Lcom/android/ex/photo/g;->cF()Landroid/support/v7/app/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/ex/photo/c;-><init>(Landroid/support/v7/app/a;)V

    iput-object v0, p0, Lcom/android/ex/photo/g;->agH:Lcom/android/ex/photo/c;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/g;->agH:Lcom/android/ex/photo/c;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/g;->onActivityResult(IILandroid/content/Intent;)V

    .line 113
    iget-object v0, p0, Lcom/android/ex/photo/g;->agG:Lcom/android/ex/photo/k;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/photo/k;->a(II)V

    .line 114
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/ex/photo/g;->agG:Lcom/android/ex/photo/k;

    invoke-virtual {v0}, Lcom/android/ex/photo/k;->cM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-super {p0}, Landroid/support/v7/app/g;->onBackPressed()V

    .line 87
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/ex/photo/g;->nF()Lcom/android/ex/photo/k;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/g;->agG:Lcom/android/ex/photo/k;

    .line 40
    iget-object v0, p0, Lcom/android/ex/photo/g;->agG:Lcom/android/ex/photo/k;

    invoke-virtual {v0, p1}, Lcom/android/ex/photo/k;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/ex/photo/g;->agG:Lcom/android/ex/photo/k;

    invoke-virtual {v0, p1}, Lcom/android/ex/photo/k;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/ex/photo/g;->agG:Lcom/android/ex/photo/k;

    invoke-virtual {v0}, Lcom/android/ex/photo/k;->onDestroy()V

    .line 79
    invoke-super {p0}, Landroid/support/v7/app/g;->onDestroy()V

    .line 80
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/ex/photo/g;->agG:Lcom/android/ex/photo/k;

    invoke-virtual {v0, p1}, Lcom/android/ex/photo/k;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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

.method protected onPause()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/ex/photo/g;->agG:Lcom/android/ex/photo/k;

    invoke-virtual {v0}, Lcom/android/ex/photo/k;->onPause()V

    .line 67
    invoke-super {p0}, Landroid/support/v7/app/g;->onPause()V

    .line 68
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/ex/photo/g;->agG:Lcom/android/ex/photo/k;

    invoke-virtual {v0}, Lcom/android/ex/photo/k;->nQ()Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v7/app/g;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/android/ex/photo/g;->agG:Lcom/android/ex/photo/k;

    invoke-virtual {v0}, Lcom/android/ex/photo/k;->onResume()V

    .line 62
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/android/ex/photo/g;->agG:Lcom/android/ex/photo/k;

    invoke-virtual {v0, p1}, Lcom/android/ex/photo/k;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/support/v7/app/g;->onStart()V

    .line 55
    iget-object v0, p0, Lcom/android/ex/photo/g;->agG:Lcom/android/ex/photo/k;

    invoke-virtual {v0}, Lcom/android/ex/photo/k;->onStart()V

    .line 56
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/ex/photo/g;->agG:Lcom/android/ex/photo/k;

    invoke-virtual {v0}, Lcom/android/ex/photo/k;->onStop()V

    .line 73
    invoke-super {p0}, Landroid/support/v7/app/g;->onStop()V

    .line 74
    return-void
.end method
