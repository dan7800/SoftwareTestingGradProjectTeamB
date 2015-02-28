.class final Lcom/android/mail/ui/J;
.super Lcom/android/mail/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/c/c",
        "<",
        "Lcom/android/mail/browse/ConversationMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private aEW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 645
    sget-object v0, Lcom/android/mail/providers/E;->aCy:[Ljava/lang/String;

    sget-object v1, Lcom/android/mail/browse/ConversationMessage;->aqh:Lcom/android/mail/c/a;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/J;->aEW:Z

    .line 646
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/c/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 653
    invoke-super {p0, p1}, Lcom/android/mail/c/c;->a(Lcom/android/mail/c/b;)V

    .line 655
    iget-boolean v0, p0, Lcom/android/mail/ui/J;->aEW:Z

    if-nez v0, :cond_0

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/J;->aEW:Z

    .line 657
    invoke-virtual {p0}, Lcom/android/mail/ui/J;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 661
    new-instance v1, Lcom/android/mail/providers/ListParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/mail/providers/ListParams;-><init>(IZ)V

    .line 665
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "listParams"

    invoke-virtual {v1}, Lcom/android/mail/providers/ListParams;->ud()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 669
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/J;->setUri(Landroid/net/Uri;)V

    .line 671
    :cond_0
    return-void
.end method

.method public final synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 641
    check-cast p1, Lcom/android/mail/c/b;

    invoke-virtual {p0, p1}, Lcom/android/mail/ui/J;->a(Lcom/android/mail/c/b;)V

    return-void
.end method

.method protected final i(Landroid/database/Cursor;)Lcom/android/mail/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    new-instance v0, Lcom/android/mail/browse/aC;

    invoke-direct {v0, p1}, Lcom/android/mail/browse/aC;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
