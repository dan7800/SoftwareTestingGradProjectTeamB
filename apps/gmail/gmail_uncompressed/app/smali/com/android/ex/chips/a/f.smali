.class public final Lcom/android/ex/chips/a/f;
.super Lcom/android/ex/chips/a/d;
.source "SourceFile"

# interfaces
.implements Lcom/android/ex/chips/a/b;


# instance fields
.field private final afA:Lcom/android/ex/chips/a/e;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/android/ex/chips/ae;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/ex/chips/a/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 34
    new-instance v0, Lcom/android/ex/chips/a/e;

    invoke-direct {v0, p2}, Lcom/android/ex/chips/a/e;-><init>(Lcom/android/ex/chips/ae;)V

    iput-object v0, p0, Lcom/android/ex/chips/a/f;->afA:Lcom/android/ex/chips/a/e;

    .line 35
    return-void
.end method


# virtual methods
.method public final aP(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/ex/chips/a/f;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/a/e;->aP(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/ex/chips/a/f;->Aj:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    return-void
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/ex/chips/a/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public final isSelected()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/ex/chips/a/f;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->isSelected()Z

    move-result v0

    return v0
.end method

.method public final mX()J
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/ex/chips/a/f;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->mX()J

    move-result-wide v0

    return-wide v0
.end method

.method public final mY()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/ex/chips/a/f;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->mY()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final mZ()J
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/ex/chips/a/f;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->mZ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final nd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/ex/chips/a/f;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->nd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ne()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/ex/chips/a/f;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->ne()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final nf()Lcom/android/ex/chips/ae;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/ex/chips/a/f;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->nf()Lcom/android/ex/chips/ae;

    move-result-object v0

    return-object v0
.end method

.method public final ng()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/ex/chips/a/f;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->ng()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final setSelected(Z)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/ex/chips/a/f;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/a/e;->setSelected(Z)V

    .line 40
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/ex/chips/a/f;->afA:Lcom/android/ex/chips/a/e;

    invoke-virtual {v0}, Lcom/android/ex/chips/a/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
