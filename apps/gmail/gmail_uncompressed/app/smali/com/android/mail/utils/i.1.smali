.class public abstract Lcom/android/mail/utils/i;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final aPb:I

.field private aPc:J


# direct methods
.method public constructor <init>(Landroid/os/Looper;I)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mail/utils/i;->aPc:J

    .line 40
    iput p2, p0, Lcom/android/mail/utils/i;->aPb:I

    .line 41
    return-void
.end method


# virtual methods
.method public final AP()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 48
    invoke-virtual {p0, v6}, Lcom/android/mail/utils/i;->removeMessages(I)V

    .line 49
    iget-wide v2, p0, Lcom/android/mail/utils/i;->aPc:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/mail/utils/i;->aPc:J

    iget v4, p0, Lcom/android/mail/utils/i;->aPb:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/mail/utils/i;->sendEmptyMessage(I)Z

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_1
    iget v0, p0, Lcom/android/mail/utils/i;->aPb:I

    int-to-long v0, v0

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/mail/utils/i;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected abstract AQ()V
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/utils/i;->aPc:J

    .line 63
    invoke-virtual {p0}, Lcom/android/mail/utils/i;->AQ()V

    .line 64
    return-void
.end method
