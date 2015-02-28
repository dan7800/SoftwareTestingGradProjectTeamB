.class final Lcom/android/email/service/h;
.super Lcom/android/emailcommon/service/v;
.source "SourceFile"


# instance fields
.field final synthetic Us:Lcom/android/email/service/AttachmentService;


# direct methods
.method constructor <init>(Lcom/android/email/service/AttachmentService;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/email/service/h;->Us:Lcom/android/email/service/AttachmentService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJII)V
    .locals 9

    .prologue
    .line 527
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ServiceCallback for attachment #%d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/android/email/service/AttachmentService;->ky()V

    .line 530
    iget-object v0, p0, Lcom/android/email/service/h;->Us:Lcom/android/email/service/AttachmentService;

    iget-object v0, v0, Lcom/android/email/service/AttachmentService;->TX:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/g;

    .line 531
    if-eqz v0, :cond_2

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 533
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/email/service/g;->Un:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {}, Lcom/android/email/service/AttachmentService;->ky()V

    .line 535
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/email/service/g;->Uo:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {}, Lcom/android/email/service/AttachmentService;->ky()V

    .line 537
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, v0, Lcom/android/email/service/g;->Up:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {}, Lcom/android/email/service/AttachmentService;->ky()V

    .line 541
    iput p5, v0, Lcom/android/email/service/g;->Un:I

    .line 542
    iput p6, v0, Lcom/android/email/service/g;->Uo:I

    .line 543
    iput-wide v2, v0, Lcom/android/email/service/g;->Up:J

    .line 546
    iget-object v0, p0, Lcom/android/email/service/h;->Us:Lcom/android/email/service/AttachmentService;

    invoke-static {v0, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->o(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 548
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne p5, v2, :cond_0

    const-string v2, "uiState"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "uiDownloadedSize"

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lo:J

    int-to-long v6, p6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 550
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 551
    iget-object v2, p0, Lcom/android/email/service/h;->Us:Lcom/android/email/service/AttachmentService;

    invoke-virtual {v0, v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 554
    :cond_1
    packed-switch p5, :pswitch_data_0

    .line 561
    const-string v0, "AttachmentService"

    const-string v1, "Attachment #%d is done"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 562
    iget-object v0, p0, Lcom/android/email/service/h;->Us:Lcom/android/email/service/AttachmentService;

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/email/service/AttachmentService;->d(JI)V

    .line 571
    :cond_2
    :pswitch_0
    return-void

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
