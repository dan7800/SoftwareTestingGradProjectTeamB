.class final Lcom/android/mail/ui/aW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/av;


# instance fields
.field final synthetic aIi:Lcom/android/mail/ui/ConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewFragment;)V
    .locals 0

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/android/mail/ui/aW;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ro()V
    .locals 2

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/mail/ui/aW;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    const-string v1, "javascript:measurePositions();"

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 1127
    return-void
.end method
