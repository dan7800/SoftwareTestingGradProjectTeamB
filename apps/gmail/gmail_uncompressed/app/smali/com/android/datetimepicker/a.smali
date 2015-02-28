.class public final Lcom/android/datetimepicker/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Hc:Landroid/database/ContentObserver;

.field private Hd:Landroid/os/Vibrator;

.field private He:Z

.field private Hf:J

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/datetimepicker/a;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/android/datetimepicker/b;

    invoke-direct {v0, p0}, Lcom/android/datetimepicker/b;-><init>(Lcom/android/datetimepicker/a;)V

    iput-object v0, p0, Lcom/android/datetimepicker/a;->Hc:Landroid/database/ContentObserver;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/android/datetimepicker/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/datetimepicker/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/android/datetimepicker/a;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/android/datetimepicker/a;->He:Z

    return p1
.end method

.method private static i(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic j(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 14
    invoke-static {p0}, Lcom/android/datetimepicker/a;->i(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final ge()V
    .locals 6

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/datetimepicker/a;->Hd:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/datetimepicker/a;->He:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 68
    iget-wide v2, p0, Lcom/android/datetimepicker/a;->Hf:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/android/datetimepicker/a;->Hd:Landroid/os/Vibrator;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 70
    iput-wide v0, p0, Lcom/android/datetimepicker/a;->Hf:J

    .line 73
    :cond_0
    return-void
.end method

.method public final start()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/datetimepicker/a;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/datetimepicker/a;->Hd:Landroid/os/Vibrator;

    .line 47
    iget-object v0, p0, Lcom/android/datetimepicker/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/datetimepicker/a;->i(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/datetimepicker/a;->He:Z

    .line 48
    const-string v0, "haptic_feedback_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/android/datetimepicker/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/datetimepicker/a;->Hc:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 50
    return-void
.end method

.method public final stop()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/datetimepicker/a;->Hd:Landroid/os/Vibrator;

    .line 57
    iget-object v0, p0, Lcom/android/datetimepicker/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/a;->Hc:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 58
    return-void
.end method
