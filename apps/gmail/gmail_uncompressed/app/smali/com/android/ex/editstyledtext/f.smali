.class public Lcom/android/ex/editstyledtext/f;
.super Landroid/text/style/DynamicDrawableSpan;
.source "SourceFile"


# instance fields
.field afT:Lcom/android/ex/editstyledtext/e;


# virtual methods
.method public final bC(I)V
    .locals 1

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/android/ex/editstyledtext/f;->afT:Lcom/android/ex/editstyledtext/e;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/e;->bB(I)V

    .line 2521
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/android/ex/editstyledtext/f;->afT:Lcom/android/ex/editstyledtext/e;

    return-object v0
.end method
