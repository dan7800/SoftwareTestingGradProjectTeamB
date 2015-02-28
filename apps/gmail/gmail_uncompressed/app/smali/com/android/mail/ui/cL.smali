.class final Lcom/android/mail/ui/cL;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic aMJ:Lcom/android/mail/ui/cK;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/cK;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/mail/ui/cL;->aMJ:Lcom/android/mail/ui/cK;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mail/ui/cL;->aMJ:Lcom/android/mail/ui/cK;

    iget-object v0, v0, Lcom/android/mail/ui/cK;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/mail/ui/cL;->aMJ:Lcom/android/mail/ui/cK;

    iget-object v0, v0, Lcom/android/mail/ui/cK;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 84
    const v2, 0x7f0d01bb

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 92
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 93
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 96
    :cond_0
    return-void
.end method
