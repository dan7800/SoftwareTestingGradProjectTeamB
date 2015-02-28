.class public final Lcom/android/ex/photo/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/ex/photo/a;


# instance fields
.field private final nY:Landroid/support/v7/app/a;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/a;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/ex/photo/c;->nY:Landroid/support/v7/app/a;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/ex/photo/b;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/ex/photo/c;->nY:Landroid/support/v7/app/a;

    new-instance v1, Lcom/android/ex/photo/d;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/photo/d;-><init>(Lcom/android/ex/photo/c;Lcom/android/ex/photo/b;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Landroid/support/v7/app/c;)V

    .line 40
    return-void
.end method

.method public final hide()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/ex/photo/c;->nY:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->hide()V

    .line 70
    return-void
.end method

.method public final nB()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/ex/photo/c;->nY:Landroid/support/v7/app/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 35
    return-void
.end method

.method public final nC()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 44
    iget-object v0, p0, Lcom/android/ex/photo/c;->nY:Landroid/support/v7/app/a;

    invoke-virtual {v0, v1, v1}, Landroid/support/v7/app/a;->setDisplayOptions(II)V

    .line 45
    return-void
.end method

.method public final setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/ex/photo/c;->nY:Landroid/support/v7/app/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/ex/photo/c;->nY:Landroid/support/v7/app/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/ex/photo/c;->nY:Landroid/support/v7/app/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public final show()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/ex/photo/c;->nY:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->show()V

    .line 65
    return-void
.end method
