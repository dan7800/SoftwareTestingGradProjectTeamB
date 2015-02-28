.class final Lcom/google/android/gms/people/accountswitcherview/G;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic cjn:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/G;->cjn:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 492
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/G;->cjn:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->b(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)Lcom/google/android/gms/people/accountswitcherview/S;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/G;->cjn:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->b(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)Lcom/google/android/gms/people/accountswitcherview/S;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/G;->cjn:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->b(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)Lcom/google/android/gms/people/accountswitcherview/S;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/G;->cjn:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->b(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)Lcom/google/android/gms/people/accountswitcherview/S;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/G;->cjn:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->c(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    .line 498
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/G;->cjn:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    .line 499
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/G;->cjn:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->e(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)Landroid/animation/AnimatorSet;

    .line 500
    return-void
.end method
