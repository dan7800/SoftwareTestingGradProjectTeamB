.class public final Lcom/android/mail/utils/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aQA:Ljava/util/Timer;

.field private static final mW:Ljava/lang/String;


# instance fields
.field private final LF:Lcom/android/mail/utils/d;

.field private final aQB:Ljava/util/Timer;

.field private final aQC:Ljava/lang/Runnable;

.field private final aQD:I

.field private final aQE:I

.field private aQF:J

.field private aQG:Lcom/android/mail/utils/ae;

.field private aaP:I

.field private final mHandler:Landroid/os/Handler;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/ad;->mW:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/mail/utils/ad;->aQA:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 8

    .prologue
    .line 80
    const/16 v4, 0xc8

    const/16 v5, 0x12c

    sget-object v6, Lcom/android/mail/utils/d;->aOX:Lcom/android/mail/utils/d;

    sget-object v7, Lcom/android/mail/utils/ad;->aQA:Ljava/util/Timer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/mail/utils/ad;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;IILcom/android/mail/utils/d;Ljava/util/Timer;)V

    .line 81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;IILcom/android/mail/utils/d;Ljava/util/Timer;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/mail/utils/ad;->mName:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/android/mail/utils/ad;->aQC:Ljava/lang/Runnable;

    .line 92
    iput-object p6, p0, Lcom/android/mail/utils/ad;->LF:Lcom/android/mail/utils/d;

    .line 93
    iput-object p7, p0, Lcom/android/mail/utils/ad;->aQB:Ljava/util/Timer;

    .line 94
    iput-object p3, p0, Lcom/android/mail/utils/ad;->mHandler:Landroid/os/Handler;

    .line 95
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/mail/utils/ad;->aQD:I

    .line 96
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/mail/utils/ad;->aQE:I

    .line 97
    iget v0, p0, Lcom/android/mail/utils/ad;->aQD:I

    iput v0, p0, Lcom/android/mail/utils/ad;->aaP:I

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/android/mail/utils/ad;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mail/utils/ad;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/android/mail/utils/ad;)Lcom/android/mail/utils/ae;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/utils/ad;->aQG:Lcom/android/mail/utils/ae;

    return-object v0
.end method

.method static synthetic c(Lcom/android/mail/utils/ad;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mail/utils/ad;->aQC:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final Bd()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/mail/utils/ad;->LF:Lcom/android/mail/utils/d;

    invoke-static {}, Lcom/android/mail/utils/d;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/mail/utils/ad;->aQF:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/mail/utils/ad;->aaP:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/mail/utils/ad;->aaP:I

    iget v0, p0, Lcom/android/mail/utils/ad;->aaP:I

    iget v4, p0, Lcom/android/mail/utils/ad;->aQE:I

    if-lt v0, v4, :cond_0

    iget v0, p0, Lcom/android/mail/utils/ad;->aQE:I

    iput v0, p0, Lcom/android/mail/utils/ad;->aaP:I

    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/android/mail/utils/ad;->aQF:J

    .line 138
    iget-object v0, p0, Lcom/android/mail/utils/ad;->aQG:Lcom/android/mail/utils/ae;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    .line 142
    new-instance v0, Lcom/android/mail/utils/ae;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/utils/ae;-><init>(Lcom/android/mail/utils/ad;B)V

    iput-object v0, p0, Lcom/android/mail/utils/ad;->aQG:Lcom/android/mail/utils/ae;

    .line 143
    iget-object v0, p0, Lcom/android/mail/utils/ad;->aQB:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/mail/utils/ad;->aQG:Lcom/android/mail/utils/ae;

    iget v2, p0, Lcom/android/mail/utils/ad;->aaP:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 145
    :cond_1
    return-void

    .line 136
    :cond_2
    iget v0, p0, Lcom/android/mail/utils/ad;->aQD:I

    iput v0, p0, Lcom/android/mail/utils/ad;->aaP:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 138
    goto :goto_1
.end method
