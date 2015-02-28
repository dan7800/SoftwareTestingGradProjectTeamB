.class final Lcom/android/email/provider/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final RK:Lcom/android/email/provider/ContentCache;

.field private RL:I

.field private RM:I

.field private RN:I

.field private RO:I

.field private RP:J

.field private RQ:J

.field private RR:J

.field private RS:J

.field private RT:I

.field private RU:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static synthetic a(Lcom/android/email/provider/e;)I
    .locals 2

    .prologue
    .line 733
    iget v0, p0, Lcom/android/email/provider/e;->RO:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/e;->RO:I

    return v0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 787
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 791
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide v8, 0x412e848000000000L    # 1000000.0

    .line 795
    iget v0, p0, Lcom/android/email/provider/e;->RL:I

    iget v1, p0, Lcom/android/email/provider/e;->RM:I

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const-string v0, "No cache"

    .line 807
    :goto_0
    return-object v0

    .line 796
    :cond_0
    iget v0, p0, Lcom/android/email/provider/e;->RM:I

    iget v1, p0, Lcom/android/email/provider/e;->RN:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/provider/e;->RL:I

    add-int/2addr v1, v0

    .line 797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Cache "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/provider/e;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v3, "Cursors"

    iget-object v0, p0, Lcom/android/email/provider/e;->RK:Lcom/android/email/provider/ContentCache;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/email/provider/e;->RT:I

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/email/provider/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 800
    const-string v0, "Hits"

    iget v3, p0, Lcom/android/email/provider/e;->RL:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/email/provider/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 801
    const-string v0, "Misses"

    iget v3, p0, Lcom/android/email/provider/e;->RM:I

    iget v4, p0, Lcom/android/email/provider/e;->RN:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/email/provider/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 802
    const-string v0, "Inval"

    iget v3, p0, Lcom/android/email/provider/e;->RO:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/email/provider/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 803
    const-string v3, "Tokens"

    iget-object v0, p0, Lcom/android/email/provider/e;->RK:Lcom/android/email/provider/ContentCache;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/email/provider/e;->RU:I

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/email/provider/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 804
    const-string v0, "Hit%"

    iget v3, p0, Lcom/android/email/provider/e;->RL:I

    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/android/email/provider/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 805
    const-string v0, "\nHit time"

    iget-wide v4, p0, Lcom/android/email/provider/e;->RQ:J

    long-to-double v4, v4

    div-double/2addr v4, v8

    iget-wide v6, p0, Lcom/android/email/provider/e;->RP:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/android/email/provider/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 806
    const-string v0, "Miss time"

    iget-wide v4, p0, Lcom/android/email/provider/e;->RS:J

    long-to-double v4, v4

    div-double/2addr v4, v8

    iget-wide v6, p0, Lcom/android/email/provider/e;->RR:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/android/email/provider/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 807
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/android/email/provider/e;->RK:Lcom/android/email/provider/ContentCache;

    invoke-virtual {v0}, Lcom/android/email/provider/ContentCache;->size()I

    move-result v0

    goto :goto_1

    .line 803
    :cond_2
    iget-object v0, p0, Lcom/android/email/provider/e;->RK:Lcom/android/email/provider/ContentCache;

    iget-object v0, v0, Lcom/android/email/provider/ContentCache;->RF:Lcom/android/email/provider/ContentCache$TokenList;

    invoke-virtual {v0}, Lcom/android/email/provider/ContentCache$TokenList;->size()I

    move-result v0

    goto :goto_2
.end method
