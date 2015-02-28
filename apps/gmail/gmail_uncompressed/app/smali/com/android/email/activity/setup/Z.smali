.class final Lcom/android/email/activity/setup/Z;
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
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Oj:Lcom/android/email/activity/setup/AccountSetupFinal;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSetupFinal;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/email/activity/setup/Z;->Oj:Lcom/android/email/activity/setup/AccountSetupFinal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSetupFinal;B)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/Z;-><init>(Lcom/android/email/activity/setup/AccountSetupFinal;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 395
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/email/activity/setup/Z;->Oj:Lcom/android/email/activity/setup/AccountSetupFinal;

    invoke-static {}, Lcom/android/mail/providers/t;->vh()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "accountManagerName"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 392
    check-cast p2, Landroid/database/Cursor;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/Z;->Oj:Lcom/android/email/activity/setup/AccountSetupFinal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupFinal;->a(Lcom/android/email/activity/setup/AccountSetupFinal;Ljava/util/Map;)Ljava/util/Map;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/Z;->Oj:Lcom/android/email/activity/setup/AccountSetupFinal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupFinal;->a(Lcom/android/email/activity/setup/AccountSetupFinal;Ljava/util/Map;)Ljava/util/Map;

    const-string v0, "accountManagerName"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v0, "name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :cond_2
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/activity/setup/Z;->Oj:Lcom/android/email/activity/setup/AccountSetupFinal;

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupFinal;->a(Lcom/android/email/activity/setup/AccountSetupFinal;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v1

    :cond_3
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/email/activity/setup/Z;->Oj:Lcom/android/email/activity/setup/AccountSetupFinal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupFinal;->a(Lcom/android/email/activity/setup/AccountSetupFinal;Ljava/util/Map;)Ljava/util/Map;

    .line 426
    return-void
.end method
