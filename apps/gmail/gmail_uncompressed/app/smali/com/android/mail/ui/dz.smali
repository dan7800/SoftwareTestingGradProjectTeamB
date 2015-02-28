.class final Lcom/android/mail/ui/dz;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aOG:Lcom/android/mail/ui/TwoPaneLayout;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/TwoPaneLayout;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/android/mail/ui/dz;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/TwoPaneLayout;B)V
    .locals 0

    .prologue
    .line 795
    invoke-direct {p0, p1}, Lcom/android/mail/ui/dz;-><init>(Lcom/android/mail/ui/TwoPaneLayout;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/mail/ui/dz;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-static {v0}, Lcom/android/mail/ui/TwoPaneLayout;->d(Lcom/android/mail/ui/TwoPaneLayout;)V

    .line 818
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 807
    invoke-static {}, Lcom/android/mail/utils/ag;->Bg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 809
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/dz;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-static {v2}, Lcom/android/mail/ui/TwoPaneLayout;->e(Lcom/android/mail/ui/TwoPaneLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 811
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 813
    :cond_0
    return-void

    .line 808
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/mail/ui/dz;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-static {v0}, Lcom/android/mail/ui/TwoPaneLayout;->d(Lcom/android/mail/ui/TwoPaneLayout;)V

    .line 800
    return-void
.end method
