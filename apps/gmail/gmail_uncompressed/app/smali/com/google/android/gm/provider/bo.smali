.class final Lcom/google/android/gm/provider/bo;
.super Lcom/google/android/gm/provider/bg;
.source "SourceFile"


# instance fields
.field private Xt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/common/http/g;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blx:Lcom/google/android/gm/provider/MailSync;

.field bmk:Lcom/google/common/a/a/a;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailSync;Lcom/google/common/a/a/a;)V
    .locals 1

    .prologue
    .line 3720
    iput-object p1, p0, Lcom/google/android/gm/provider/bo;->blx:Lcom/google/android/gm/provider/MailSync;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/bg;-><init>(Lcom/google/android/gm/provider/MailSync;B)V

    .line 3721
    iput-object p2, p0, Lcom/google/android/gm/provider/bo;->bmk:Lcom/google/common/a/a/a;

    .line 3722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/bo;->Xt:Ljava/util/ArrayList;

    .line 3723
    return-void
.end method

.method private static aN(J)Z
    .locals 2

    .prologue
    .line 4123
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aO(J)Lcom/google/common/a/a/a;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 4127
    iget-object v0, p0, Lcom/google/android/gm/provider/bo;->bmk:Lcom/google/common/a/a/a;

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->fv(I)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 4128
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 4129
    return-object v0
.end method


# virtual methods
.method public final HB()I
    .locals 2

    .prologue
    .line 3727
    iget-object v0, p0, Lcom/google/android/gm/provider/bo;->bmk:Lcom/google/common/a/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->fA(I)I

    move-result v0

    return v0
.end method

.method public final HF()Z
    .locals 1

    .prologue
    .line 3731
    iget-object v0, p0, Lcom/google/android/gm/provider/bo;->Xt:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/bo;->Xt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final HG()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/common/http/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3735
    iget-object v0, p0, Lcom/google/android/gm/provider/bo;->Xt:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(JIJI)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 4031
    invoke-static {}, Lcom/google/android/gm/provider/MailSync;->oA()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MailSync posting operation %d (emptySpamOrTrash): folderType=%d messageSequenceNumber=%d maxCount=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4035
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/bo;->aO(J)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 4036
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 4038
    invoke-virtual {v0, v5, p3}, Lcom/google/common/a/a/a;->setInt(II)V

    .line 4039
    invoke-virtual {v0, v6, p4, p5}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 4042
    invoke-virtual {v0, v7, p6}, Lcom/google/common/a/a/a;->setInt(II)V

    .line 4043
    return-void
.end method

.method public final a(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 4082
    invoke-static {}, Lcom/google/android/gm/provider/MailSync;->oA()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad uphill sync for id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4083
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/bo;->aO(J)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 4084
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 4086
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Lcom/google/common/a/a/a;->setInt(II)V

    .line 4088
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 4089
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p5}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 4090
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p6}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 4091
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p7}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 4092
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p8}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 4093
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p9}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 4095
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p10}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 4096
    return-void
.end method

