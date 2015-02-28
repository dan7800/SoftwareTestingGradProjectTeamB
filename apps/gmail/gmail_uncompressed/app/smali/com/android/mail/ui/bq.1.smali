.class final Lcom/android/mail/ui/bq;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic aIU:Lcom/android/mail/ui/CustomViewToolbar;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/CustomViewToolbar;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/mail/ui/bq;->aIU:Lcom/android/mail/ui/CustomViewToolbar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/mail/ui/bq;->aIU:Lcom/android/mail/ui/CustomViewToolbar;

    iget-object v0, v0, Lcom/android/mail/ui/CustomViewToolbar;->aIT:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    return-void
.end method
