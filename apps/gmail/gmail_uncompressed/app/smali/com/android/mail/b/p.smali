.class final Lcom/android/mail/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic alc:Lcom/android/mail/b/o;


# direct methods
.method constructor <init>(Lcom/android/mail/b/o;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/mail/b/p;->alc:Lcom/android/mail/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/mail/b/p;->alc:Lcom/android/mail/b/o;

    invoke-static {v0}, Lcom/android/mail/b/o;->a(Lcom/android/mail/b/o;)F

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/android/mail/b/p;->alc:Lcom/android/mail/b/o;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v2, v0}, Lcom/android/mail/b/o;->a(Lcom/android/mail/b/o;F)F

    .line 110
    iget-object v0, p0, Lcom/android/mail/b/p;->alc:Lcom/android/mail/b/o;

    invoke-static {v0}, Lcom/android/mail/b/o;->a(Lcom/android/mail/b/o;)F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/mail/b/p;->alc:Lcom/android/mail/b/o;

    invoke-virtual {v0}, Lcom/android/mail/b/o;->invalidateSelf()V

    .line 113
    :cond_0
    return-void
.end method
