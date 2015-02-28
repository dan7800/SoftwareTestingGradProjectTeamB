.class final Lcom/android/mail/browse/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic arx:Lcom/android/mail/browse/ConversationWebView;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/ConversationWebView;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/mail/browse/ai;->arx:Lcom/android/mail/browse/ConversationWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mail/browse/ai;->arx:Lcom/android/mail/browse/ConversationWebView;

    invoke-static {v0}, Lcom/android/mail/browse/ConversationWebView;->a(Lcom/android/mail/browse/ConversationWebView;)Z

    .line 54
    iget-object v0, p0, Lcom/android/mail/browse/ai;->arx:Lcom/android/mail/browse/ConversationWebView;

    invoke-static {v0}, Lcom/android/mail/browse/ConversationWebView;->b(Lcom/android/mail/browse/ConversationWebView;)V

    .line 55
    iget-object v0, p0, Lcom/android/mail/browse/ai;->arx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationWebView;->invalidate()V

    .line 56
    return-void
.end method
