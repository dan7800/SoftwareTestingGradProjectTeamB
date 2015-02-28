.class abstract Lcom/google/android/gm/provider/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/provider/be;


# instance fields
.field final synthetic blx:Lcom/google/android/gm/provider/MailSync;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/provider/MailSync;)V
    .locals 0

    .prologue
    .line 3697
    iput-object p1, p0, Lcom/google/android/gm/provider/bg;->blx:Lcom/google/android/gm/provider/MailSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/provider/MailSync;B)V
    .locals 0

    .prologue
    .line 3697
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/bg;-><init>(Lcom/google/android/gm/provider/MailSync;)V

    return-void
.end method


# virtual methods
.method public abstract HB()I
.end method

.method protected final a(Lcom/google/android/gm/provider/bm;Ljava/lang/Exception;Z)V
    .locals 6

    .prologue
    .line 3702
    new-instance v1, Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string v0, "com.google.android.gm.intent.ACTION_POST_SAVE_ERROR"

    :goto_0
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3704
    const-string v0, "account"

    iget-object v2, p0, Lcom/google/android/gm/provider/bg;->blx:Lcom/google/android/gm/provider/MailSync;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/android/gm/provider/MailSync;)Lcom/google/android/gm/provider/ba;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gm/provider/ba;->Dc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3705
    const-string v0, "extraMessageSubject"

    iget-object v2, p1, Lcom/google/android/gm/provider/bm;->ayV:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3706
    const-string v0, "extraConversationId"

    iget-wide v2, p1, Lcom/google/android/gm/provider/bm;->bku:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3707
    iget-object v0, p0, Lcom/google/android/gm/provider/bg;->blx:Lcom/google/android/gm/provider/MailSync;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->b(Lcom/google/android/gm/provider/MailSync;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3709
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "errors"

    const-string v2, "read_cached_attachment"

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3711
    return-void

    .line 3702
    :cond_0
    const-string v0, "com.google.android.gm.intent.ACTION_POST_SEND_ERROR"

    goto :goto_0
.end method
