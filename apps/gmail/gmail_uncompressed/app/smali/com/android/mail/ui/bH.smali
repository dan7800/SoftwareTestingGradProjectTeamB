.class final Lcom/android/mail/ui/bH;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private final aJV:Z

.field private final aU:Landroid/view/View;

.field private yt:Z


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1725
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1726
    iput-object p1, p0, Lcom/android/mail/ui/bH;->aU:Landroid/view/View;

    .line 1727
    iput-boolean p2, p0, Lcom/android/mail/ui/bH;->aJV:Z

    .line 1728
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 1740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/bH;->yt:Z

    .line 1741
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 1745
    iget-boolean v0, p0, Lcom/android/mail/ui/bH;->yt:Z

    if-nez v0, :cond_1

    .line 1747
    iget-boolean v0, p0, Lcom/android/mail/ui/bH;->aJV:Z

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/android/mail/ui/bH;->aU:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1752
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bH;->aU:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1754
    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1732
    iget-boolean v0, p0, Lcom/android/mail/ui/bH;->aJV:Z

    if-nez v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/android/mail/ui/bH;->aU:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1735
    :cond_0
    iput-boolean v1, p0, Lcom/android/mail/ui/bH;->yt:Z

    .line 1736
    return-void
.end method
