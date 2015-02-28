.class final Lcom/android/mail/ui/ba;
.super Lcom/android/mail/ui/ca;
.source "SourceFile"


# instance fields
.field final synthetic aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

.field final synthetic aIn:[Ljava/lang/String;

.field final synthetic aIo:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;Ljava/lang/String;Landroid/app/Fragment;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/android/mail/ui/ba;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iput-object p4, p0, Lcom/android/mail/ui/ba;->aIn:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mail/ui/ba;->aIo:[Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/ca;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final xe()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1511
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ba;->aIn:[Ljava/lang/String;

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1512
    iget-object v3, p0, Lcom/android/mail/ui/ba;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v3, v3, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v3}, Lcom/android/mail/ui/ConversationViewFragment;->n(Lcom/android/mail/ui/ConversationViewFragment;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/ui/ba;->aIn:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/mail/ui/ba;->aIo:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1514
    :catch_0
    move-exception v0

    .line 1515
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Number of urls does not match number of message ids - %s:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mail/ui/ba;->aIn:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/android/mail/ui/ba;->aIo:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1519
    :cond_0
    return-void
.end method
