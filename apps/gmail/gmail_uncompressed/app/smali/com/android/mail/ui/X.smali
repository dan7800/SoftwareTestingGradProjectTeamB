.class final Lcom/android/mail/ui/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aFA:Lcom/android/mail/ui/ab;

.field final synthetic aFy:Lcom/android/mail/ui/ActionableToastBar;

.field final synthetic aFz:Lcom/android/mail/ui/ToastBarOperation;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ActionableToastBar;Lcom/android/mail/ui/ToastBarOperation;Lcom/android/mail/ui/ab;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/mail/ui/X;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    iput-object p2, p0, Lcom/android/mail/ui/X;->aFz:Lcom/android/mail/ui/ToastBarOperation;

    iput-object p3, p0, Lcom/android/mail/ui/X;->aFA:Lcom/android/mail/ui/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 219
    iget-object v0, p0, Lcom/android/mail/ui/X;->aFz:Lcom/android/mail/ui/ToastBarOperation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/X;->aFz:Lcom/android/mail/ui/ToastBarOperation;

    invoke-virtual {v0}, Lcom/android/mail/ui/ToastBarOperation;->Am()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/mail/ui/X;->aFz:Lcom/android/mail/ui/ToastBarOperation;

    iget-object v1, p0, Lcom/android/mail/ui/X;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v1}, Lcom/android/mail/ui/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ToastBarOperation;->ar(Landroid/content/Context;)V

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/X;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v0, v2, v2}, Lcom/android/mail/ui/ActionableToastBar;->f(ZZ)V

    .line 225
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/X;->aFA:Lcom/android/mail/ui/ab;

    iget-object v1, p0, Lcom/android/mail/ui/X;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v1}, Lcom/android/mail/ui/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/ui/ab;->ar(Landroid/content/Context;)V

    goto :goto_0
.end method
