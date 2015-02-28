.class public final Lcom/google/android/gm/av;
.super Lcom/google/android/gm/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gm/Z;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gm/o;-><init>(Lcom/google/android/gm/Z;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final Cx()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/av;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v0}, Lcom/google/android/gm/Z;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 42
    const v1, 0x7f0d0237

    iget-object v2, p0, Lcom/google/android/gm/av;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/av;->aWT:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gm/K;->F(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/K;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 44
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 45
    return-void
.end method

.method protected final dv(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gm/av;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v0}, Lcom/google/android/gm/Z;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 51
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 52
    const v1, 0x7f0d0238

    iget-object v2, p0, Lcom/google/android/gm/av;->mAccount:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/google/android/gm/preference/q;->J(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 54
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 55
    return-void
.end method

.method public final k(Lcom/google/android/gm/K;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/av;->bO(Z)V

    .line 60
    return-void
.end method

.method public final q(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/google/android/gm/o;->q(Landroid/os/Bundle;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gm/av;->aWQ:Lcom/google/android/gm/Z;

    const v1, 0x7f0400c2

    invoke-interface {v0, v1}, Lcom/google/android/gm/Z;->setContentView(I)V

    .line 27
    if-nez p1, :cond_1

    .line 28
    iget-object v0, p0, Lcom/google/android/gm/av;->aWT:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/gm/av;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/av;->mAccount:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/av;->aWT:Ljava/lang/String;

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/av;->Cx()V

    .line 35
    iget-object v0, p0, Lcom/google/android/gm/av;->aWT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/av;->dv(Ljava/lang/String;)V

    .line 37
    :cond_1
    return-void
.end method
