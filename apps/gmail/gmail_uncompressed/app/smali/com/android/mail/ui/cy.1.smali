.class final Lcom/android/mail/ui/cy;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic aMa:Landroid/view/View;

.field final synthetic aMb:I

.field final synthetic aMc:Lcom/android/mail/ui/cx;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/cx;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/mail/ui/cy;->aMc:Lcom/android/mail/ui/cx;

    iput-object p2, p0, Lcom/android/mail/ui/cy;->aMa:Landroid/view/View;

    iput p3, p0, Lcom/android/mail/ui/cy;->aMb:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/mail/ui/cy;->aMa:Landroid/view/View;

    iget v1, p0, Lcom/android/mail/ui/cy;->aMb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    return-void
.end method
