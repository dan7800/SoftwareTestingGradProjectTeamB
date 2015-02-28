.class final Lcom/android/mail/browse/L;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 405
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pO()Landroid/graphics/Bitmap;

    .line 406
    invoke-static {p1}, Lcom/android/mail/browse/ConversationItemView;->al(Landroid/content/Context;)V

    .line 407
    return-void
.end method
