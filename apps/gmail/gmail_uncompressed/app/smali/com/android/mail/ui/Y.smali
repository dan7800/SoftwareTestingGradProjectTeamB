.class final Lcom/android/mail/ui/Y;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic aFy:Lcom/android/mail/ui/ActionableToastBar;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ActionableToastBar;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/mail/ui/Y;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/mail/ui/Y;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mail/ui/ActionableToastBar;->a(Lcom/android/mail/ui/ActionableToastBar;Z)Z

    .line 388
    iget-object v0, p0, Lcom/android/mail/ui/Y;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/mail/ui/ActionableToastBar;->a(Lcom/android/mail/ui/ActionableToastBar;J)J

    .line 389
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/mail/ui/Y;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mail/ui/ActionableToastBar;->a(Lcom/android/mail/ui/ActionableToastBar;Z)Z

    .line 384
    return-void
.end method
