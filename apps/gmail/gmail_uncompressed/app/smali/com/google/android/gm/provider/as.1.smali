.class final Lcom/google/android/gm/provider/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;

.field final synthetic bjI:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 8118
    iput-object p1, p0, Lcom/google/android/gm/provider/as;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iput-object p2, p0, Lcom/google/android/gm/provider/as;->bjI:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 8121
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "blockUntilBackgroundTasksComplete: finished"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8122
    iget-object v0, p0, Lcom/google/android/gm/provider/as;->bjI:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 8123
    return-void
.end method
