.class public final Lcom/android/mail/b/c;
.super Lcom/android/mail/b/o;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final akq:Lcom/android/mail/b/g;

.field private final akr:Lcom/android/mail/b/d;

.field private final aks:Landroid/animation/ValueAnimator;

.field private final akt:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 54
    new-instance v0, Lcom/android/mail/b/g;

    invoke-direct {v0, p1}, Lcom/android/mail/b/g;-><init>(Landroid/content/res/Resources;)V

    new-instance v1, Lcom/android/mail/b/d;

    invoke-direct {v1, p1}, Lcom/android/mail/b/d;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/android/mail/b/o;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    .line 57
    iget-object v0, p0, Lcom/android/mail/b/c;->akU:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/mail/b/g;

    iput-object v0, p0, Lcom/android/mail/b/c;->akq:Lcom/android/mail/b/g;

    .line 58
    iget-object v0, p0, Lcom/android/mail/b/c;->akV:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/mail/b/d;

    iput-object v0, p0, Lcom/android/mail/b/c;->akr:Lcom/android/mail/b/d;

    .line 69
    iget v0, p0, Lcom/android/mail/b/c;->akX:I

    iget v1, p0, Lcom/android/mail/b/c;->akW:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 71
    iget v2, p0, Lcom/android/mail/b/c;->akW:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/mail/b/c;->akY:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    .line 73
    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mail/b/c;->aks:Landroid/animation/ValueAnimator;

    .line 75
    iget-object v4, p0, Lcom/android/mail/b/c;->aks:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 76
    iget-object v4, p0, Lcom/android/mail/b/c;->aks:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 78
    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mail/b/c;->akt:Landroid/animation/ValueAnimator;

    .line 80
    iget-object v2, p0, Lcom/android/mail/b/c;->akt:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 81
    iget-object v0, p0, Lcom/android/mail/b/c;->akt:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    return-void

    .line 73
    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 78
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final ap(Z)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 86
    invoke-super {p0, p1}, Lcom/android/mail/b/o;->ap(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/mail/b/c;->aks:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/mail/b/c;->aks:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 92
    iget-object v0, p0, Lcom/android/mail/b/c;->akt:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 93
    iget-object v2, p0, Lcom/android/mail/b/c;->akr:Lcom/android/mail/b/d;

    if-eqz p1, :cond_2

    const v0, 0x3e4ccccd    # 0.2f

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/mail/b/d;->u(F)V

    .line 94
    iget-object v0, p0, Lcom/android/mail/b/c;->akr:Lcom/android/mail/b/d;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/mail/b/d;->v(F)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 93
    goto :goto_1
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/android/mail/b/c;->aks:Landroid/animation/ValueAnimator;

    if-ne p1, v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/mail/b/c;->akr:Lcom/android/mail/b/d;

    invoke-virtual {v1, v0}, Lcom/android/mail/b/d;->u(F)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/android/mail/b/c;->akt:Landroid/animation/ValueAnimator;

    if-ne p1, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/mail/b/c;->akr:Lcom/android/mail/b/d;

    invoke-virtual {v1, v0}, Lcom/android/mail/b/d;->v(F)V

    goto :goto_0
.end method

.method public final ow()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/mail/b/o;->ow()V

    .line 101
    iget-object v0, p0, Lcom/android/mail/b/c;->aks:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/mail/b/c;->oB()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/mail/b/c;->aks:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 107
    iget-object v0, p0, Lcom/android/mail/b/c;->akt:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/mail/b/c;->aks:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 110
    iget-object v0, p0, Lcom/android/mail/b/c;->akt:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0
.end method

.method public final ox()Lcom/android/mail/b/g;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mail/b/c;->akq:Lcom/android/mail/b/g;

    return-object v0
.end method
