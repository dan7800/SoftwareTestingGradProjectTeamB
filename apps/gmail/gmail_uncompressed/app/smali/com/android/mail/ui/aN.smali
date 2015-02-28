.class final Lcom/android/mail/ui/aN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aHu:Lcom/android/mail/ui/aM;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/aM;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/mail/ui/aN;->aHu:Lcom/android/mail/ui/aM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mail/ui/aN;->aHu:Lcom/android/mail/ui/aM;

    invoke-static {v0}, Lcom/android/mail/ui/aM;->a(Lcom/android/mail/ui/aM;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/mail/ui/aN;->aHu:Lcom/android/mail/ui/aM;

    invoke-static {v0}, Lcom/android/mail/ui/aM;->b(Lcom/android/mail/ui/aM;)Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/aN;->aHu:Lcom/android/mail/ui/aM;

    invoke-static {v1}, Lcom/android/mail/ui/aM;->b(Lcom/android/mail/ui/aM;)Lcom/android/mail/providers/Account;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mail/ui/dp;->b(Landroid/accounts/Account;Ljava/lang/String;)Lcom/android/mail/ui/dp;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/android/mail/ui/aN;->aHu:Lcom/android/mail/ui/aM;

    invoke-static {v1}, Lcom/android/mail/ui/aM;->c(Lcom/android/mail/ui/aM;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "auto sync"

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/dp;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/aN;->aHu:Lcom/android/mail/ui/aM;

    invoke-static {v0}, Lcom/android/mail/ui/aM;->a(Lcom/android/mail/ui/aM;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/mail/ui/aN;->aHu:Lcom/android/mail/ui/aM;

    invoke-virtual {v0}, Lcom/android/mail/ui/aM;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/aN;->aHu:Lcom/android/mail/ui/aM;

    invoke-static {v1}, Lcom/android/mail/ui/aM;->b(Lcom/android/mail/ui/aM;)Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mail/utils/ag;->f(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    goto :goto_0
.end method
