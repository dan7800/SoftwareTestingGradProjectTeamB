.class final Landroid/support/v4/app/ai;
.super Landroid/support/v4/app/ah;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 539
    invoke-direct {p0}, Landroid/support/v4/app/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/support/v4/app/ab;)Landroid/app/Notification;
    .locals 6

    .prologue
    .line 542
    iget-object v0, p1, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    .line 543
    iget-object v1, p1, Landroid/support/v4/app/ab;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/ab;->dg:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ab;->dh:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ab;->di:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 545
    iget-object v1, p1, Landroid/support/v4/app/ab;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/ab;->dg:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ab;->dh:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ab;->di:Landroid/app/PendingIntent;

    iget-object v5, p1, Landroid/support/v4/app/ab;->dj:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v5, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 548
    iget v1, p1, Landroid/support/v4/app/ab;->do:I

    if-lez v1, :cond_0

    .line 549
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 551
    :cond_0
    return-object v0
.end method
