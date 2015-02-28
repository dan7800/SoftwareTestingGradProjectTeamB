.class final Lcom/android/mail/browse/bk;
.super Lcom/android/mail/browse/bj;
.source "SourceFile"


# instance fields
.field final synthetic auM:Lcom/android/mail/browse/WebViewContextMenu;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/mail/browse/bk;->auM:Lcom/android/mail/browse/WebViewContextMenu;

    .line 188
    invoke-direct {p0, p1, p3}, Lcom/android/mail/browse/bj;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/String;)V

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-static {p1}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auP:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-static {v2}, Lcom/android/mail/browse/WebViewContextMenu;->b(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/bk;->setIntent(Landroid/content/Intent;)V

    .line 194
    return-void
.end method
