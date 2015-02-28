.class public final Landroid/support/v7/internal/a/o;
.super Landroid/support/v7/app/e;
.source "SourceFile"


# instance fields
.field final synthetic vc:Landroid/support/v7/internal/a/j;

.field private vg:Landroid/support/v7/app/f;

.field private vh:Landroid/graphics/drawable/Drawable;

.field private vi:Ljava/lang/CharSequence;

.field private vj:Ljava/lang/CharSequence;

.field private vk:I

.field private vl:Landroid/view/View;


# virtual methods
.method public final dg()Landroid/support/v7/app/f;
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Landroid/support/v7/internal/a/o;->vg:Landroid/support/v7/app/f;

    return-object v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Landroid/support/v7/internal/a/o;->vj:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Landroid/support/v7/internal/a/o;->vl:Landroid/view/View;

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Landroid/support/v7/internal/a/o;->vh:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Landroid/support/v7/internal/a/o;->vk:I

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Landroid/support/v7/internal/a/o;->vi:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final select()V
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Landroid/support/v7/internal/a/o;->vc:Landroid/support/v7/internal/a/j;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/a/j;->a(Landroid/support/v7/app/e;)V

    .line 1209
    return-void
.end method
