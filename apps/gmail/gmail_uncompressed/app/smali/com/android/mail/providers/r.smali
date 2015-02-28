.class final Lcom/android/mail/providers/r;
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
        "Lcom/android/mail/providers/Folder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic aAS:Lcom/android/mail/providers/p;

.field private final projection:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/mail/providers/p;)V
    .locals 1

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/mail/providers/r;->aAS:Lcom/android/mail/providers/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    sget-object v0, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/providers/r;->projection:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/providers/p;B)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/mail/providers/r;-><init>(Lcom/android/mail/providers/p;)V

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
            "Lcom/android/mail/providers/Folder;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 217
    const-string v0, "FOLDER-URI"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 218
    new-instance v1, Lcom/android/mail/c/c;

    iget-object v2, p0, Lcom/android/mail/providers/r;->aAS:Lcom/android/mail/providers/p;

    invoke-static {v2}, Lcom/android/mail/providers/p;->a(Lcom/android/mail/providers/p;)Lcom/android/mail/ui/cS;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/mail/ui/cS;->xg()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/providers/r;->projection:[Ljava/lang/String;

    sget-object v4, Lcom/android/mail/providers/Folder;->aqh:Lcom/android/mail/c/a;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    return-object v1
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 209
    check-cast p2, Lcom/android/mail/c/b;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/mail/c/b;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    iget-object v1, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {v1}, Lcom/android/mail/utils/p;->AR()Landroid/net/Uri;

    move-result-object v2

    iget v3, v0, Lcom/android/mail/providers/Folder;->aAf:I

    iget-object v1, p0, Lcom/android/mail/providers/r;->aAS:Lcom/android/mail/providers/p;

    invoke-static {v1}, Lcom/android/mail/providers/p;->b(Lcom/android/mail/providers/p;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Folder;

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/android/mail/providers/Folder;->aAf:I

    if-eq v3, v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/mail/providers/r;->aAS:Lcom/android/mail/providers/p;

    invoke-static {v3}, Lcom/android/mail/providers/p;->b(Lcom/android/mail/providers/p;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/r;->aAS:Lcom/android/mail/providers/p;

    invoke-static {v0}, Lcom/android/mail/providers/p;->c(Lcom/android/mail/providers/p;)Lcom/android/mail/providers/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/providers/q;->vg()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
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
            "Lcom/android/mail/providers/Folder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 243
    return-void
.end method
