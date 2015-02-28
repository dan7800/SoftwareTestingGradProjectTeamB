.class final Lcom/android/mail/ui/dw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic aOG:Lcom/android/mail/ui/TwoPaneLayout;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/TwoPaneLayout;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/mail/ui/dw;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/mail/ui/dw;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-static {v0}, Lcom/android/mail/ui/TwoPaneLayout;->a(Lcom/android/mail/ui/TwoPaneLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/mail/ui/dw;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-static {v0}, Lcom/android/mail/ui/TwoPaneLayout;->b(Lcom/android/mail/ui/TwoPaneLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/mail/ui/dw;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-static {v1}, Lcom/android/mail/ui/TwoPaneLayout;->b(Lcom/android/mail/ui/TwoPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    iget-object v1, p0, Lcom/android/mail/ui/dw;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    iget-object v2, p0, Lcom/android/mail/ui/dw;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-static {v2}, Lcom/android/mail/ui/TwoPaneLayout;->c(Lcom/android/mail/ui/TwoPaneLayout;)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/mail/ui/dw;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v3}, Lcom/android/mail/ui/TwoPaneLayout;->getBottom()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/android/mail/ui/TwoPaneLayout;->invalidate(IIII)V

    .line 167
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/dw;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-static {v0}, Lcom/android/mail/ui/TwoPaneLayout;->b(Lcom/android/mail/ui/TwoPaneLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 164
    iget-object v1, p0, Lcom/android/mail/ui/dw;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    iget-object v2, p0, Lcom/android/mail/ui/dw;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-static {v2}, Lcom/android/mail/ui/TwoPaneLayout;->c(Lcom/android/mail/ui/TwoPaneLayout;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/mail/ui/dw;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    invoke-virtual {v3}, Lcom/android/mail/ui/TwoPaneLayout;->getBottom()I

    move-result v3

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/android/mail/ui/TwoPaneLayout;->invalidate(IIII)V

    goto :goto_0
.end method
