.class final Lcom/google/android/gm/provider/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aaE:Z

.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;

.field final synthetic bjE:Ljava/lang/String;

.field final synthetic bjF:Ljava/lang/Long;

.field final synthetic bjG:Ljava/lang/String;

.field final synthetic bjH:J


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;J)V
    .locals 0

    .prologue
    .line 5216
    iput-object p1, p0, Lcom/google/android/gm/provider/aq;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iput-object p2, p0, Lcom/google/android/gm/provider/aq;->bjE:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gm/provider/aq;->bjF:Ljava/lang/Long;

    iput-boolean p4, p0, Lcom/google/android/gm/provider/aq;->aaE:Z

    iput-object p5, p0, Lcom/google/android/gm/provider/aq;->bjG:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gm/provider/aq;->bjH:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5220
    iget-object v0, p0, Lcom/google/android/gm/provider/aq;->bjE:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/aq;->bjF:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 5221
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Resetting local unseen count for %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gm/provider/aq;->bjE:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5223
    iget-object v0, p0, Lcom/google/android/gm/provider/aq;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v1, p0, Lcom/google/android/gm/provider/aq;->bjF:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/ae;->at(J)V

    .line 5225
    iget-boolean v0, p0, Lcom/google/android/gm/provider/aq;->aaE:Z

    if-eqz v0, :cond_0

    .line 5226
    iget-object v0, p0, Lcom/google/android/gm/provider/aq;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aq;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/provider/aq;->bjE:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/GmailProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    .line 5235
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aq;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biz:Lcom/google/android/gm/provider/ba;

    const-string v1, "ix_awtsv"

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/ba;->eW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5237
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    .line 5239
    :cond_1
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Not resetting unseen count until WelcomeTour is complete"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5249
    :goto_0
    return-void

    .line 5241
    :cond_2
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Resetting server unseen count for %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gm/provider/aq;->bjG:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5244
    iget-object v0, p0, Lcom/google/android/gm/provider/aq;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    iget-wide v2, p0, Lcom/google/android/gm/provider/aq;->bjH:J

    iget-object v1, p0, Lcom/google/android/gm/provider/aq;->bjG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gm/provider/Operations;->b(JLjava/lang/String;)J

    .line 5246
    iget-object v0, p0, Lcom/google/android/gm/provider/aq;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aq;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->dU(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0
.end method
