.class public Lcom/android/mail/compose/CcBccView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final avi:Landroid/view/View;

.field private final avj:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/compose/CcBccView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/compose/CcBccView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    const v0, 0x7f0d0103

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/CcBccView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/CcBccView;->avi:Landroid/view/View;

    .line 46
    const v0, 0x7f0d0106

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/CcBccView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/CcBccView;->avj:Landroid/view/View;

    .line 47
    return-void
.end method


# virtual methods
.method public final b(ZZZ)V
    .locals 9

    .prologue
    const/16 v1, 0x8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/android/mail/compose/CcBccView;->avi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v4

    .line 51
    iget-object v3, p0, Lcom/android/mail/compose/CcBccView;->avi:Landroid/view/View;

    if-eqz p2, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/android/mail/compose/CcBccView;->avj:Landroid/view/View;

    if-eqz p3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    if-eqz p1, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/android/mail/compose/CcBccView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/mail/compose/CcBccView;->avj:Landroid/view/View;

    const-string v3, "alpha"

    new-array v5, v8, [F

    fill-array-data v5, :array_0

    invoke-static {v1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v6, v0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-nez v4, :cond_2

    iget-object v1, p0, Lcom/android/mail/compose/CcBccView;->avi:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v8, [F

    fill-array-data v5, :array_1

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v0, v1

    check-cast v0, Landroid/animation/AnimatorSet;

    new-array v5, v8, [Landroid/animation/Animator;

    aput-object v4, v5, v2

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_1
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 64
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 51
    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 54
    goto :goto_1

    .line 56
    :cond_3
    if-eqz p2, :cond_4

    .line 57
    iget-object v0, p0, Lcom/android/mail/compose/CcBccView;->avi:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 59
    :cond_4
    if-eqz p3, :cond_5

    .line 60
    iget-object v0, p0, Lcom/android/mail/compose/CcBccView;->avj:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 62
    :cond_5
    invoke-virtual {p0}, Lcom/android/mail/compose/CcBccView;->requestLayout()V

    goto :goto_2

    .line 54
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final sl()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mail/compose/CcBccView;->avi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final sm()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mail/compose/CcBccView;->avj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
