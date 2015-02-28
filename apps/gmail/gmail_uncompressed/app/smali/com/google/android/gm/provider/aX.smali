.class public final Lcom/google/android/gm/provider/aX;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bkF:Z

.field public bkG:Z

.field public bkH:Z

.field public bkI:Ljava/lang/Long;

.field public bkJ:Z

.field public bkt:J

.field public bku:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aX;->bkF:Z

    .line 845
    iput-boolean v1, p0, Lcom/google/android/gm/provider/aX;->bkG:Z

    .line 846
    iput-boolean v1, p0, Lcom/google/android/gm/provider/aX;->bkH:Z

    .line 847
    iput-wide v2, p0, Lcom/google/android/gm/provider/aX;->bku:J

    .line 848
    iput-wide v2, p0, Lcom/google/android/gm/provider/aX;->bkt:J

    .line 849
    iput-boolean v1, p0, Lcom/google/android/gm/provider/aX;->bkJ:Z

    .line 850
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 854
    const-string v0, "SyncInfo: normalSync = %B, justLive = %B, manual = %B, activeLabelId = %dconversationId = %d, messageId = %d, receivedHandledClientOp = %B"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gm/provider/aX;->bkF:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/gm/provider/aX;->bkG:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/android/gm/provider/aX;->bkH:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gm/provider/aX;->bkI:Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/google/android/gm/provider/aX;->bku:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/google/android/gm/provider/aX;->bkt:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/android/gm/provider/aX;->bkJ:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
