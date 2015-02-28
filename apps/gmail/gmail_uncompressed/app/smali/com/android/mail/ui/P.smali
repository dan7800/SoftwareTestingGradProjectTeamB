.class public abstract Lcom/android/mail/ui/P;
.super Landroid/support/v7/app/g;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/m;
.implements Lcom/android/mail/ui/R;


# instance fields
.field protected Nc:Lcom/android/mail/providers/Account;

.field private aEY:Landroid/view/MenuItem;

.field private aEZ:Lcom/android/mail/ui/Q;

.field protected azF:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/mail/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    iput-object v0, p0, Lcom/android/mail/ui/P;->Nc:Lcom/android/mail/providers/Account;

    .line 86
    :cond_0
    return-void
.end method

.method protected ck(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mail/ui/P;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {p0, v0, p1}, Lcom/android/mail/utils/ag;->b(Landroid/content/Context;Lcom/android/mail/providers/Account;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public final oN()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mail/ui/P;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/P;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/mail/ui/P;->cF()Landroid/support/v7/app/a;

    move-result-object v0

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/android/mail/ui/P;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    const-string v1, "extra-account-uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/ui/P;->azF:Landroid/net/Uri;

    .line 66
    if-eqz p1, :cond_0

    .line 67
    const-string v0, "saved-account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "saved-account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    iput-object v0, p0, Lcom/android/mail/ui/P;->Nc:Lcom/android/mail/providers/Account;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/P;->azF:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Lcom/android/mail/ui/Q;

    iget-object v1, p0, Lcom/android/mail/ui/P;->azF:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mail/ui/Q;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/ui/R;)V

    iput-object v0, p0, Lcom/android/mail/ui/P;->aEZ:Lcom/android/mail/ui/Q;

    .line 77
    invoke-virtual {p0}, Lcom/android/mail/ui/P;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/mail/ui/P;->aEZ:Lcom/android/mail/ui/Q;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 79
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mail/ui/P;->azF:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/P;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 95
    const v0, 0x7f0d026d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/P;->aEY:Landroid/view/MenuItem;

    .line 96
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 112
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/mail/ui/P;->finish()V

    .line 122
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 114
    :cond_0
    const v1, 0x7f0d026c

    if-ne v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/mail/ui/P;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {p0, v0}, Lcom/android/mail/utils/ag;->e(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    goto :goto_0

    .line 116
    :cond_1
    const v1, 0x7f0d026d

    if-ne v0, v1, :cond_2

    .line 117
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/P;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/P;->ck(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mail/ui/P;->aEY:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/mail/ui/P;->aEY:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mail/ui/P;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/P;->Nc:Lcom/android/mail/providers/Account;

    const v2, 0x8000

    invoke-virtual {v0, v2}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 106
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
