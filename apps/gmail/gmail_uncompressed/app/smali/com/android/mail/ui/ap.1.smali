.class final Lcom/android/mail/ui/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic aGx:Lcom/android/mail/ui/ButteryProgressBar;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ButteryProgressBar;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/mail/ui/ap;->aGx:Lcom/android/mail/ui/ButteryProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mail/ui/ap;->aGx:Lcom/android/mail/ui/ButteryProgressBar;

    invoke-virtual {v0}, Lcom/android/mail/ui/ButteryProgressBar;->invalidate()V

    .line 111
    return-void
.end method
