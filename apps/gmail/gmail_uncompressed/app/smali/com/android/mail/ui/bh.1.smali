.class final Lcom/android/mail/ui/bh;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic aIE:Lcom/android/mail/ui/be;

.field final synthetic aIF:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/be;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/mail/ui/bh;->aIE:Lcom/android/mail/ui/be;

    iput-object p2, p0, Lcom/android/mail/ui/bh;->aIF:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mail/ui/bh;->aIE:Lcom/android/mail/ui/be;

    invoke-static {v0}, Lcom/android/mail/ui/be;->b(Lcom/android/mail/ui/be;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/mail/ui/bh;->aIE:Lcom/android/mail/ui/be;

    invoke-static {v0}, Lcom/android/mail/ui/be;->b(Lcom/android/mail/ui/be;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 146
    iget-object v0, p0, Lcom/android/mail/ui/bh;->aIF:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/mail/ui/bh;->aIF:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 149
    :cond_0
    return-void
.end method