.method public final a(JJJZ)V
    .locals 5

    .prologue
    const/4 v2, 0x3

    .line 3782
    invoke-static {p5, p6}, Lcom/google/android/gm/provider/bo;->aN(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3802
    :goto_0
    return-void

    .line 3784
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/bo;->aO(J)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 3785
    invoke-virtual {v0, v2}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v1

    .line 3787
    invoke-virtual {v1, v2, p7}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 3789
    const/4 v0, 0x1

    invoke-virtual {v1, v0, p3, p4}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 3792
    invoke-static {p5, p6}, Lcom/google/android/gm/provider/ae;->au(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3793
    const/4 v0, 0x2

    invoke-virtual {v1, v0, p5, p6}, Lcom/google/common/a/a/a;->setLong(IJ)V

    goto :goto_0

    .line 3797
    :cond_1
    const/4 v2, 0x4

    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdN:Lcom/google/common/collect/k;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/common/collect/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(JJLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 4048
    invoke-static {}, Lcom/google/android/gm/provider/MailSync;->oA()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MailSync posting operation %d (resetUnseenCount):  messageSequenceNumber=%d query=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p5, v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4052
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/bo;->aO(J)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 4053
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 4055
    invoke-virtual {v0, v6, p3, p4}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 4058
    invoke-virtual {v0, v5, p5}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 4059
    return-void
.end method

.method public final a(JLcom/google/android/gm/provider/bm;JJZ)V
    .locals 20

    .prologue
    .line 3809
    invoke-static {}, Lcom/google/android/gm/provider/MailSync;->oA()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MailSync posting operation %d (messageSavedOrSent)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3811
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gm/provider/bo;->aO(J)Lcom/google/common/a/a/a;

    move-result-object v4

    .line 3812
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v9

    .line 3814
    const/16 v4, 0xa

    move/from16 v0, p8

    invoke-virtual {v9, v4, v0}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 3816
    const/4 v4, 0x1

    move-wide/from16 v0, p4

    invoke-virtual {v9, v4, v0, v1}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 3819
    const/4 v4, 0x2

    move-wide/from16 v0, p6

    invoke-virtual {v9, v4, v0, v1}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 3822
    const/16 v4, 0x10

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/gm/provider/bm;->bmg:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 3825
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gm/provider/bm;->bmg:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/bo;->blx:Lcom/google/android/gm/provider/MailSync;

    invoke-static {v4}, Lcom/google/android/gm/provider/MailSync;->b(Lcom/google/android/gm/provider/MailSync;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/gm/provider/bm;->blK:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v4

    sget-object v5, Lcom/google/android/gm/provider/Gmail;->bdS:[Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/google/android/gm/provider/bm;->bmg:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gm/provider/MailEngine;->d([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_5

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "send_body"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v6, "body"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    const/16 v4, 0x11

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v4, v6}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3826
    :cond_1
    const/4 v4, 0x3

    const-string v5, ", "

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/google/android/gm/provider/bm;->blN:Ljava/util/List;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 3829
    const/4 v4, 0x4

    const-string v5, ", "

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/google/android/gm/provider/bm;->blO:Ljava/util/List;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 3832
    const/4 v4, 0x5

    const-string v5, ", "

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/google/android/gm/provider/bm;->blP:Ljava/util/List;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 3835
    const/4 v5, 0x6

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gm/provider/bm;->ayV:Ljava/lang/String;

    if-eqz v4, :cond_7

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gm/provider/bm;->ayV:Ljava/lang/String;

    :goto_1
    invoke-virtual {v9, v5, v4}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 3838
    const/4 v5, 0x7

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    if-eqz v4, :cond_8

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    :goto_2
    invoke-virtual {v9, v5, v4}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 3843
    move-object/from16 v0, p3

    iget-boolean v4, v0, Lcom/google/android/gm/provider/bm;->blY:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lcom/google/android/gm/provider/bm;->blW:Z

    if-eqz v4, :cond_9

    .line 3844
    const/16 v4, 0xb

    const/4 v5, 0x1

    invoke-virtual {v9, v4, v5}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 3847
    const/16 v4, 0xd

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/google/android/gm/provider/bm;->blX:J

    invoke-virtual {v9, v4, v6, v7}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 3850
    move-object/from16 v0, p3

    iget-boolean v4, v0, Lcom/google/android/gm/provider/bm;->blV:Z

    if-eqz v4, :cond_2

    .line 3851
    const/16 v4, 0xc

    const/4 v5, 0x1

    invoke-virtual {v9, v4, v5}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 3861
    :cond_2
    :goto_3
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gm/provider/bm;->bma:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3862
    const/16 v4, 0xe

    const/4 v5, 0x1

    invoke-virtual {v9, v4, v5}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 3865
    const/16 v4, 0xf

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/gm/provider/bm;->bma:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 3869
    invoke-static {}, Lcom/google/android/gm/provider/MailSync;->oA()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Uphill Sync operation with custom from address: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/google/android/gm/provider/bm;->bma:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3873
    :cond_3
    const/4 v4, 0x1

    .line 3874
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/gm/provider/bm;->blT:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v5, v4

    :cond_4
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 3875
    iget v6, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    packed-switch v6, :pswitch_data_0

    .line 3987
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown origin: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3825
    :cond_5
    :try_start_1
    const-string v4, "Failed to find an entry for ad event id: %s"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/google/android/gm/provider/bm;->bmg:Ljava/lang/String;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4

    .line 3835
    :cond_7
    const-string v4, ""

    goto/16 :goto_1

    .line 3838
    :cond_8
    const-string v4, ""

    goto/16 :goto_2

    .line 3855
    :cond_9
    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v9, v4, v5}, Lcom/google/common/a/a/a;->q(IZ)V

    goto/16 :goto_3

    .line 3877
    :pswitch_0
    const/16 v6, 0x8

    invoke-virtual {v4}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->Ia()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v6, v4}, Lcom/google/common/a/a/a;->i(ILjava/lang/String;)V

    goto :goto_4

    .line 3883
    :pswitch_1
    iget-object v6, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/mail/common/base/K;->gK(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3888
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3889
    add-int/lit8 v5, v5, 0x1

    .line 3893
    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/provider/bo;->blx:Lcom/google/android/gm/provider/MailSync;

    invoke-static {v7}, Lcom/google/android/gm/provider/MailSync;->c(Lcom/google/android/gm/provider/MailSync;)Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "gmail_use_multipart_protobuf"

    const/4 v11, 0x1

    invoke-static {v7, v8, v11}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    move v8, v7

    .line 3895
    :goto_6
    const/4 v7, 0x0

    .line 3897
    if-eqz v8, :cond_d

    .line 3898
    :try_start_2
    new-instance v11, Lcom/google/android/gm/provider/bh;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gm/provider/bo;->blx:Lcom/google/android/gm/provider/MailSync;

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-direct {v11, v12, v14, v15, v4}, Lcom/google/android/gm/provider/bh;-><init>(Lcom/google/android/gm/provider/MailSync;JLcom/google/android/gm/provider/uiprovider/GmailAttachment;)V

    .line 3902
    new-instance v12, Lcom/google/android/common/http/a;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v6, v11, v13}, Lcom/google/android/common/http/a;-><init>(Ljava/lang/String;Lcom/google/android/common/http/i;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3924
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gm/provider/bo;->Xt:Ljava/util/ArrayList;

    if-nez v11, :cond_a

    .line 3925
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/gm/provider/bo;->Xt:Ljava/util/ArrayList;

    .line 3927
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gm/provider/bo;->Xt:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3968
    :goto_7
    const/16 v11, 0x9

    invoke-virtual {v9, v11}, Lcom/google/common/a/a/a;->fv(I)Lcom/google/common/a/a/a;

    move-result-object v11

    .line 3970
    const/4 v12, 0x1

    invoke-virtual {v11, v12, v6}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 3973
    const/4 v6, 0x2

    invoke-virtual {v4}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 3976
    const/4 v6, 0x3

    invoke-virtual {v4}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v6, v4}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 3979
    if-nez v8, :cond_4

    .line 3980
    invoke-virtual {v11, v7}, Lcom/google/common/a/a/a;->p([B)V

    goto/16 :goto_4

    .line 3891
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 3893
    :cond_c
    const/4 v7, 0x0

    move v8, v7

    goto :goto_6

    .line 3904
    :catch_0
    move-exception v4

    .line 3909
    invoke-static {}, Lcom/google/android/gm/provider/MailSync;->oA()Ljava/lang/String;

    move-result-object v7

    const-string v8, "IO error while reading attachment: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-static {v7, v4, v8, v11}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3911
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p8

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gm/provider/bo;->a(Lcom/google/android/gm/provider/bm;Ljava/lang/Exception;Z)V

    goto/16 :goto_4

    .line 3913
    :catch_1
    move-exception v4

    .line 3917
    invoke-static {}, Lcom/google/android/gm/provider/MailSync;->oA()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SecurityException while reading attachment: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-static {v7, v4, v8, v11}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3920
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p8

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gm/provider/bo;->a(Lcom/google/android/gm/provider/bm;Ljava/lang/Exception;Z)V

    goto/16 :goto_4

    .line 3930
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/provider/bo;->blx:Lcom/google/android/gm/provider/MailSync;

    invoke-static {v7}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/android/gm/provider/MailSync;)Lcom/google/android/gm/provider/ba;

    move-result-object v7

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-interface {v7, v4}, Lcom/google/android/gm/provider/ba;->b(Lcom/google/android/gm/provider/uiprovider/GmailAttachment;)Ljava/io/InputStream;

    move-result-object v7

    .line 3932
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3933
    const/16 v12, 0x400

    new-array v12, v12, [B

    .line 3934
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 3936
    :cond_e
    invoke-virtual {v7, v12}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 3937
    if-ltz v13, :cond_f

    .line 3938
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v12, v0, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3940
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v16, v16, v14

    const-wide/32 v18, 0x36ee80

    cmp-long v13, v16, v18

    if-lez v13, :cond_e

    .line 3941
    new-instance v4, Ljava/io/IOException;

    const-string v7, "Timed out reading attachment"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3945
    :catch_2
    move-exception v4

    .line 3950
    invoke-static {}, Lcom/google/android/gm/provider/MailSync;->oA()Ljava/lang/String;

    move-result-object v7

    const-string v8, "IO error while reading attachment: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-static {v7, v4, v8, v11}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3953
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p8

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gm/provider/bo;->a(Lcom/google/android/gm/provider/bm;Ljava/lang/Exception;Z)V

    goto/16 :goto_4

    .line 3944
    :cond_f
    :try_start_4
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v7

    goto/16 :goto_7

    .line 3955
    :catch_3
    move-exception v4

    .line 3958
    invoke-static {}, Lcom/google/android/gm/provider/MailSync;->oA()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Security exception while reading attachment: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-static {v7, v4, v8, v11}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3961
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p8

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gm/provider/bo;->a(Lcom/google/android/gm/provider/bm;Ljava/lang/Exception;Z)V

    goto/16 :goto_4

    .line 3990
    :cond_10
    invoke-static {}, Lcom/google/android/gm/provider/MailSync;->oA()Ljava/lang/String;

    move-result-object v4

    const-string v5, "messageSavedOrSent: message = %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3991
    return-void

    .line 3875
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 4101
    invoke-static {}, Lcom/google/android/gm/provider/MailSync;->oA()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MailSync posting operation %d (Pref change): name: %s, stringValue: %s, isDelete=%b"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p3, v2, v5

    aput-object p4, v2, v6

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4104
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/bo;->aO(J)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 4105
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 4107
    invoke-virtual {v0, v5, p3}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 4109
    invoke-virtual {v0, v6, p4}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 4111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->p([B)V

    .line 4114
    invoke-virtual {v0, v7, p5}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 4116
    return-void
.end method

.method public final a(JLjava/util/Set;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 4064
    invoke-static {}, Lcom/google/android/gm/provider/MailSync;->oA()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MailSync posting operation %d (configureSectionedInbox):  sections=%s showStarredInPersonal=%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4068
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/bo;->aO(J)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 4069
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v1

    .line 4071
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4072
    invoke-virtual {v1, v0}, Lcom/google/common/a/a/a;->fu(I)V

    goto :goto_0

    .line 4074
    :cond_0
    invoke-virtual {v1, v5, p4}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 4076
    return-void
.end method

.method public final d(JJJ)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3740
    invoke-static {p5, p6}, Lcom/google/android/gm/provider/bo;->aN(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3760
    :goto_0
    return-void

    .line 3742
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/bo;->aO(J)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 3743
    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v1

    .line 3745
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 3747
    invoke-virtual {v1, v2, p3, p4}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 3751
    invoke-static {p5, p6}, Lcom/google/android/gm/provider/ae;->au(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3752
    invoke-virtual {v1, v3, p5, p6}, Lcom/google/common/a/a/a;->setLong(IJ)V

    goto :goto_0

    .line 3756
    :cond_1
    const/4 v2, 0x4

    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdN:Lcom/google/common/collect/k;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/common/collect/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final e(JJJ)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 3764
    invoke-static {p5, p6}, Lcom/google/android/gm/provider/bo;->aN(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3777
    :goto_0
    return-void

    .line 3766
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/bo;->aO(J)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 3767
    invoke-virtual {v0, v3}, Lcom/google/common/a/a/a;->fC(I)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 3769
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 3771
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 3774
    invoke-virtual {v0, v3, p5, p6}, Lcom/google/common/a/a/a;->setLong(IJ)V

    goto :goto_0
.end method

.method public final k(JJ)V
    .locals 3

    .prologue
    .line 4024
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/bo;->aO(J)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 4025
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3, p4}, Lcom/google/common/a/a/a;->setLong(IJ)V

    .line 4026
    return-void
.end method
