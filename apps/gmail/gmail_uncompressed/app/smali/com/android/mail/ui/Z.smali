.class final Lcom/android/mail/ui/Z;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic aFy:Lcom/android/mail/ui/ActionableToastBar;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ActionableToastBar;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/mail/ui/Z;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/mail/ui/Z;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mail/ui/ActionableToastBar;->a(Lcom/android/mail/ui/ActionableToastBar;Z)Z

    .line 422
    iget-object v0, p0, Lcom/android/mail/ui/Z;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ActionableToastBar;->setVisibility(I)V

    .line 423
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/mail/ui/Z;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mail/ui/ActionableToastBar;->a(Lcom/android/mail/ui/ActionableToastBar;Z)Z

    .line 417
    return-void
.end method
