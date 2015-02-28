.class public Lcom/android/mail/b/o;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field protected final akU:Landroid/graphics/drawable/Drawable;

.field protected final akV:Landroid/graphics/drawable/Drawable;

.field protected final akW:I

.field protected final akX:I

.field protected final akY:I

.field private final akZ:Landroid/animation/ValueAnimator;

.field private ala:F

.field private alb:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 88
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/b/o;->ala:F

    .line 64
    iput-boolean v4, p0, Lcom/android/mail/b/o;->alb:Z

    .line 89
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Front and back drawables must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iput-object p1, p0, Lcom/android/mail/b/o;->akU:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-object p2, p0, Lcom/android/mail/b/o;->akV:Landroid/graphics/drawable/Drawable;

    .line 95
    iget-object v0, p0, Lcom/android/mail/b/o;->akU:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 96
    iget-object v0, p0, Lcom/android/mail/b/o;->akV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 98
    iput p3, p0, Lcom/android/mail/b/o;->akW:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/b/o;->akX:I

    .line 100
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/mail/b/o;->akY:I

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/mail/b/o;->akX:I

    iget v2, p0, Lcom/android/mail/b/o;->akW:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/mail/b/o;->akY:I

    add-int/2addr v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/b/o;->akZ:Landroid/animation/ValueAnimator;

    .line 104
    iget-object v0, p0, Lcom/android/mail/b/o;->akZ:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/mail/b/p;

    invoke-direct {v1, p0}, Lcom/android/mail/b/p;-><init>(Lcom/android/mail/b/o;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 116
    invoke-virtual {p0, v4}, Lcom/android/mail/b/o;->ap(Z)V

    .line 117
    return-void

    .line 102
    nop

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method

.method static synthetic a(Lcom/android/mail/b/o;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/mail/b/o;->ala:F

    return v0
.end method

.method static synthetic a(Lcom/android/mail/b/o;F)F
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/android/mail/b/o;->ala:F

    return p1
.end method


# virtual methods
.method public ap(Z)V
    .locals 2

    .prologue
    .line 208
    iget v1, p0, Lcom/android/mail/b/o;->ala:F

    .line 209
    iget-object v0, p0, Lcom/android/mail/b/o;->akZ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 210
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/mail/b/o;->ala:F

    .line 211
    iput-boolean p1, p0, Lcom/android/mail/b/o;->alb:Z

    .line 212
    iget v0, p0, Lcom/android/mail/b/o;->ala:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/mail/b/o;->invalidateSelf()V

    .line 215
    :cond_0
    return-void

    .line 210
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0
.end method

.method public final aq(Z)V
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/mail/b/o;->alb:Z

    if-eq v0, p1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/mail/b/o;->ow()V

    .line 261
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 133
    invoke-virtual {p0}, Lcom/android/mail/b/o;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 134
    invoke-virtual {p0}, Lcom/android/mail/b/o;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget v0, p0, Lcom/android/mail/b/o;->akX:I

    iget v1, p0, Lcom/android/mail/b/o;->akW:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/mail/b/o;->akY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/mail/b/o;->akX:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget v4, p0, Lcom/android/mail/b/o;->akY:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    div-float v0, v4, v0

    add-float/2addr v0, v1

    div-float/2addr v0, v7

    iget v1, p0, Lcom/android/mail/b/o;->ala:F

    div-float/2addr v1, v7

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/b/o;->akU:Landroid/graphics/drawable/Drawable;

    .line 140
    :goto_2
    iget v1, p0, Lcom/android/mail/b/o;->akX:I

    iget v4, p0, Lcom/android/mail/b/o;->akW:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/android/mail/b/o;->akY:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    .line 143
    iget v4, p0, Lcom/android/mail/b/o;->ala:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/android/mail/b/o;->akX:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    move v1, v2

    .line 159
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 161
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 162
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/mail/b/o;->akV:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 146
    :cond_4
    iget v4, p0, Lcom/android/mail/b/o;->ala:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/android/mail/b/o;->akY:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    div-float/2addr v5, v1

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    move v1, v2

    .line 148
    goto :goto_3

    .line 151
    :cond_5
    iget v4, p0, Lcom/android/mail/b/o;->ala:F

    div-float/2addr v4, v7

    .line 152
    iget v5, p0, Lcom/android/mail/b/o;->akX:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    iget v6, p0, Lcom/android/mail/b/o;->akY:I

    int-to-float v6, v6

    sub-float v6, v1, v6

    div-float/2addr v6, v1

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    .line 154
    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 155
    iget v6, p0, Lcom/android/mail/b/o;->akX:I

    int-to-float v6, v6

    div-float v1, v6, v1

    sub-float v1, v5, v1

    div-float v1, v2, v1

    .line 156
    mul-float/2addr v1, v4

    goto :goto_3
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/mail/b/o;->akU:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object v1, p0, Lcom/android/mail/b/o;->akV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mail/b/o;->resolveOpacity(II)I

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/mail/b/o;->invalidateSelf()V

    .line 191
    return-void
.end method

.method public final isFlipping()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/mail/b/o;->akZ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public final oB()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/mail/b/o;->alb:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/mail/b/o;->akU:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    iget-object v0, p0, Lcom/android/mail/b/o;->akV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/mail/b/o;->akU:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 127
    iget-object v0, p0, Lcom/android/mail/b/o;->akV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/mail/b/o;->akU:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/b/o;->akV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

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

.method public ow()V
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/mail/b/o;->alb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/b/o;->alb:Z

    .line 241
    iget-object v0, p0, Lcom/android/mail/b/o;->akZ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-boolean v0, p0, Lcom/android/mail/b/o;->alb:Z

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/mail/b/o;->akZ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 250
    :goto_1
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/mail/b/o;->akZ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/mail/b/o;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 196
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mail/b/o;->akU:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 169
    iget-object v0, p0, Lcom/android/mail/b/o;->akV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 170
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mail/b/o;->akU:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 175
    iget-object v0, p0, Lcom/android/mail/b/o;->akV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 176
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 200
    invoke-virtual {p0, p2}, Lcom/android/mail/b/o;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method
