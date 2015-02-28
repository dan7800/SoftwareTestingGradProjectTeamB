.class final Lcom/android/mail/ui/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic aNy:Landroid/view/View;

.field final synthetic aNz:Lcom/android/mail/ui/db;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/db;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/mail/ui/df;->aNz:Lcom/android/mail/ui/db;

    iput-object p2, p0, Lcom/android/mail/ui/df;->aNy:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/mail/ui/df;->aNy:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 340
    iget-object v0, p0, Lcom/android/mail/ui/df;->aNz:Lcom/android/mail/ui/db;

    invoke-static {v0}, Lcom/android/mail/ui/db;->a(Lcom/android/mail/ui/db;)Lcom/android/mail/ui/dg;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/df;->aNz:Lcom/android/mail/ui/db;

    invoke-static {v1}, Lcom/android/mail/ui/db;->b(Lcom/android/mail/ui/db;)Lcom/android/mail/ui/dh;

    invoke-interface {v0}, Lcom/android/mail/ui/dg;->Af()V

    .line 341
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 336
    return-void
.end method
