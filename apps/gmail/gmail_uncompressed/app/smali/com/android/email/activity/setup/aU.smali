.class final Lcom/android/email/activity/setup/aU;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic PA:Lcom/android/email/activity/setup/aQ;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/aQ;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/email/activity/setup/aU;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/aQ;B)V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/aU;-><init>(Lcom/android/email/activity/setup/aQ;)V

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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 365
    const-string v0, "MailboxId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 366
    new-instance v2, Lcom/android/email/activity/setup/aT;

    iget-object v3, p0, Lcom/android/email/activity/setup/aU;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/aQ;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/android/email/activity/setup/aT;-><init>(Landroid/content/Context;JB)V

    return-object v2
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 361
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/setup/aU;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/aQ;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "mailbox"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/aU;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-static {v1, v0}, Lcom/android/email/activity/setup/aQ;->a(Lcom/android/email/activity/setup/aQ;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;

    iget-object v1, p0, Lcom/android/email/activity/setup/aU;->PA:Lcom/android/email/activity/setup/aQ;

    const-string v0, "maxLookback"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/email/activity/setup/aQ;->a(Lcom/android/email/activity/setup/aQ;I)I

    iget-object v0, p0, Lcom/android/email/activity/setup/aU;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-static {v0}, Lcom/android/email/activity/setup/aQ;->b(Lcom/android/email/activity/setup/aQ;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/android/email/activity/setup/aU;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-static {v0}, Lcom/android/email/activity/setup/aQ;->a(Lcom/android/email/activity/setup/aQ;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->XB:I

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/aU;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-static {v0}, Lcom/android/email/activity/setup/aQ;->c(Lcom/android/email/activity/setup/aQ;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/aU;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-static {v1}, Lcom/android/email/activity/setup/aQ;->a(Lcom/android/email/activity/setup/aQ;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->XA:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/aU;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-static {v0}, Lcom/android/email/activity/setup/aQ;->d(Lcom/android/email/activity/setup/aQ;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/aU;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-static {v0}, Lcom/android/email/activity/setup/aQ;->a(Lcom/android/email/activity/setup/aQ;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/aU;->PA:Lcom/android/email/activity/setup/aQ;

    invoke-static {v0}, Lcom/android/email/activity/setup/aQ;->e(Lcom/android/email/activity/setup/aQ;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 391
    return-void
.end method
