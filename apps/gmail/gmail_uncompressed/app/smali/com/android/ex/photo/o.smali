.class final Lcom/android/ex/photo/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic ahp:Lcom/android/ex/photo/k;


# direct methods
.method constructor <init>(Lcom/android/ex/photo/k;)V
    .locals 0

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/ex/photo/o;->ahp:Lcom/android/ex/photo/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/ex/photo/o;->ahp:Lcom/android/ex/photo/k;

    invoke-virtual {v0}, Lcom/android/ex/photo/k;->onEnterAnimationComplete()V

    .line 930
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 934
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 938
    return-void
.end method
