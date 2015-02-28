.class final Lcom/android/ex/photo/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/L;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/L",
        "<",
        "Lcom/android/ex/photo/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ahp:Lcom/android/ex/photo/k;


# direct methods
.method private constructor <init>(Lcom/android/ex/photo/k;)V
    .locals 0

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/android/ex/photo/u;->ahp:Lcom/android/ex/photo/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/photo/k;B)V
    .locals 0

    .prologue
    .line 1112
    invoke-direct {p0, p1}, Lcom/android/ex/photo/u;-><init>(Lcom/android/ex/photo/k;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/j",
            "<",
            "Lcom/android/ex/photo/c/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1116
    const-string v0, "image_uri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    packed-switch p1, :pswitch_data_0

    .line 1125
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1119
    :pswitch_0
    iget-object v1, p0, Lcom/android/ex/photo/u;->ahp:Lcom/android/ex/photo/k;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/photo/k;->e(ILjava/lang/String;)Landroid/support/v4/content/j;

    move-result-object v0

    goto :goto_0

    .line 1122
    :pswitch_1
    iget-object v1, p0, Lcom/android/ex/photo/u;->ahp:Lcom/android/ex/photo/k;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/photo/k;->e(ILjava/lang/String;)Landroid/support/v4/content/j;

    move-result-object v0

    goto :goto_0

    .line 1117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/content/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/j",
            "<",
            "Lcom/android/ex/photo/c/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1155
    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/j;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1112
    check-cast p2, Lcom/android/ex/photo/c/c;

    iget-object v0, p0, Lcom/android/ex/photo/u;->ahp:Lcom/android/ex/photo/k;

    invoke-static {v0}, Lcom/android/ex/photo/k;->d(Lcom/android/ex/photo/k;)Lcom/android/ex/photo/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ex/photo/t;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/ex/photo/c/c;->a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/photo/u;->ahp:Lcom/android/ex/photo/k;

    invoke-static {v1}, Lcom/android/ex/photo/k;->d(Lcom/android/ex/photo/k;)Lcom/android/ex/photo/t;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/ex/photo/t;->nH()Lcom/android/ex/photo/a;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/content/j;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/ex/photo/u;->ahp:Lcom/android/ex/photo/k;

    invoke-static {v1, v0}, Lcom/android/ex/photo/k;->a(Lcom/android/ex/photo/k;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/ex/photo/u;->ahp:Lcom/android/ex/photo/k;

    invoke-static {v0}, Lcom/android/ex/photo/k;->d(Lcom/android/ex/photo/k;)Lcom/android/ex/photo/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ex/photo/t;->G()Landroid/support/v4/app/K;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/K;->destroyLoader(I)V

    goto :goto_0

    :pswitch_1
    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/android/ex/photo/a;->setLogo(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Lcom/android/ex/photo/a;->setLogo(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
