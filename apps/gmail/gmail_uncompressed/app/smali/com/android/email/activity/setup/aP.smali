.class final Lcom/android/email/activity/setup/aP;
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
.field final synthetic Pu:Lcom/android/email/activity/setup/MailboxSettings;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/MailboxSettings;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/email/activity/setup/aP;->Pu:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/MailboxSettings;B)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/aP;-><init>(Lcom/android/email/activity/setup/MailboxSettings;)V

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

    .line 198
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/email/activity/setup/aP;->Pu:Lcom/android/email/activity/setup/MailboxSettings;

    iget-object v2, p0, Lcom/android/email/activity/setup/aP;->Pu:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/MailboxSettings;->a(Lcom/android/email/activity/setup/MailboxSettings;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 193
    check-cast p2, Landroid/database/Cursor;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/setup/aP;->Pu:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->b(Lcom/android/email/activity/setup/MailboxSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/mail/providers/Folder;

    invoke-direct {v0, p2}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uU()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uV()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uY()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/aP;->Pu:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/MailboxSettings;->b(Lcom/android/email/activity/setup/MailboxSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/aP;->Pu:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/MailboxSettings;->invalidateHeaders()V

    :cond_2
    return-void
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 1
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
    .line 222
    iget-object v0, p0, Lcom/android/email/activity/setup/aP;->Pu:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->b(Lcom/android/email/activity/setup/MailboxSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    return-void
.end method
