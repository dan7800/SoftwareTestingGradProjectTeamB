.class final Lcom/android/mail/ui/dr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aNN:Lcom/android/mail/ui/dp;

.field final synthetic aNO:Ljava/lang/String;

.field final synthetic aNP:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/dp;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/mail/ui/dr;->aNN:Lcom/android/mail/ui/dp;

    iput-object p2, p0, Lcom/android/mail/ui/dr;->aNO:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mail/ui/dr;->aNP:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 86
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/mail/ui/dr;->aNO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mail/ui/dp;->kI()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/mail/ui/dr;->aNP:Landroid/accounts/Account;

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 99
    iget-object v0, p0, Lcom/android/mail/ui/dr;->aNN:Lcom/android/mail/ui/dp;

    invoke-static {v0}, Lcom/android/mail/ui/dp;->a(Lcom/android/mail/ui/dp;)Lcom/android/mail/ui/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/mail/ui/dr;->aNN:Lcom/android/mail/ui/dp;

    invoke-static {v0}, Lcom/android/mail/ui/dp;->a(Lcom/android/mail/ui/dp;)Lcom/android/mail/ui/ds;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/ds;->An()V

    .line 103
    :cond_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/dr;->aNO:Ljava/lang/String;

    goto :goto_0
.end method
