.class final Lcom/android/mail/browse/aL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic atF:Lcom/android/mail/browse/MessageWebView;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/MessageWebView;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/mail/browse/aL;->atF:Lcom/android/mail/browse/MessageWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mail/browse/aL;->atF:Lcom/android/mail/browse/MessageWebView;

    invoke-static {v0}, Lcom/android/mail/browse/MessageWebView;->a(Lcom/android/mail/browse/MessageWebView;)V

    .line 51
    return-void
.end method
