.class public Lcom/android/ex/chips/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private RI:Z

.field private final Xy:Ljava/lang/String;

.field private final adT:Ljava/lang/Long;

.field private final afp:I

.field private afq:Z

.field private final afr:Ljava/lang/String;

.field private final afs:I

.field private final aft:Ljava/lang/String;

.field private final afu:J

.field private final afv:J

.field private final afw:Z

.field private final afx:Landroid/net/Uri;

.field private afy:[B

.field private final afz:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v1, p0, Lcom/android/ex/chips/ae;->afp:I

    .line 87
    iput-boolean p11, p0, Lcom/android/ex/chips/ae;->afq:Z

    .line 88
    iput-object p1, p0, Lcom/android/ex/chips/ae;->Xy:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/android/ex/chips/ae;->afr:Ljava/lang/String;

    .line 90
    iput p3, p0, Lcom/android/ex/chips/ae;->afs:I

    .line 91
    iput-object p4, p0, Lcom/android/ex/chips/ae;->aft:Ljava/lang/String;

    .line 92
    iput-wide p5, p0, Lcom/android/ex/chips/ae;->afu:J

    .line 93
    iput-object p7, p0, Lcom/android/ex/chips/ae;->adT:Ljava/lang/Long;

    .line 94
    iput-wide p8, p0, Lcom/android/ex/chips/ae;->afv:J

    .line 95
    iput-object p10, p0, Lcom/android/ex/chips/ae;->afx:Landroid/net/Uri;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/ae;->afy:[B

    .line 97
    iput-boolean v1, p0, Lcom/android/ex/chips/ae;->afw:Z

    .line 98
    iput-boolean p12, p0, Lcom/android/ex/chips/ae;->RI:Z

    .line 99
    iput-object p13, p0, Lcom/android/ex/chips/ae;->afz:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public static H(J)Z
    .locals 2

    .prologue
    .line 111
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/ae;
    .locals 17

    .prologue
    .line 174
    new-instance v3, Lcom/android/ex/chips/ae;

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/ae;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p10, :cond_0

    invoke-static/range {p10 .. p10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    :goto_0
    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move-object/from16 v16, p11

    invoke-direct/range {v3 .. v16}, Lcom/android/ex/chips/ae;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;)V

    return-object v3

    :cond_0
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/ex/chips/ae;
    .locals 14

    .prologue
    .line 156
    new-instance v0, Lcom/android/ex/chips/ae;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, -0x2

    const/4 v7, 0x0

    const-wide/16 v8, -0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v12, p2

    invoke-direct/range {v0 .. v13}, Lcom/android/ex/chips/ae;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;)V

    return-object v0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0x14

    if-le p0, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public static aO(Ljava/lang/String;)Lcom/android/ex/chips/ae;
    .locals 15

    .prologue
    const-wide/16 v6, -0x1

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 133
    new-instance v1, Lcom/android/ex/chips/ae;

    const/4 v4, -0x1

    move-object v2, p0

    move-object v3, p0

    move-object v8, v5

    move-wide v9, v6

    move-object v11, v5

    move v13, v12

    move-object v14, v5

    invoke-direct/range {v1 .. v14}, Lcom/android/ex/chips/ae;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;)V

    return-object v1
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/ae;
    .locals 17

    .prologue
    .line 184
    new-instance v3, Lcom/android/ex/chips/ae;

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/ae;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p10, :cond_0

    invoke-static/range {p10 .. p10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    :goto_0
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move-object/from16 v16, p11

    invoke-direct/range {v3 .. v16}, Lcom/android/ex/chips/ae;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;)V

    return-object v3

    :cond_0
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Z)Lcom/android/ex/chips/ae;
    .locals 15

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 120
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 121
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 123
    :goto_0
    new-instance v1, Lcom/android/ex/chips/ae;

    const/4 v4, -0x1

    const/4 v12, 0x1

    move-object v3, v2

    move-object v8, v5

    move-wide v9, v6

    move-object v11, v5

    move/from16 v13, p1

    move-object v14, v5

    invoke-direct/range {v1 .. v14}, Lcom/android/ex/chips/ae;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;)V

    return-object v1

    :cond_0
    move-object v2, p0

    .line 121
    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized b([B)V
    .locals 1

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/ex/chips/ae;->afy:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/ex/chips/ae;->Xy:Ljava/lang/String;

    return-object v0
.end method

.method public final isSelectable()Z
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/ex/chips/ae;->afp:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isValid()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/ex/chips/ae;->RI:Z

    return v0
.end method

.method public final mT()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/ex/chips/ae;->afp:I

    return v0
.end method

.method public final mU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/ex/chips/ae;->afr:Ljava/lang/String;

    return-object v0
.end method

.method public final mV()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/android/ex/chips/ae;->afs:I

    return v0
.end method

.method public final mW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/ex/chips/ae;->aft:Ljava/lang/String;

    return-object v0
.end method

.method public final mX()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/android/ex/chips/ae;->afu:J

    return-wide v0
.end method

.method public final mY()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/ex/chips/ae;->adT:Ljava/lang/Long;

    return-object v0
.end method

.method public final mZ()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/android/ex/chips/ae;->afv:J

    return-wide v0
.end method

.method public final na()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/ex/chips/ae;->afq:Z

    return v0
.end method

.method public final nb()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/ex/chips/ae;->afx:Landroid/net/Uri;

    return-object v0
.end method

.method public final declared-synchronized nc()[B
    .locals 1

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/chips/ae;->afy:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final nd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/ex/chips/ae;->afz:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/ex/chips/ae;->Xy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/ae;->afr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">, isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ex/chips/ae;->RI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
