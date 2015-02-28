.class final Lcom/android/email/provider/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic Tm:Lcom/android/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;)V
    .locals 0

    .prologue
    .line 5704
    iput-object p1, p0, Lcom/android/email/provider/n;->Tm:Lcom/android/email/provider/EmailProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 5707
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5708
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->km()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notifying conversation Uri %s twice"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5709
    iget-object v1, p0, Lcom/android/email/provider/n;->Tm:Lcom/android/email/provider/EmailProvider;

    invoke-static {}, Lcom/android/email/provider/EmailProvider;->kn()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/EmailProvider;Landroid/net/Uri;Ljava/lang/String;)V

    .line 5710
    return v5
.end method
