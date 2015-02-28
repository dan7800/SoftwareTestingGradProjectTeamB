.class public final Lcom/google/android/gm/ad;
.super Lcom/google/android/gm/o;
.source "SourceFile"


# instance fields
.field private aYH:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gm/Z;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gm/o;-><init>(Lcom/google/android/gm/Z;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected final Cx()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 50
    iget-object v0, p0, Lcom/google/android/gm/ad;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v0}, Lcom/google/android/gm/Z;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 51
    const v1, 0x7f0d01bb

    iget-object v2, p0, Lcom/google/android/gm/ad;->mAccount:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3, v4, v4}, Lcom/google/android/gm/K;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gm/K;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 54
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 55
    return-void
.end method

.method protected final dv(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gm/ad;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/ad;->mAccount:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gm/ad;->Cx()V

    .line 83
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ad;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v1}, Lcom/google/android/gm/Z;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 68
    iget-boolean v2, p0, Lcom/google/android/gm/ad;->aYH:Z

    if-nez v2, :cond_1

    .line 69
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 72
    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 74
    :cond_1
    const v2, 0x7f0d01bb

    iget-object v3, p0, Lcom/google/android/gm/ad;->mAccount:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/google/android/gm/preference/q;->J(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 76
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 78
    iget-object v1, p0, Lcom/google/android/gm/ad;->aWS:Landroid/app/ActionBar;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/google/android/gm/ad;->aWS:Landroid/app/ActionBar;

    const v1, 0x7f090335

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ad;->aWZ:Z

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ad;->bO(Z)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gm/ad;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v0}, Lcom/google/android/gm/Z;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public final k(Lcom/google/android/gm/K;)V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/google/android/gm/K;->CP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/android/gm/ad;->aWS:Landroid/app/ActionBar;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 89
    iget-object v0, p0, Lcom/google/android/gm/ad;->aWS:Landroid/app/ActionBar;

    const v1, 0x7f090335

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 95
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ad;->bO(Z)V

    .line 96
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ad;->aWS:Landroid/app/ActionBar;

    const v1, 0x7f090334

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 92
    iget-object v0, p0, Lcom/google/android/gm/ad;->aWS:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/google/android/gm/ad;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final q(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/google/android/gm/o;->q(Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gm/ad;->aWQ:Lcom/google/android/gm/Z;

    const v3, 0x7f04009f

    invoke-interface {v0, v3}, Lcom/google/android/gm/Z;->setContentView(I)V

    .line 35
    iget-object v0, p0, Lcom/google/android/gm/ad;->aWT:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/ad;->aYH:Z

    .line 36
    if-nez p1, :cond_2

    .line 37
    iget-boolean v0, p0, Lcom/google/android/gm/ad;->aYH:Z

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/google/android/gm/ad;->aWT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ad;->dv(Ljava/lang/String;)V

    .line 46
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 35
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/ad;->Cx()V

    goto :goto_1

    .line 43
    :cond_2
    const-string v0, "label-list-visible"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/ad;->aWZ:Z

    .line 44
    iget-boolean v0, p0, Lcom/google/android/gm/ad;->aWZ:Z

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/gm/ad;->bO(Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
