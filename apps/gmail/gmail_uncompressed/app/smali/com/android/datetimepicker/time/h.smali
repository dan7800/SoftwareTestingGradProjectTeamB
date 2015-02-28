.class final Lcom/android/datetimepicker/time/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic Ll:Lcom/android/datetimepicker/time/g;


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/datetimepicker/time/h;->Ll:Lcom/android/datetimepicker/time/g;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/g;->invalidate()V

    .line 357
    return-void
.end method
