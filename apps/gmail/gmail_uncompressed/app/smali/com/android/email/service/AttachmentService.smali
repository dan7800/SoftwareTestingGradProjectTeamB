.class public Lcom/android/email/service/AttachmentService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static volatile TS:Lcom/android/email/service/AttachmentService;

.field private static final TZ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[J>;"
        }
    .end annotation
.end field


# instance fields
.field private volatile Lz:Z

.field final TR:Lcom/android/email/service/h;

.field TT:Lcom/android/email/c;

.field final TU:Lcom/android/email/service/AttachmentService$AttachmentWatchdog;

.field final TV:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final TW:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final TX:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/service/g;",
            ">;"
        }
    .end annotation
.end field

.field final TY:Lcom/android/email/service/e;

.field Ua:Lcom/android/email/service/c;

.field private final Ub:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final fK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/service/AttachmentService;->TS:Lcom/android/email/service/AttachmentService;

    .line 152
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/android/email/service/AttachmentService;->TZ:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 115
    new-instance v0, Lcom/android/email/service/h;

    invoke-direct {v0, p0}, Lcom/android/email/service/h;-><init>(Lcom/android/email/service/AttachmentService;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentService;->TR:Lcom/android/email/service/h;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/service/AttachmentService;->Lz:Z

    .line 128
    new-instance v0, Lcom/android/email/service/AttachmentService$AttachmentWatchdog;

    invoke-direct {v0}, Lcom/android/email/service/AttachmentService$AttachmentWatchdog;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentService;->TU:Lcom/android/email/service/AttachmentService$AttachmentWatchdog;

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentService;->fK:Ljava/lang/Object;

    .line 136
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentService;->TV:Ljava/util/concurrent/ConcurrentHashMap;

    .line 141
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentService;->TW:Ljava/util/concurrent/ConcurrentHashMap;

    .line 145
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentService;->TX:Ljava/util/concurrent/ConcurrentHashMap;

    .line 148
    new-instance v0, Lcom/android/email/service/e;

    invoke-direct {v0}, Lcom/android/email/service/e;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    .line 1375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentService;->Ub:Ljava/util/HashMap;

    .line 1385
    return-void
.end method

.method public static a(Landroid/content/Context;JI)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 583
    const-string v0, "AttachmentService"

    const-string v1, "Attachment with id: %d will potentially be queued for download"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/service/AttachmentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 587
    const-string v1, "com.android.email.AttachmentService.attachment_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 588
    const-string v1, "com.android.email.AttachmentService.attachment_flags"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 589
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 590
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 8

    .prologue
    .line 750
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 751
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-virtual {v0, v2, v3}, Lcom/android/email/service/e;->z(J)Lcom/android/email/service/g;

    move-result-object v0

    .line 752
    invoke-static {p2}, Lcom/android/email/service/AttachmentService;->b(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v1

    int-to-long v2, v1

    .line 753
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 754
    const-string v1, "AttachmentService"

    const-string v2, "Attachment #%d has no priority and will not be downloaded"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 757
    if-eqz v0, :cond_0

    .line 760
    iget-object v1, p0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    invoke-virtual {v1, v0}, Lcom/android/email/service/e;->d(Lcom/android/email/service/g;)Z

    .line 806
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/email/service/AttachmentService;->kv()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    :goto_1
    monitor-exit p0

    return-void

    .line 764
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/email/service/AttachmentService;->TX:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 765
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 769
    :cond_2
    if-nez v0, :cond_5

    .line 770
    :try_start_2
    const-string v0, "AttachmentService"

    const-string v1, "Attachment #%d is a new download request"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 771
    new-instance v0, Lcom/android/email/service/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/email/service/g;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;B)V

    .line 772
    new-instance v1, Lcom/android/email/a;

    invoke-direct {v1, p1, p2}, Lcom/android/email/a;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 773
    invoke-virtual {v1}, Lcom/android/email/a;->gA()Z

    move-result v1

    if-nez v1, :cond_4

    .line 774
    const-string v1, "AttachmentService"

    const-string v2, "Attachment #%d is not eligible for download"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 777
    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_4

    .line 779
    :cond_3
    const-string v0, "AttachmentService"

    const-string v1, "Attachment #%d cannot be downloaded ever"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 789
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "flags"

    iget v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    and-int/lit8 v2, v2, -0x7

    iput v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "uiState"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2, p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto/16 :goto_1

    .line 797
    :cond_4
    iget-object v1, p0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    invoke-virtual {v1, v0}, Lcom/android/email/service/e;->c(Lcom/android/email/service/g;)Z

    .line 801
    :cond_5
    const-string v1, "AttachmentService"

    const-string v2, "Attachment #%d queued for download, priority: %d, created time: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, Lcom/android/email/service/g;->do:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v6, v0, Lcom/android/email/service/g;->Uk:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/email/service/AttachmentService;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/email/service/AttachmentService;->Lz:Z

    return v0
.end method

.method private declared-synchronized a(Lcom/android/email/service/g;)Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 979
    monitor-enter p0

    :try_start_0
    iget-wide v0, p1, Lcom/android/email/service/g;->LN:J

    invoke-static {p0, v0, v1}, Lcom/android/email/service/n;->i(Landroid/content/Context;J)Lcom/android/emailcommon/service/a;

    move-result-object v0

    .line 983
    iget-object v1, p0, Lcom/android/email/service/AttachmentService;->TX:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p1, Lcom/android/email/service/g;->Ul:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v7

    .line 984
    :goto_0
    if-eqz v1, :cond_1

    .line 985
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/android/email/service/g;->Ul:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    .line 996
    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    move v1, v6

    .line 983
    goto :goto_0

    .line 990
    :cond_1
    :try_start_1
    const-string v1, "AttachmentService"

    const-string v2, "Starting download for Attachment #%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v8, p1, Lcom/android/email/service/g;->Ul:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/service/g;->ky:J

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/email/service/g;->Um:Z

    iget-object v1, p0, Lcom/android/email/service/AttachmentService;->TX:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p1, Lcom/android/email/service/g;->Ul:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/email/service/AttachmentService;->TR:Lcom/android/email/service/h;

    iget-wide v2, p1, Lcom/android/email/service/g;->LN:J

    iget-wide v4, p1, Lcom/android/email/service/g;->Ul:J

    iget v8, p1, Lcom/android/email/service/g;->do:I

    if-eqz v8, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/u;JJZ)V

    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TU:Lcom/android/email/service/AttachmentService$AttachmentWatchdog;

    invoke-virtual {v0, p0}, Lcom/android/email/service/AttachmentService$AttachmentWatchdog;->L(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    move v0, v7

    .line 996
    goto :goto_1

    .line 994
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/email/service/AttachmentService;->b(Lcom/android/email/service/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 979
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 3

    .prologue
    .line 1214
    const/4 v0, -0x1

    .line 1215
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    .line 1216
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    .line 1217
    const/4 v0, 0x1

    .line 1221
    :cond_0
    :goto_0
    return v0

    .line 1218
    :cond_1
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1219
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lcom/android/email/service/AttachmentService;->b(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    return v0
.end method

.method private kv()V
    .locals 2

    .prologue
    .line 738
    iget-object v1, p0, Lcom/android/email/service/AttachmentService;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->fK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 740
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized kx()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1292
    monitor-enter p0

    :try_start_0
    const-string v0, "AttachmentService"

    const-string v1, "Advanced logging not configured."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1294
    const-string v0, "AttachmentService"

    const-string v1, "Here are the in-progress downloads..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1295
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TX:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/g;

    .line 1296
    const-string v2, "AttachmentService"

    const-string v3, "--BEGIN DownloadRequest DUMP--"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1297
    const-string v2, "AttachmentService"

    const-string v3, "Account: #%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/android/email/service/g;->LN:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1298
    const-string v2, "AttachmentService"

    const-string v3, "Message: #%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/android/email/service/g;->mMessageId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1299
    const-string v2, "AttachmentService"

    const-string v3, "Attachment: #%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/android/email/service/g;->Ul:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1300
    const-string v2, "AttachmentService"

    const-string v3, "Created Time: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/android/email/service/g;->Uk:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1301
    const-string v2, "AttachmentService"

    const-string v3, "Priority: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/email/service/g;->do:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1302
    iget-boolean v2, v0, Lcom/android/email/service/g;->Um:Z

    if-ne v2, v8, :cond_0

    .line 1303
    const-string v2, "AttachmentService"

    const-string v3, "This download is in progress"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1307
    :goto_1
    const-string v2, "AttachmentService"

    const-string v3, "Start Time: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/android/email/service/g;->ky:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1308
    const-string v2, "AttachmentService"

    const-string v3, "Retry Count: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/android/email/service/g;->Uq:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1309
    const-string v2, "AttachmentService"

    const-string v3, "Retry Start Tiome: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/android/email/service/g;->Ur:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1310
    const-string v2, "AttachmentService"

    const-string v3, "Last Status Code: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/email/service/g;->Un:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1311
    const-string v2, "AttachmentService"

    const-string v3, "Last Progress: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/email/service/g;->Uo:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1312
    const-string v2, "AttachmentService"

    const-string v3, "Last Callback Time: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/android/email/service/g;->Up:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1313
    const-string v0, "AttachmentService"

    const-string v2, "------------------------------"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1305
    :cond_0
    :try_start_1
    const-string v2, "AttachmentService"

    const-string v3, "This download is not in progress"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 1315
    :cond_1
    const-string v0, "AttachmentService"

    const-string v1, "Done reporting in-progress downloads..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1316
    monitor-exit p0

    return-void
.end method

.method static synthetic ky()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method private declared-synchronized y(J)I
    .locals 7

    .prologue
    .line 1198
    monitor-enter p0

    const/4 v1, 0x0

    .line 1199
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TX:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/g;

    .line 1200
    iget-wide v4, v0, Lcom/android/email/service/g;->LN:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v4, p1

    if-nez v0, :cond_1

    .line 1201
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 1203
    goto :goto_0

    .line 1204
    :cond_0
    monitor-exit p0

    return v1

    .line 1198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method final declared-synchronized b(Lcom/android/email/service/g;)V
    .locals 6

    .prologue
    .line 1019
    monitor-enter p0

    :try_start_0
    const-string v0, "AttachmentService"

    const-string v1, "Cancelling download for Attachment #%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/android/email/service/g;->Ul:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1020
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/service/g;->Um:Z

    .line 1021
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TX:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p1, Lcom/android/email/service/g;->Ul:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    invoke-virtual {v0, p1}, Lcom/android/email/service/e;->d(Lcom/android/email/service/g;)Z

    .line 1024
    iget-wide v0, p1, Lcom/android/email/service/g;->Uq:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/email/service/g;->Uq:J

    .line 1025
    iget-wide v0, p1, Lcom/android/email/service/g;->Uq:J

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1026
    const-string v0, "AttachmentService"

    const-string v1, "Too many failures giving up on Attachment #%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/android/email/service/g;->Ul:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    :goto_0
    monitor-exit p0

    return-void

    .line 1028
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/android/email/service/g;->Ul:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1034
    new-instance v0, Lcom/android/email/service/g;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/android/email/service/g;-><init>(Lcom/android/email/service/g;JB)V

    .line 1035
    iget-object v1, p0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    invoke-virtual {v1, v0}, Lcom/android/email/service/e;->c(Lcom/android/email/service/g;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1019
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d(JI)V
    .locals 15

    .prologue
    .line 1045
    monitor-enter p0

    :try_start_0
    const-string v2, "AttachmentService"

    const-string v3, "Finishing download #%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1048
    iget-object v2, p0, Lcom/android/email/service/AttachmentService;->TX:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    iget-object v2, p0, Lcom/android/email/service/AttachmentService;->TW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1058
    if-eqz p3, :cond_1

    .line 1059
    if-nez v2, :cond_0

    .line 1060
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1062
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1063
    const-string v3, "AttachmentService"

    const-string v4, "This attachment failed, adding #%d to failure map"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1064
    iget-object v3, p0, Lcom/android/email/service/AttachmentService;->TW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    :cond_1
    iget-object v2, p0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/email/service/e;->z(J)Lcom/android/email/service/g;

    move-result-object v3

    .line 1068
    const/16 v2, 0x20

    move/from16 v0, p3

    if-ne v0, v2, :cond_5

    .line 1070
    if-eqz v3, :cond_2

    .line 1071
    iget-wide v4, v3, Lcom/android/email/service/g;->Uq:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/email/service/g;->Uq:J

    .line 1072
    iget-wide v4, v3, Lcom/android/email/service/g;->Uq:J

    const-wide/16 v6, 0xa

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 1077
    const-string v2, "AttachmentService"

    const-string v4, "Too many tried for connection errors, giving up #%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1079
    iget-object v2, p0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    invoke-virtual {v2, v3}, Lcom/android/email/service/e;->d(Lcom/android/email/service/g;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1190
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 1082
    :cond_3
    :try_start_1
    iget-wide v4, v3, Lcom/android/email/service/g;->Uq:J

    const-wide/16 v6, 0x5

    cmp-long v2, v4, v6

    if-lez v2, :cond_4

    .line 1088
    const-string v2, "AttachmentService"

    const-string v4, "ConnectionError #%d, retried %d times, adding delay"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, v3, Lcom/android/email/service/g;->Uq:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1090
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/email/service/g;->Um:Z

    .line 1091
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/email/service/g;->Ur:J

    .line 1093
    iget-object v2, p0, Lcom/android/email/service/AttachmentService;->TU:Lcom/android/email/service/AttachmentService$AttachmentWatchdog;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, p0, v4, v5}, Lcom/android/email/service/AttachmentService$AttachmentWatchdog;->g(Landroid/content/Context;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1045
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1096
    :cond_4
    :try_start_2
    const-string v2, "AttachmentService"

    const-string v4, "ConnectionError for #%d, retried %d times, adding delay"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, v3, Lcom/android/email/service/g;->Uq:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1098
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/email/service/g;->Um:Z

    .line 1099
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/email/service/g;->Ur:J

    .line 1100
    invoke-direct {p0}, Lcom/android/email/service/AttachmentService;->kv()V

    goto :goto_0

    .line 1107
    :cond_5
    if-eqz v3, :cond_6

    .line 1108
    iget-object v2, p0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    invoke-virtual {v2, v3}, Lcom/android/email/service/e;->d(Lcom/android/email/service/g;)Z

    .line 1122
    :cond_6
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->o(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    .line 1123
    if-eqz v4, :cond_b

    .line 1124
    iget-wide v6, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lq:J

    .line 1126
    iget-object v2, p0, Lcom/android/email/service/AttachmentService;->TV:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1127
    if-nez v2, :cond_7

    .line 1128
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1130
    :cond_7
    iget-object v5, p0, Lcom/android/email/service/AttachmentService;->TV:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-wide v12, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lo:J

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v8, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    const/4 v2, 0x0

    .line 1132
    iget v5, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_a

    .line 1133
    const/16 v5, 0x11

    move/from16 v0, p3

    if-ne v0, v5, :cond_9

    .line 1137
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {p0, v2, v8, v9}, Lcom/android/emailcommon/provider/EmailContent;->a(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 1139
    invoke-static {p0}, Lcom/android/email/o;->r(Landroid/content/Context;)Lcom/android/email/m;

    move-result-object v2

    .line 1141
    if-eqz v2, :cond_8

    .line 1142
    invoke-interface {v2, v4}, Lcom/android/email/m;->a(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 1144
    :cond_8
    const/4 v2, 0x1

    .line 1145
    const-string v5, "AttachmentService"

    const-string v8, "Deleting forwarded attachment #%d for message #%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-wide v12, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v5, v8, v9}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1150
    :cond_9
    if-eqz v3, :cond_a

    iget-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/b/s;->D(Landroid/content/Context;J)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1152
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, v3, Lcom/android/email/service/g;->mMessageId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    .line 1153
    invoke-static {p0, v6, v7}, Lcom/android/email/service/n;->i(Landroid/content/Context;J)Lcom/android/emailcommon/service/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 1156
    :try_start_3
    invoke-virtual {v5, v6, v7}, Lcom/android/emailcommon/service/a;->D(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1163
    :cond_a
    :goto_1
    const/16 v3, 0x10

    move/from16 v0, p3

    if-ne v0, v3, :cond_d

    .line 1164
    :try_start_4
    iget-wide v2, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v2

    .line 1165
    if-nez v2, :cond_c

    .line 1166
    const-string v2, "AttachmentService"

    const-string v3, "Deleting attachment #%d with no associated message #%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1169
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {p0, v2, v4, v5}, Lcom/android/emailcommon/provider/EmailContent;->a(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 1189
    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/android/email/service/AttachmentService;->kv()V

    goto/16 :goto_0

    .line 1157
    :catch_0
    move-exception v5

    .line 1158
    const-string v6, "AttachmentService"

    const-string v7, "RemoteException while trying to send message: #%d, %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, v3, Lcom/android/email/service/g;->mMessageId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v9

    const/4 v3, 0x1

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1173
    :cond_c
    const-string v2, "AttachmentService"

    const-string v3, "Retrying attachment #%d with associated message #%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-static {v2, v3, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1175
    invoke-direct {p0}, Lcom/android/email/service/AttachmentService;->kv()V

    goto/16 :goto_0

    .line 1178
    :cond_d
    if-nez v2, :cond_b

    .line 1184
    const-string v2, "AttachmentService"

    const-string v3, "Attachment #%d successfully downloaded!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1185
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "flags"

    iget v5, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    and-int/lit8 v5, v5, -0x7

    iput v5, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "uiState"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v4, p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->a(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 1321
    const-string v0, "AttachmentService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1323
    iget-object v4, p0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    monitor-enter v4

    .line 1324
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Queue, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    invoke-virtual {v1}, Lcom/android/email/service/e;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    iget-object v0, v0, Lcom/android/email/service/e;->Uj:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/g;

    .line 1331
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "    Account: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/email/service/g;->LN:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", Attachment: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v0, Lcom/android/email/service/g;->Ul:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "      Priority: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/email/service/g;->do:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", Time: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v0, Lcom/android/email/service/g;->Uk:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v1, v0, Lcom/android/email/service/g;->Um:Z

    if-eqz v1, :cond_2

    const-string v1, " [In progress]"

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    iget-wide v6, v0, Lcom/android/email/service/g;->Ul:J

    invoke-static {p0, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->o(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v6

    .line 1335
    if-nez v6, :cond_3

    .line 1336
    const-string v1, "      Attachment not in database?"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    :cond_1
    :goto_2
    iget-boolean v1, v0, Lcom/android/email/service/g;->Um:Z

    if-eqz v1, :cond_0

    .line 1360
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "      Status: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/email/service/g;->Un:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", Progress: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v0, Lcom/android/email/service/g;->Uo:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "      Started: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/email/service/g;->ky:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", Callback: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v0, Lcom/android/email/service/g;->Up:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "      Elapsed: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/email/service/g;->ky:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "s"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    iget-wide v6, v0, Lcom/android/email/service/g;->Up:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 1366
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "      CB: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/email/service/g;->Up:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1370
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 1332
    :cond_2
    :try_start_1
    const-string v1, ""

    goto/16 :goto_1

    .line 1337
    :cond_3
    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1338
    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    .line 1340
    const/16 v1, 0x2e

    invoke-virtual {v7, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1341
    if-ltz v1, :cond_5

    .line 1342
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1346
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "      Suffix: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, " ContentUri: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1350
    :cond_4
    const-string v1, " Mime: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1351
    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ym:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1352
    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ym:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1357
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, " Size: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lo:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1344
    :cond_5
    const-string v1, "[none]"

    goto :goto_3

    .line 1354
    :cond_6
    const/4 v1, 0x0

    invoke-static {v7, v1}, Lcom/android/emailcommon/b/a;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1355
    const-string v1, " [inferred]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 1370
    :cond_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method final isConnected()Z
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TT:Lcom/android/email/c;

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TT:Lcom/android/email/c;

    invoke-virtual {v0}, Lcom/android/email/c;->gD()Z

    move-result v0

    .line 1286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final declared-synchronized kw()V
    .locals 18

    .prologue
    .line 838
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/email/service/AttachmentService;->TZ:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 842
    sget-object v2, Lcom/android/email/service/AttachmentService;->TZ:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 843
    :goto_0
    if-eqz v2, :cond_1

    .line 845
    const/4 v3, 0x0

    aget-wide v4, v2, v3

    .line 846
    const/4 v3, 0x1

    aget-wide v6, v2, v3

    .line 847
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->o(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    .line 848
    if-nez v3, :cond_0

    .line 849
    const-string v3, "AttachmentService"

    const-string v6, "Could not restore attachment #%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v3, v6, v7}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 838
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 852
    :cond_0
    long-to-int v2, v6

    :try_start_1
    iput v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    .line 853
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/email/service/AttachmentService;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 854
    sget-object v2, Lcom/android/email/service/AttachmentService;->TZ:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    goto :goto_0

    .line 857
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    invoke-virtual {v4}, Lcom/android/email/service/e;->getSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 859
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentService;->TX:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_6

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    invoke-virtual {v2}, Lcom/android/email/service/e;->kA()Lcom/android/email/service/g;

    move-result-object v2

    .line 861
    if-eqz v2, :cond_6

    .line 863
    iget-wide v4, v2, Lcom/android/email/service/g;->LN:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/email/service/AttachmentService;->y(J)I

    move-result v3

    if-lez v3, :cond_3

    .line 867
    const-string v3, "AttachmentService"

    const-string v4, "Skipping #%d; maxed for acct %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, v2, Lcom/android/email/service/g;->Ul:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, v2, Lcom/android/email/service/g;->LN:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 871
    :cond_3
    iget-wide v4, v2, Lcom/android/email/service/g;->Ul:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->o(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    if-nez v3, :cond_4

    .line 872
    const-string v3, "AttachmentService"

    const-string v4, "Could not load attachment: #%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, v2, Lcom/android/email/service/g;->Ul:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 875
    :cond_4
    iget-boolean v3, v2, Lcom/android/email/service/g;->Um:Z

    if-nez v3, :cond_2

    .line 876
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 877
    iget-wide v6, v2, Lcom/android/email/service/g;->Uq:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_5

    iget-wide v6, v2, Lcom/android/email/service/g;->Ur:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_5

    .line 878
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, v2, Lcom/android/email/service/g;->Ul:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v4

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentService;->TU:Lcom/android/email/service/AttachmentService$AttachmentWatchdog;

    const-wide/16 v4, 0x2710

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/email/service/AttachmentService$AttachmentWatchdog;->g(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 887
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/service/AttachmentService;->a(Lcom/android/email/service/g;)Z

    goto/16 :goto_1

    .line 892
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentService;->TT:Lcom/android/email/c;

    .line 893
    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/email/c;->gB()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/android/email/c;->gE()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    .line 897
    :cond_7
    const-string v2, "AttachmentService"

    const-string v3, "Skipping opportunistic downloads since WIFI is not available"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 969
    :goto_2
    monitor-exit p0

    return-void

    .line 902
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentService;->TX:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x2

    .line 904
    if-gtz v2, :cond_9

    .line 907
    const-string v3, "AttachmentService"

    const-string v4, "Skipping opportunistic downloads, %d threads available"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 909
    invoke-direct/range {p0 .. p0}, Lcom/android/email/service/AttachmentService;->kx()V

    goto :goto_2

    .line 913
    :cond_9
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    .line 918
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/16 v3, 0x19

    invoke-static {v2, v3}, Lcom/android/emailcommon/provider/EmailContent;->c(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/AttachmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->XO:[Ljava/lang/String;

    const-string v5, "contentUri isnull AND flags=0 AND messageKey IN (SELECT _id FROM Message WHERE mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1))"

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/AttachmentService;->getCacheDir()Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 926
    :cond_a
    :goto_3
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 927
    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 928
    invoke-virtual {v7, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->b(Landroid/database/Cursor;)V

    .line 929
    iget-wide v2, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lq:J

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 930
    if-nez v8, :cond_b

    .line 933
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v8, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 934
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8, v9}, Lcom/android/emailcommon/provider/EmailContent;->a(Landroid/content/Context;Landroid/net/Uri;J)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 968
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 939
    :cond_b
    :try_start_5
    new-instance v2, Lcom/android/email/a;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7}, Lcom/android/email/a;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 940
    invoke-virtual {v2}, Lcom/android/email/a;->gA()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 943
    iget-object v2, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yn:Ljava/lang/String;

    if-nez v2, :cond_c

    if-nez v8, :cond_d

    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_a

    .line 944
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentService;->TW:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 945
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_14

    .line 947
    const-string v2, "AttachmentService"

    const-string v3, "Too many failed attempts for attachment #%d "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 943
    :cond_d
    iget v2, v8, Lcom/android/emailcommon/provider/Account;->dM:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v2, 0x0

    goto :goto_4

    :cond_e
    invoke-virtual {v6}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10

    long-to-float v4, v2

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v4, v9

    float-to-long v12, v4

    cmp-long v4, v10, v12

    if-gez v4, :cond_f

    const/4 v2, 0x0

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/service/AttachmentService;->Ua:Lcom/android/email/service/c;

    invoke-virtual {v4}, Lcom/android/email/service/c;->kz()I

    move-result v4

    long-to-float v2, v2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    int-to-float v3, v4

    div-float/2addr v2, v3

    float-to-long v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/AttachmentService;->TV:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v12, v8, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v3, v12, v10

    if-lez v3, :cond_12

    :cond_10
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_11

    array-length v12, v9

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v12, :cond_11

    aget-object v4, v9, v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v4

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/service/AttachmentService;->TV:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v12, v8, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v3, v12, v10

    if-ltz v3, :cond_13

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 952
    :cond_14
    new-instance v2, Lcom/android/email/service/g;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7, v3}, Lcom/android/email/service/g;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;B)V

    .line 953
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/service/AttachmentService;->a(Lcom/android/email/service/g;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 968
    :cond_15
    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 963
    :cond_16
    :try_start_7
    const-string v2, "AttachmentService"

    const-string v3, "Skipping attachment #%d, it is ineligible"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 626
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AttachmentService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 627
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 636
    invoke-direct {p0}, Lcom/android/email/service/AttachmentService;->kx()V

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/service/AttachmentService;->Lz:Z

    .line 642
    sget-object v0, Lcom/android/email/service/AttachmentService;->TS:Lcom/android/email/service/AttachmentService;

    if-eqz v0, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/android/email/service/AttachmentService;->kv()V

    .line 645
    sput-object v1, Lcom/android/email/service/AttachmentService;->TS:Lcom/android/email/service/AttachmentService;

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TT:Lcom/android/email/c;

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TT:Lcom/android/email/c;

    invoke-virtual {v0}, Lcom/android/email/c;->unregister()V

    .line 649
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TT:Lcom/android/email/c;

    invoke-virtual {v0}, Lcom/android/email/c;->gC()V

    .line 650
    iput-object v1, p0, Lcom/android/email/service/AttachmentService;->TT:Lcom/android/email/c;

    .line 652
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 598
    sget-object v0, Lcom/android/email/service/AttachmentService;->TS:Lcom/android/email/service/AttachmentService;

    if-nez v0, :cond_0

    .line 599
    sput-object p0, Lcom/android/email/service/AttachmentService;->TS:Lcom/android/email/service/AttachmentService;

    .line 601
    :cond_0
    if-eqz p1, :cond_1

    .line 603
    const-string v0, "com.android.email.AttachmentService.attachment_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 604
    const-string v2, "com.android.email.AttachmentService.attachment_flags"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 605
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_2

    if-ltz v2, :cond_2

    .line 606
    sget-object v3, Lcom/android/email/service/AttachmentService;->TZ:Ljava/util/Queue;

    new-array v4, v8, [J

    aput-wide v0, v4, v7

    int-to-long v0, v2

    aput-wide v0, v4, v6

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-direct {p0}, Lcom/android/email/service/AttachmentService;->kv()V

    .line 613
    :cond_1
    :goto_0
    return v6

    .line 610
    :cond_2
    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 660
    new-instance v0, Lcom/android/email/c;

    const-string v1, "AttachmentService"

    invoke-direct {v0, p0, v1}, Lcom/android/email/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentService;->TT:Lcom/android/email/c;

    .line 661
    new-instance v0, Lcom/android/email/service/c;

    invoke-direct {v0, p0}, Lcom/android/email/service/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentService;->Ua:Lcom/android/email/service/c;

    .line 666
    invoke-virtual {p0}, Lcom/android/email/service/AttachmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->XT:[Ljava/lang/String;

    const-string v3, "(flags & ?) != 0"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 671
    :try_start_0
    const-string v0, "AttachmentService"

    const-string v2, "Count of previous downloads to resume (from db): %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 673
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 674
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->o(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 676
    if-eqz v0, :cond_0

    .line 677
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 678
    invoke-direct {p0, p0, v0}, Lcom/android/email/service/AttachmentService;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 688
    :goto_1
    iget-boolean v0, p0, Lcom/android/email/service/AttachmentService;->Lz:Z

    if-nez v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TT:Lcom/android/email/c;

    .line 692
    if-eqz v0, :cond_1

    .line 693
    invoke-virtual {v0}, Lcom/android/email/c;->gF()V

    .line 695
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/service/AttachmentService;->Lz:Z

    if-eqz v0, :cond_5

    .line 697
    const-string v0, "AttachmentService"

    const-string v1, "AttachmentService has been instructed to stop"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 722
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TT:Lcom/android/email/c;

    .line 728
    if-eqz v0, :cond_3

    .line 729
    invoke-virtual {v0}, Lcom/android/email/c;->unregister()V

    .line 731
    :cond_3
    return-void

    .line 684
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 703
    :cond_5
    invoke-direct {p0}, Lcom/android/email/service/AttachmentService;->kx()V

    .line 705
    invoke-virtual {p0}, Lcom/android/email/service/AttachmentService;->kw()V

    .line 706
    invoke-direct {p0}, Lcom/android/email/service/AttachmentService;->kx()V

    .line 709
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TY:Lcom/android/email/service/e;

    invoke-virtual {v0}, Lcom/android/email/service/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->TX:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_6

    .line 710
    const-string v0, "AttachmentService"

    const-string v1, "Shutting down service. No in-progress or pending downloads."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 711
    invoke-virtual {p0}, Lcom/android/email/service/AttachmentService;->stopSelf()V

    goto :goto_2

    .line 714
    :cond_6
    iget-object v1, p0, Lcom/android/email/service/AttachmentService;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 717
    :try_start_2
    iget-object v0, p0, Lcom/android/email/service/AttachmentService;->fK:Ljava/lang/Object;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 721
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    goto :goto_3
.end method
