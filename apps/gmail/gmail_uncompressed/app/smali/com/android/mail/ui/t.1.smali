.class final Lcom/android/mail/ui/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/mail/c/b",
        "<",
        "Lcom/android/mail/providers/Account;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;

.field final awV:Lcom/android/mail/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/c/a",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field

.field final eN:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/a;)V
    .locals 1

    .prologue
    .line 3646
    iput-object p1, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3647
    sget-object v0, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/ui/t;->eN:[Ljava/lang/String;

    .line 3648
    sget-object v0, Lcom/android/mail/providers/Account;->aqh:Lcom/android/mail/c/a;

    iput-object v0, p0, Lcom/android/mail/ui/t;->awV:Lcom/android/mail/c/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/a;B)V
    .locals 0

    .prologue
    .line 3646
    invoke-direct {p0, p1}, Lcom/android/mail/ui/t;-><init>(Lcom/android/mail/ui/a;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3652
    packed-switch p1, :pswitch_data_0

    .line 3662
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "Got an id  (%d) that I cannot create!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3665
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3654
    :pswitch_0
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "LOADER_ACCOUNT_CURSOR created"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3655
    new-instance v0, Lcom/android/mail/c/c;

    iget-object v1, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, v1, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mail/providers/t;->vh()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/ui/t;->eN:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mail/ui/t;->awV:Lcom/android/mail/c/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    goto :goto_0

    .line 3658
    :pswitch_1
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "LOADER_ACCOUNT_UPDATE_CURSOR created"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3659
    new-instance v0, Lcom/android/mail/c/c;

    iget-object v1, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, v1, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    iget-object v2, v2, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v2, v2, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/ui/t;->eN:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mail/ui/t;->awV:Lcom/android/mail/c/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    goto :goto_0

    .line 3652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3646
    check-cast p2, Lcom/android/mail/c/b;

    if-nez p2, :cond_0

    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "Received null cursor from loader id: %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/mail/c/b;->getCount()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/android/mail/c/b;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "accounts_loaded"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mail/providers/t;->aq(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    iget-object v2, v2, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/mail/ui/MailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0, p2}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;Lcom/android/mail/c/b;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    iget-boolean v1, v1, Lcom/android/mail/ui/a;->aDc:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v1, p2}, Lcom/android/mail/ui/a;->b(Lcom/android/mail/ui/a;Lcom/android/mail/c/b;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/mail/ui/a;->aDc:Z

    :cond_5
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Lcom/android/mail/a/d;->f(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    iget-object v3, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    iget-object v4, v4, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v4, v4, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    iget-object v3, v3, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v3, v3, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v4, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    iput-object v0, v4, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v4, "AbstractActivityController.onLoadFinished(): mAccount = %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    iget-object v5, v5, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v5, v5, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-static {v0, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->n(Lcom/android/mail/ui/a;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :cond_6
    iget-object v0, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->vQ()V

    goto/16 :goto_0

    :cond_7
    sget-object v3, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v4, "Got update for account: %s with current account: %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/mail/ui/t;->aEa:Lcom/android/mail/ui/a;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {v0, p0, v1}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;Landroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 3748
    return-void
.end method
