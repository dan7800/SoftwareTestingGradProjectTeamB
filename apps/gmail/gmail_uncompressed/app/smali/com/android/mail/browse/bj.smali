.class Lcom/android/mail/browse/bj;
.super Lcom/android/mail/browse/bg;
.source "SourceFile"


# instance fields
.field final synthetic auM:Lcom/android/mail/browse/WebViewContextMenu;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/WebViewContextMenu;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/mail/browse/bj;->auM:Lcom/android/mail/browse/WebViewContextMenu;

    .line 166
    invoke-direct {p0, p1, p3}, Lcom/android/mail/browse/bg;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/String;)V

    .line 167
    iput-object p2, p0, Lcom/android/mail/browse/bj;->mIntent:Landroid/content/Intent;

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/mail/browse/bj;->auM:Lcom/android/mail/browse/WebViewContextMenu;

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/mail/browse/bg;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/String;)V

    .line 163
    return-void
.end method


# virtual methods
.method public final sb()Z
    .locals 2

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/browse/bj;->auM:Lcom/android/mail/browse/WebViewContextMenu;

    invoke-static {v0}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/WebViewContextMenu;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/bj;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final setIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/mail/browse/bj;->mIntent:Landroid/content/Intent;

    .line 172
    return-void
.end method
