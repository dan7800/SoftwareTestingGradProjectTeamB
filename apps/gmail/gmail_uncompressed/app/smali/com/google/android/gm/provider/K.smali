.class final Lcom/google/android/gm/provider/K;
.super Lcom/android/mail/utils/G;
.source "SourceFile"


# instance fields
.field private final aPP:J

.field final synthetic bfF:Lcom/google/android/gm/provider/GmailProvider;

.field private final mAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/GmailProvider;Ljava/lang/String;J[Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 3854
    iput-object p1, p0, Lcom/google/android/gm/provider/K;->bfF:Lcom/google/android/gm/provider/GmailProvider;

    .line 3855
    invoke-direct {p0, p5, p6}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    .line 3856
    iput-object p2, p0, Lcom/google/android/gm/provider/K;->mAccount:Ljava/lang/String;

    .line 3857
    iput-wide p3, p0, Lcom/google/android/gm/provider/K;->aPP:J

    .line 3858
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .prologue
    .line 3862
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3863
    const-string v0, "Gmail"

    const-string v1, "AttachmentCursor: close() called on thread: %s. There may be issues if you do not call close() on the main thread."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3870
    :cond_0
    invoke-static {}, Lcom/google/android/gm/provider/GmailProvider;->EJ()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 3871
    :try_start_0
    invoke-static {}, Lcom/google/android/gm/provider/GmailProvider;->EJ()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/provider/K;->mAccount:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/a;

    .line 3872
    if-eqz v0, :cond_1

    .line 3874
    iget-wide v2, p0, Lcom/google/android/gm/provider/K;->aPP:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/uiprovider/a;->aS(J)Lcom/google/android/gm/provider/uiprovider/b;

    move-result-object v0

    .line 3876
    if-eqz v0, :cond_1

    .line 3878
    invoke-virtual {v0, p0}, Lcom/google/android/gm/provider/uiprovider/b;->s(Landroid/database/Cursor;)V

    .line 3881
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3883
    invoke-super {p0}, Lcom/android/mail/utils/G;->close()V

    .line 3884
    return-void

    .line 3881
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
