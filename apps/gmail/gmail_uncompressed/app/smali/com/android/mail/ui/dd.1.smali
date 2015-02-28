.class final Lcom/android/mail/ui/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic aNA:Z

.field final synthetic aNy:Landroid/view/View;

.field final synthetic aNz:Lcom/android/mail/ui/db;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/db;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/mail/ui/dd;->aNz:Lcom/android/mail/ui/db;

    iput-boolean p2, p0, Lcom/android/mail/ui/dd;->aNA:Z

    iput-object p3, p0, Lcom/android/mail/ui/dd;->aNy:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/mail/ui/dd;->aNA:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/mail/ui/dd;->aNy:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mail/ui/dd;->aNz:Lcom/android/mail/ui/db;

    iget-object v2, p0, Lcom/android/mail/ui/dd;->aNy:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/mail/ui/db;->a(Lcom/android/mail/ui/db;Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/dd;->aNy:Landroid/view/View;

    invoke-static {v0}, Lcom/android/mail/ui/db;->aD(Landroid/view/View;)V

    .line 288
    return-void
.end method
