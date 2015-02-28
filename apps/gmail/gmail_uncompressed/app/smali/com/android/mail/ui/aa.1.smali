.class final Lcom/android/mail/ui/aa;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic aFy:Lcom/android/mail/ui/ActionableToastBar;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ActionableToastBar;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/mail/ui/aa;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/mail/ui/aa;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-static {v0}, Lcom/android/mail/ui/ActionableToastBar;->b(Lcom/android/mail/ui/ActionableToastBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 437
    return-void
.end method
