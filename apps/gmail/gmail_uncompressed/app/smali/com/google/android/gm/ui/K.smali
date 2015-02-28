.class final Lcom/google/android/gm/ui/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/google/android/gm/ui/K;->bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 643
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/gm/ui/K;->bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->d(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)Lcom/android/mail/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 638
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 632
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 627
    return-void
.end method
