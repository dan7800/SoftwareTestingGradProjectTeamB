.class final Lcom/google/android/gm/ads/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic aZO:Lcom/google/android/gm/ads/AdTeaserView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ads/AdTeaserView;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/google/android/gm/ads/o;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 589
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/gm/ads/o;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ads/AdTeaserView;->h(Lcom/google/android/gm/ads/AdTeaserView;)Z

    .line 583
    iget-object v0, p0, Lcom/google/android/gm/ads/o;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ads/AdTeaserView;->i(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 584
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 577
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 572
    return-void
.end method
