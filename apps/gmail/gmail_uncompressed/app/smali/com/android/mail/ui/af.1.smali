.class final Lcom/android/mail/ui/af;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic aGd:Lcom/android/mail/ui/ae;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ae;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 110
    check-cast p1, Landroid/animation/AnimatorSet;

    .line 111
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    iget-object v2, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-static {v2}, Lcom/android/mail/ui/ae;->f(Lcom/android/mail/ui/ae;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/mail/ui/ae;->a(Lcom/android/mail/ui/ae;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 116
    iget-object v1, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    iget-object v2, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-static {v2}, Lcom/android/mail/ui/ae;->d(Lcom/android/mail/ui/ae;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/mail/ui/ae;->a(Lcom/android/mail/ui/ae;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 117
    iget-object v1, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    iget-object v2, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-static {v2}, Lcom/android/mail/ui/ae;->g(Lcom/android/mail/ui/ae;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/mail/ui/ae;->a(Lcom/android/mail/ui/ae;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 118
    iget-object v1, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    iget-object v2, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-static {v2}, Lcom/android/mail/ui/ae;->c(Lcom/android/mail/ui/ae;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/mail/ui/ae;->a(Lcom/android/mail/ui/ae;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 119
    iget-object v1, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-static {v1}, Lcom/android/mail/ui/ae;->h(Lcom/android/mail/ui/ae;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/android/mail/ui/LeaveBehindItem;

    if-eqz v1, :cond_1

    .line 120
    check-cast v0, Lcom/android/mail/ui/LeaveBehindItem;

    .line 121
    iget-object v1, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->zC()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/ui/ae;->W(J)V

    .line 122
    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->commit()V

    .line 123
    iget-object v0, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-static {v0}, Lcom/android/mail/ui/ae;->h(Lcom/android/mail/ui/ae;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->xF()Lcom/android/mail/ui/LeaveBehindItem;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->zF()Z

    move-result v1

    .line 129
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v0, v4}, Lcom/android/mail/ui/LeaveBehindItem;->dc(I)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->wo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-static {v0}, Lcom/android/mail/ui/ae;->i(Lcom/android/mail/ui/ae;)Lcom/android/mail/ui/as;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/as;->a(Lcom/android/mail/ui/ae;)V

    .line 141
    :cond_2
    return-void

    .line 113
    :cond_3
    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-static {v0}, Lcom/android/mail/ui/ae;->c(Lcom/android/mail/ui/ae;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-static {v0}, Lcom/android/mail/ui/ae;->d(Lcom/android/mail/ui/ae;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 101
    iget-object v0, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-static {v0}, Lcom/android/mail/ui/ae;->e(Lcom/android/mail/ui/ae;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object v0, p0, Lcom/android/mail/ui/af;->aGd:Lcom/android/mail/ui/ae;

    invoke-static {v0}, Lcom/android/mail/ui/ae;->f(Lcom/android/mail/ui/ae;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 104
    :cond_0
    return-void
.end method
