.class final Lcom/google/android/gm/provider/aB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic PG:Landroid/content/Context;

.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iput-object p2, p0, Lcom/google/android/gm/provider/aB;->PG:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1443
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->FI()V

    .line 1446
    iget-object v0, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->n(Lcom/google/android/gm/provider/MailEngine;)V

    .line 1447
    iget-object v0, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1449
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1459
    iget-object v0, p0, Lcom/google/android/gm/provider/aB;->PG:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1460
    if-eqz v0, :cond_0

    .line 1461
    iget-object v1, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x1

    const-string v3, "GmailProviderProviderChangedBroadcastWakeLock"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gm/provider/MailEngine;->bjf:Landroid/os/PowerManager$WakeLock;

    .line 1463
    iget-object v0, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bjf:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->o(Lcom/google/android/gm/provider/MailEngine;)V

    .line 1470
    iget-object v0, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->q(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/c/f;->b(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 1472
    iget-object v0, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/GmailProvider;->en(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1473
    iget-object v1, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/ae;->Fq()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/c/b;->a(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 1475
    iget-object v1, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->r(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/c/b;->b(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 1480
    iget-object v0, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Fr()Ljava/lang/String;

    .line 1482
    iget-object v0, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->s(Lcom/google/android/gm/provider/MailEngine;)V

    .line 1483
    invoke-static {}, Lcom/google/android/gm/b/a;->th()V

    .line 1484
    return-void

    .line 1449
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gm/provider/aB;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1453
    :catch_0
    move-exception v0

    throw v0
.end method
