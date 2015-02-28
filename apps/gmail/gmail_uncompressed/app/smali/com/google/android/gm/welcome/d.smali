.class final Lcom/google/android/gm/welcome/d;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/welcome/ChangeAddressActivity;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/gm/welcome/d;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/gm/welcome/d;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->d(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 222
    iget-object v0, p0, Lcom/google/android/gm/welcome/d;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->d(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    const-string v0, "WelcomeTour"

    const-string v1, "Error #%1$d for %3$s: %2$s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    iget-object v3, p0, Lcom/google/android/gm/welcome/d;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-static {v3}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->e(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    const-string v1, "error"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/google/android/gm/welcome/d;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-virtual {v1, v5, v0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->setResult(ILandroid/content/Intent;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/gm/welcome/d;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->finish()V

    .line 228
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 189
    const-string v2, "WelcomeTour"

    const-string v3, "Loading URL %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 190
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 192
    iget-object v3, p0, Lcom/google/android/gm/welcome/d;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-static {v2}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->K(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 194
    iget-object v4, p0, Lcom/google/android/gm/welcome/d;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-static {v4}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->a(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    iget-object v1, p0, Lcom/google/android/gm/welcome/d;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-static {v1}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->b(Lcom/google/android/gm/welcome/ChangeAddressActivity;)V

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/welcome/d;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-static {v4}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->c(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gm/welcome/d;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-static {v4, v3}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->a(Lcom/google/android/gm/welcome/ChangeAddressActivity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v0, v1

    .line 199
    goto :goto_0

    .line 200
    :cond_3
    const-string v1, "mailto"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 206
    iget-object v2, p0, Lcom/google/android/gm/welcome/d;->this$0:Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-virtual {v2, v1}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
