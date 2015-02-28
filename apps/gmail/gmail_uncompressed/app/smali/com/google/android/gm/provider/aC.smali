.class final Lcom/google/android/gm/provider/aC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/google/android/gm/provider/aC;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/google/android/gm/provider/aC;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->t(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/g;

    move-result-object v0

    .line 1494
    if-eqz v0, :cond_0

    .line 1495
    invoke-virtual {v0}, Lcom/google/android/gm/provider/g;->DN()V

    .line 1499
    :goto_0
    return-void

    .line 1497
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "null AttachmentManager instance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
