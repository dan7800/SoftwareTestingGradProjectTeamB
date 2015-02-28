.class final Lcom/android/mail/ui/o;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/mail/providers/Folder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;

.field final synthetic aEc:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/a;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/android/mail/ui/o;->aEa:Lcom/android/mail/ui/a;

    iput-object p2, p0, Lcom/android/mail/ui/o;->aEc:Ljava/util/Collection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/mail/ui/o;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mail/ui/o;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, v1, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v1, v1, Lcom/android/mail/providers/Settings;->aCi:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/mail/utils/ag;->d(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1613
    check-cast p1, Lcom/android/mail/providers/Folder;

    invoke-static {v4}, Lcom/google/common/collect/Lists;->fm(I)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/mail/ui/FolderOperation;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/mail/ui/FolderOperation;-><init>(Lcom/android/mail/providers/Folder;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/mail/ui/o;->aEa:Lcom/android/mail/ui/a;

    iget-object v2, p0, Lcom/android/mail/ui/o;->aEc:Ljava/util/Collection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/android/mail/ui/a;->a(Ljava/util/Collection;Ljava/util/Collection;ZZ)V

    return-void
.end method
