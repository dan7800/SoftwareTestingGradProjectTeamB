.class public abstract Lcom/android/ex/photo/a/b;
.super Landroid/support/v4/view/U;
.source "SourceFile"


# instance fields
.field private aib:Landroid/support/v4/app/z;

.field private aic:Landroid/support/v4/app/Fragment;

.field private aid:Landroid/support/v4/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/g",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final ck:Landroid/support/v4/app/p;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/p;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/support/v4/view/U;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/android/ex/photo/a/b;->aib:Landroid/support/v4/app/z;

    .line 53
    iput-object v0, p0, Lcom/android/ex/photo/a/b;->aic:Landroid/support/v4/app/Fragment;

    .line 55
    new-instance v0, Lcom/android/ex/photo/a/c;

    invoke-direct {v0, p0}, Lcom/android/ex/photo/a/c;-><init>(Lcom/android/ex/photo/a/b;)V

    iput-object v0, p0, Lcom/android/ex/photo/a/b;->aid:Landroid/support/v4/f/g;

    .line 58
    iput-object p1, p0, Lcom/android/ex/photo/a/b;->ck:Landroid/support/v4/app/p;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/android/ex/photo/a/b;)Landroid/support/v4/app/z;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/ex/photo/a/b;->aib:Landroid/support/v4/app/z;

    return-object v0
.end method


# virtual methods
.method protected K(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:switcher:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/ex/photo/a/b;->aib:Landroid/support/v4/app/z;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/ex/photo/a/b;->ck:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->H()Landroid/support/v4/app/z;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/a/b;->aib:Landroid/support/v4/app/z;

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/ex/photo/a/b;->K(II)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/ex/photo/a/b;->aid:Landroid/support/v4/f/g;

    invoke-virtual {v1, v0}, Landroid/support/v4/f/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/android/ex/photo/a/b;->ck:Landroid/support/v4/app/p;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/p;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 85
    iget-object v1, p0, Lcom/android/ex/photo/a/b;->aib:Landroid/support/v4/app/z;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/z;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/android/ex/photo/a/b;->aic:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_1

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 100
    :cond_1
    :goto_1
    return-object v0

    .line 87
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/ex/photo/a/b;->bH(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 88
    if-nez v0, :cond_3

    .line 90
    const/4 v0, 0x0

    goto :goto_1

    .line 93
    :cond_3
    iget-object v1, p0, Lcom/android/ex/photo/a/b;->aib:Landroid/support/v4/app/z;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lcom/android/ex/photo/a/b;->K(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/z;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;

    goto :goto_0
.end method

.method public final a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/ex/photo/a/b;->aib:Landroid/support/v4/app/z;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/ex/photo/a/b;->ck:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->H()Landroid/support/v4/app/z;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/a/b;->aib:Landroid/support/v4/app/z;

    .line 111
    :cond_0
    check-cast p3, Landroid/support/v4/app/Fragment;

    .line 112
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 113
    if-nez v0, :cond_1

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/ex/photo/a/b;->K(II)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/android/ex/photo/a/b;->aid:Landroid/support/v4/f/g;

    invoke-virtual {v1, v0, p3}, Landroid/support/v4/f/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/android/ex/photo/a/b;->aib:Landroid/support/v4/app/z;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/z;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;

    .line 122
    return-void
.end method

.method public final aX()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/ex/photo/a/b;->aib:Landroid/support/v4/app/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/photo/a/b;->ck:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/ex/photo/a/b;->aib:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->commitAllowingStateLoss()I

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/photo/a/b;->aib:Landroid/support/v4/app/z;

    .line 144
    iget-object v0, p0, Lcom/android/ex/photo/a/b;->ck:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->executePendingTransactions()Z

    .line 146
    :cond_0
    return-void
.end method

.method public final aY()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 151
    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    move-object v0, p1

    .line 152
    :goto_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 153
    if-ne v0, v1, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 157
    :goto_1
    return v0

    .line 152
    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract bH(I)Landroid/support/v4/app/Fragment;
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 126
    check-cast p1, Landroid/support/v4/app/Fragment;

    .line 127
    iget-object v0, p0, Lcom/android/ex/photo/a/b;->aic:Landroid/support/v4/app/Fragment;

    if-eq p1, v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/ex/photo/a/b;->aic:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/ex/photo/a/b;->aic:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 131
    :cond_0
    if-eqz p1, :cond_1

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 134
    :cond_1
    iput-object p1, p0, Lcom/android/ex/photo/a/b;->aic:Landroid/support/v4/app/Fragment;

    .line 137
    :cond_2
    return-void
.end method
