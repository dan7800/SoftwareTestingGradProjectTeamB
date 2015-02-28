.class final Lcom/google/android/gm/provider/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bmw:Ljava/lang/String;

.field private final bmx:Ljava/lang/Long;

.field private final mMessageId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/gm/provider/bs;->bmw:Ljava/lang/String;

    .line 39
    iput-wide p2, p0, Lcom/google/android/gm/provider/bs;->mMessageId:J

    .line 40
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/bs;->bmx:Ljava/lang/Long;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/gm/provider/bs;->bmw:Ljava/lang/String;

    .line 26
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/bs;->mMessageId:J

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/bs;->bmx:Ljava/lang/Long;

    .line 28
    return-void
.end method


# virtual methods
.method final HH()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gm/provider/bs;->bmw:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/bs;->bmw:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->bdI:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method final HI()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gm/provider/bs;->bmx:Ljava/lang/Long;

    return-object v0
.end method

.method final sM()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/android/gm/provider/bs;->mMessageId:J

    return-wide v0
.end method
