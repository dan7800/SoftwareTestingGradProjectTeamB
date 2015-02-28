.class public final Lcom/android/email/provider/B;
.super Lcom/android/mail/ui/cf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    const v0, 0x7f04009a

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/mail/ui/cf;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected final b(Lcom/android/mail/providers/Folder;)Z
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->uU()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
