.class final Lcom/android/mail/ui/dc;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic aNx:Lcom/android/mail/ui/dh;

.field final synthetic aNy:Landroid/view/View;

.field final synthetic aNz:Lcom/android/mail/ui/db;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/db;Lcom/android/mail/ui/dh;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/mail/ui/dc;->aNz:Lcom/android/mail/ui/db;

    iput-object p2, p0, Lcom/android/mail/ui/dc;->aNx:Lcom/android/mail/ui/dh;

    iput-object p3, p0, Lcom/android/mail/ui/dc;->aNy:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/mail/ui/dc;->aNz:Lcom/android/mail/ui/db;

    invoke-static {v0}, Lcom/android/mail/ui/db;->a(Lcom/android/mail/ui/db;)Lcom/android/mail/ui/dg;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/dc;->aNx:Lcom/android/mail/ui/dh;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/dg;->b(Lcom/android/mail/ui/dh;)V

    .line 278
    iget-object v0, p0, Lcom/android/mail/ui/dc;->aNy:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 279
    return-void
.end method
