.class final Lcom/android/mail/ui/aY;
.super Lcom/android/mail/ui/ca;
.source "SourceFile"


# instance fields
.field final synthetic aIk:[I

.field final synthetic aIl:[I

.field final synthetic aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;Ljava/lang/String;Landroid/app/Fragment;[I[I)V
    .locals 0

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/android/mail/ui/aY;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iput-object p4, p0, Lcom/android/mail/ui/aY;->aIk:[I

    iput-object p5, p0, Lcom/android/mail/ui/aY;->aIl:[I

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/ca;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final xe()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1363
    iget-object v0, p0, Lcom/android/mail/ui/aY;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-boolean v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->aHS:Z

    if-nez v0, :cond_1

    .line 1364
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignoring webContentGeometryChange because views are gone, %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/ui/aY;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v3, v3, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/aY;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    iget-object v1, p0, Lcom/android/mail/ui/aY;->aIk:[I

    iget-object v2, p0, Lcom/android/mail/ui/aY;->aIl:[I

    invoke-static {v1, v2}, Lcom/android/mail/ui/ConversationViewFragment;->a([I[I)[Lcom/android/mail/browse/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationContainer;->a([Lcom/android/mail/browse/r;)V

    .line 1370
    iget-object v0, p0, Lcom/android/mail/ui/aY;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewFragment;->h(Lcom/android/mail/ui/ConversationViewFragment;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/android/mail/ui/aY;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationWebView;->getScale()F

    move-result v0

    iget-object v1, p0, Lcom/android/mail/ui/aY;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v1, v1, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-object v1, v1, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationWebView;->qZ()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1373
    if-le v0, v3, :cond_2

    .line 1374
    iget-object v1, p0, Lcom/android/mail/ui/aY;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v1, v1, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-object v1, v1, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    iget-object v2, p0, Lcom/android/mail/ui/aY;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v2, v2, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v2}, Lcom/android/mail/ui/ConversationViewFragment;->h(Lcom/android/mail/ui/ConversationViewFragment;)I

    move-result v2

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v2

    invoke-virtual {v1, v4, v0}, Lcom/android/mail/browse/ConversationWebView;->scrollBy(II)V

    .line 1376
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/aY;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewFragment;->i(Lcom/android/mail/ui/ConversationViewFragment;)I

    goto :goto_0
.end method
