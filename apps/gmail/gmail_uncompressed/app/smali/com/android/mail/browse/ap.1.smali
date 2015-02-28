.class final Lcom/android/mail/browse/ap;
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
        "Lcom/android/mail/browse/ConversationMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic arI:Lcom/android/mail/browse/am;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/am;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/mail/browse/ap;->arI:Lcom/android/mail/browse/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/am;B)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/android/mail/browse/ap;-><init>(Lcom/android/mail/browse/am;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    packed-switch p1, :pswitch_data_0

    .line 296
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 294
    :pswitch_0
    new-instance v0, Lcom/android/mail/browse/al;

    iget-object v1, p0, Lcom/android/mail/browse/ap;->arI:Lcom/android/mail/browse/am;

    invoke-virtual {v1}, Lcom/android/mail/browse/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/ap;->arI:Lcom/android/mail/browse/am;

    invoke-static {v2}, Lcom/android/mail/browse/am;->b(Lcom/android/mail/browse/am;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/al;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 288
    check-cast p2, Lcom/android/mail/browse/ConversationMessage;

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/mail/browse/ap;->arI:Lcom/android/mail/browse/am;

    invoke-virtual {v0}, Lcom/android/mail/browse/am;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ap;->arI:Lcom/android/mail/browse/am;

    invoke-static {v0}, Lcom/android/mail/browse/am;->c(Lcom/android/mail/browse/am;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/ap;->arI:Lcom/android/mail/browse/am;

    invoke-static {v0}, Lcom/android/mail/browse/am;->d(Lcom/android/mail/browse/am;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/ap;->arI:Lcom/android/mail/browse/am;

    invoke-static {v0}, Lcom/android/mail/browse/am;->a(Lcom/android/mail/browse/am;)Lcom/android/mail/ui/cT;

    move-result-object v0

    iget-object v1, p2, Lcom/android/mail/browse/ConversationMessage;->ayV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/cT;->setSubject(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mail/browse/ap;->arI:Lcom/android/mail/browse/am;

    invoke-static {v0}, Lcom/android/mail/browse/am;->a(Lcom/android/mail/browse/am;)Lcom/android/mail/ui/cT;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/mail/ui/cT;->c(Lcom/android/mail/browse/ConversationMessage;)V

    goto :goto_0
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    return-void
.end method
