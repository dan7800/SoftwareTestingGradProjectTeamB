.class final Lcom/android/mail/browse/aT;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 109
    invoke-static {}, Lcom/android/mail/browse/aR;->rW()Ljava/lang/CharSequence;

    .line 110
    invoke-static {p1}, Lcom/android/mail/browse/aR;->an(Landroid/content/Context;)V

    .line 111
    return-void
.end method
