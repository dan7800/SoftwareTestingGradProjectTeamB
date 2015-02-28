.class final Lcom/google/android/gm/provider/aI;
.super Lcom/android/mail/utils/i;
.source "SourceFile"


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 8395
    iput-object p1, p0, Lcom/google/android/gm/provider/aI;->bjA:Lcom/google/android/gm/provider/MailEngine;

    .line 8396
    invoke-static {}, Lcom/google/android/gm/provider/MailEngine;->GE()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/mail/utils/i;-><init>(Landroid/os/Looper;I)V

    .line 8398
    iput-object p2, p0, Lcom/google/android/gm/provider/aI;->mContext:Landroid/content/Context;

    .line 8399
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mail.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/aI;->mIntent:Landroid/content/Intent;

    .line 8400
    iget-object v0, p0, Lcom/google/android/gm/provider/aI;->mIntent:Landroid/content/Intent;

    const-string v1, "accountUri"

    invoke-static {p1}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gm/provider/GmailProvider;->en(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8402
    iget-object v0, p0, Lcom/google/android/gm/provider/aI;->mIntent:Landroid/content/Intent;

    const-string v1, "application/gmail-ls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 8403
    return-void
.end method


# virtual methods
.method protected final AQ()V
    .locals 2

    .prologue
    .line 8407
    iget-object v0, p0, Lcom/google/android/gm/provider/aI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/aI;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 8408
    return-void
.end method
