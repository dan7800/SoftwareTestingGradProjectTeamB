.class public final Lcom/google/android/gm/provider/Operations;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bmA:Ljava/lang/String;

.field private static final bmz:Ljava/lang/String;


# instance fields
.field private final bcJ:Landroid/database/sqlite/SQLiteDatabase;

.field private final bmy:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\', \'"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "messageLabelAdded"

    aput-object v3, v2, v5

    const-string v3, "messageLabelRemoved"

    aput-object v3, v2, v6

    const-string v3, "conversationLabelAdded"

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const-string v4, "conversationLabelRemoved"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Operations;->bmz:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\', \'"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "messageSaved"

    aput-object v3, v2, v5

    const-string v3, "messageSent"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Operations;->bmA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "message_messageId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "value2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "value3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "value4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "value5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "value6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "value7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "value8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numAttempts"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "nextTimeToAttempt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "delay"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gm/provider/Operations;->bmy:[Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    .line 145
    iput-object p1, p0, Lcom/google/android/gm/provider/Operations;->mContext:Landroid/content/Context;

    .line 146
    return-void
.end method

.method private a(JLcom/google/android/gm/provider/bt;Lcom/google/android/gm/provider/aX;)J
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 753
    iget-object v0, p3, Lcom/google/android/gm/provider/bt;->bmI:Ljava/lang/String;

    .line 755
    iget-boolean v0, p4, Lcom/google/android/gm/provider/aX;->bkF:Z

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM operations where _id = ?"

    new-array v2, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    invoke-direct {p0, p3}, Lcom/google/android/gm/provider/Operations;->a(Lcom/google/android/gm/provider/bt;)J

    move-result-wide v0

    .line 770
    :goto_0
    const-string v2, "Gmail"

    const-string v3, "Moving delayed operation %d to end of list with newAttempts %d, delay %d, newBackOffTime %d, newOpId %d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    iget v5, p3, Lcom/google/android/gm/provider/bt;->bmK:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget v6, p3, Lcom/google/android/gm/provider/bt;->bmL:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-wide v6, p3, Lcom/google/android/gm/provider/bt;->bmM:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 777
    return-wide v0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM operations where _id = ?"

    new-array v2, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    invoke-virtual {p0, p3}, Lcom/google/android/gm/provider/Operations;->b(Lcom/google/android/gm/provider/bt;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Lcom/google/android/gm/provider/bt;)J
    .locals 19

    .prologue
    .line 170
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/bt;->bmI:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gm/provider/bt;->mMessageId:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/gm/provider/bt;->bmJ:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gm/provider/bt;->bmB:J

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/gm/provider/bt;->bmC:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/gm/provider/bt;->bmD:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gm/provider/bt;->bmE:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/gm/provider/bt;->bmF:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/gm/provider/bt;->bmK:I

    int-to-long v14, v2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/gm/provider/bt;->bmL:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/bt;->bmM:J

    move-wide/from16 v17, v0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/google/android/gm/provider/Operations;->a(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private a(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJ)J
    .locals 4

    .prologue
    .line 212
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 213
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "message_messageId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 215
    const-string v1, "value1"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    const-string v1, "value2"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    const-string v1, "value3"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "value4"

    invoke-virtual {v0, v1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "value5"

    invoke-virtual {v0, v1, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "value6"

    invoke-virtual {v0, v1, p11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-wide/16 v2, 0x0

    cmp-long v1, p12, v2

    if-lez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p15, v2

    if-lez v1, :cond_0

    .line 222
    const-string v1, "numAttempts"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    const-string v1, "nextTimeToAttempt"

    invoke-static/range {p15 .. p16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string v1, "delay"

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 3

    .prologue
    .line 312
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE operations SET value1 = ? WHERE action IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gm/provider/Operations;->bmz:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND value1 = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    return-void
.end method

.method private a(JJLcom/google/android/gm/provider/bt;Lcom/google/android/gm/provider/aX;Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 11

    .prologue
    .line 686
    move-object/from16 v0, p6

    iget-boolean v2, v0, Lcom/google/android/gm/provider/aX;->bkH:Z

    if-eqz v2, :cond_0

    .line 687
    const/4 v2, 0x1

    .line 746
    :goto_0
    return v2

    .line 690
    :cond_0
    const-string v2, "Gmail"

    const-string v3, "calculateAndUpdateOpDelay: currentTime = %d, nextTimeToAttempt = %d, numAttempts = %d delay=%d %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/google/android/gm/provider/bt;->bmM:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p5

    iget v6, v0, Lcom/google/android/gm/provider/bt;->bmK:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p5

    iget v6, v0, Lcom/google/android/gm/provider/bt;->bmL:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 697
    move-object/from16 v0, p5

    iget-wide v2, v0, Lcom/google/android/gm/provider/bt;->bmM:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_1

    .line 700
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/google/android/gm/provider/Operations;->a(JLcom/google/android/gm/provider/bt;Lcom/google/android/gm/provider/aX;)J

    move-result-wide v2

    .line 701
    const-string v4, "Gmail"

    const-string v5, "Not retrying backed off operation id %d as the next retry attempt is in the future. newOpId %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 704
    const/4 v2, 0x0

    goto :goto_0

    .line 706
    :cond_1
    move-object/from16 v0, p6

    iget-boolean v2, v0, Lcom/google/android/gm/provider/aX;->bkJ:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p5

    iget v2, v0, Lcom/google/android/gm/provider/bt;->bmK:I

    if-lez v2, :cond_2

    .line 709
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    const-string v3, "unackedSentOperations"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gm/provider/MailSync;->p(Ljava/lang/String;Z)Z

    .line 711
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync;->HA()V

    .line 712
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/google/android/gm/provider/Operations;->a(JLcom/google/android/gm/provider/bt;Lcom/google/android/gm/provider/aX;)J

    move-result-wide v2

    .line 713
    const-string v4, "Gmail"

    const-string v5, "Not retrying this operation id %d as we have not received what client operations the server has handled. newOpId %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 716
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 719
    :cond_2
    move-object/from16 v0, p5

    iget v2, v0, Lcom/google/android/gm/provider/bt;->bmK:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    .line 726
    move-object/from16 v0, p5

    iget v2, v0, Lcom/google/android/gm/provider/bt;->bmL:I

    if-nez v2, :cond_3

    const/16 v2, 0x1e

    :goto_1
    move-object/from16 v0, p5

    iput v2, v0, Lcom/google/android/gm/provider/bt;->bmL:I

    .line 728
    move-object/from16 v0, p5

    iget v2, v0, Lcom/google/android/gm/provider/bt;->bmL:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    move-object/from16 v0, p5

    iput-wide v2, v0, Lcom/google/android/gm/provider/bt;->bmM:J

    .line 729
    const/4 v2, 0x2

    move-object/from16 v0, p5

    iput v2, v0, Lcom/google/android/gm/provider/bt;->bmK:I

    .line 730
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/google/android/gm/provider/Operations;->a(JLcom/google/android/gm/provider/bt;Lcom/google/android/gm/provider/aX;)J

    move-result-wide v2

    .line 731
    const-string v4, "Gmail"

    const-string v5, "Not retrying and backing off operation %d with newAttempts %d, delay %d, newBackOffTime %d, newOpId %d"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p5

    iget v8, v0, Lcom/google/android/gm/provider/bt;->bmK:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p5

    iget v8, v0, Lcom/google/android/gm/provider/bt;->bmL:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, p5

    iget-wide v8, v0, Lcom/google/android/gm/provider/bt;->bmM:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 738
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 726
    :cond_3
    const v2, 0x12750

    move-object/from16 v0, p5

    iget v3, v0, Lcom/google/android/gm/provider/bt;->bmL:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 740
    :cond_4
    move-object/from16 v0, p5

    iget v2, v0, Lcom/google/android/gm/provider/bt;->bmK:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p5

    iput v2, v0, Lcom/google/android/gm/provider/bt;->bmK:I

    .line 741
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p5

    iget v4, v0, Lcom/google/android/gm/provider/bt;->bmK:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 743
    iget-object v3, p0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE operations SET numAttempts = ? WHERE _id = ?"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    const/4 v2, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public final I(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    const-string v0, ", "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "message_messageId IN ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public final a(ILcom/google/android/gm/provider/Advertisement;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 239
    new-instance v1, Landroid/content/ContentValues;

    const/16 v0, 0x8

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 240
    const-string v0, "action"

    const-string v2, "adAction"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "message_messageId"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string v0, "value1"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const-string v0, "value2"

    iget v2, p2, Lcom/google/android/gm/provider/Advertisement;->bco:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v0, "value3"

    iget-object v2, p2, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "value4"

    iget-object v2, p2, Lcom/google/android/gm/provider/Advertisement;->bcq:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v0, "value5"

    iget-object v2, p2, Lcom/google/android/gm/provider/Advertisement;->bcp:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "value6"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v2, "value7"

    iget-object v0, p2, Lcom/google/android/gm/provider/Advertisement;->bcx:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/gm/provider/Advertisement;->bcx:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 250
    const-string v2, "value8"

    iget-object v0, p2, Lcom/google/android/gm/provider/Advertisement;->bck:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    iget-boolean v0, v0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcC:Z

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/google/android/gm/provider/Advertisement;->bck:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0

    .line 248
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 250
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public final a(JJLjava/lang/String;J)J
    .locals 17

    .prologue
    .line 276
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v2, p3

    move-wide/from16 v4, p6

    move-wide/from16 v6, p1

    invoke-direct/range {v0 .. v16}, Lcom/google/android/gm/provider/Operations;->a(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/google/android/gm/provider/be;Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/aX;J)V
    .locals 36

    .prologue
    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT \n  _id,\n  action,\n  numAttempts,\n  nextTimeToAttempt,\n  value1,\n  value2,\n  delay\nFROM\n operations\nWHERE\n  message_messageId = ? AND value2 = ?\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/google/android/gm/provider/aX;->bkt:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/google/android/gm/provider/aX;->bku:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 432
    :try_start_0
    const-string v2, "_id"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 433
    const-string v2, "action"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 434
    const-string v2, "numAttempts"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 435
    const-string v2, "nextTimeToAttempt"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 436
    const-string v2, "delay"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 437
    const-string v2, "value1"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 438
    const-string v2, "value2"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 440
    const/4 v3, 0x0

    .line 441
    const/16 v20, 0x0

    .line 442
    const/4 v11, 0x0

    .line 443
    const/4 v2, 0x0

    .line 444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/Operations;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gmail_max_attachment_size_bytes"

    const/high16 v6, 0x1400000

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    move/from16 v21, v2

    move/from16 v22, v11

    move/from16 v23, v3

    .line 448
    :cond_0
    :goto_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 449
    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 450
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 451
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 452
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 453
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 456
    new-instance v2, Lcom/google/android/gm/provider/bt;

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/google/android/gm/provider/aX;->bkt:J

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/google/android/gm/provider/aX;->bku:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v2 .. v19}, Lcom/google/android/gm/provider/bt;-><init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 460
    const-string v4, "messageSent"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "emptySpam"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "emptyTrash"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    move-object/from16 v5, p0

    move-wide/from16 v6, p4

    move-wide/from16 v8, v34

    move-object v10, v2

    move-object/from16 v11, p3

    move-object/from16 v12, p2

    .line 463
    invoke-direct/range {v5 .. v12}, Lcom/google/android/gm/provider/Operations;->a(JJLcom/google/android/gm/provider/bt;Lcom/google/android/gm/provider/aX;Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v2

    .line 468
    if-eqz v2, :cond_0

    .line 469
    const-string v2, "messageSent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 473
    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/gm/provider/aX;->bkt:J

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gm/provider/MailEngine;->c(JZ)Lcom/google/android/gm/provider/bm;

    move-result-object v5

    .line 475
    if-nez v5, :cond_2

    .line 476
    const-string v2, "Gmail"

    const-string v3, "Cannot find message with id = %d for operations!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/google/android/gm/provider/aX;->bkt:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "operations"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 526
    :catchall_0
    move-exception v2

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    throw v2

    .line 487
    :cond_2
    :try_start_1
    iget-object v2, v5, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v2, v2, v22

    .line 488
    invoke-virtual {v5}, Lcom/google/android/gm/provider/bm;->vC()Ljava/util/List;

    move-result-object v3

    .line 489
    if-eqz v3, :cond_9

    .line 490
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 491
    iget v2, v2, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->size:I

    add-int/2addr v3, v2

    .line 492
    goto :goto_1

    :cond_3
    move v11, v3

    .line 497
    :goto_2
    if-eqz v21, :cond_4

    move/from16 v0, v32

    if-gt v11, v0, :cond_7

    .line 498
    :cond_4
    const/4 v12, 0x1

    .line 502
    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/google/android/gm/provider/aX;->bkt:J

    .line 503
    iget-wide v8, v5, Lcom/google/android/gm/provider/bm;->blM:J

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, v34

    invoke-interface/range {v2 .. v10}, Lcom/google/android/gm/provider/be;->a(JLcom/google/android/gm/provider/bm;JJZ)V

    move/from16 v21, v12

    move/from16 v22, v11

    .line 506
    goto/16 :goto_0

    .line 507
    :cond_5
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 508
    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 510
    const-string v2, "emptySpam"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 511
    if-nez v23, :cond_8

    .line 512
    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, v34

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gm/provider/be;->a(JIJI)V

    .line 514
    const/4 v2, 0x1

    move/from16 v23, v2

    goto/16 :goto_0

    .line 517
    :cond_6
    if-nez v20, :cond_8

    .line 518
    const/4 v5, 0x1

    move-object/from16 v2, p1

    move-wide/from16 v3, v34

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gm/provider/be;->a(JIJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    const/4 v2, 0x1

    :goto_3
    move/from16 v20, v2

    .line 524
    goto/16 :goto_0

    .line 526
    :cond_7
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 527
    return-void

    :cond_8
    move/from16 v2, v20

    goto :goto_3

    :cond_9
    move v11, v2

    goto :goto_2
.end method

.method public final aP(J)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT COUNT(*) FROM operations WHERE ACTION IN ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/google/android/gm/provider/Operations;->bmA:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AND value2 = ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final aQ(J)V
    .locals 7

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "operations"

    const-string v2, "message_messageId = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public final aR(J)V
    .locals 5

    .prologue
    .line 302
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 303
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action IN ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/gm/provider/Operations;->bmz:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND value1 = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public final ab(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Preference name is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 262
    const-string v1, "action"

    const-string v2, "prefChange"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "message_messageId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    const-string v1, "value3"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "value1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v1, "value4"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JJLjava/lang/String;)J
    .locals 17

    .prologue
    .line 176
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v2, p3

    move-wide/from16 v6, p1

    invoke-direct/range {v0 .. v16}, Lcom/google/android/gm/provider/Operations;->a(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JLjava/lang/String;)J
    .locals 19

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "operations"

    const-string v4, "action = ? AND message_messageId < ? AND value3 = ?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "resetUnseenCount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    const-string v3, "resetUnseenCount"

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move-object/from16 v10, p3

    invoke-direct/range {v2 .. v18}, Lcom/google/android/gm/provider/Operations;->a(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public final b(Lcom/google/android/gm/provider/bt;)J
    .locals 35

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 353
    :try_start_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 354
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 355
    const-string v3, "operations"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/Operations;->bmy:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 358
    const-string v2, "action"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 359
    const-string v2, "message_messageId"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 360
    const-string v2, "value1"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 361
    const-string v2, "value2"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 362
    const-string v2, "value3"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 363
    const-string v2, "value4"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 364
    const-string v2, "value5"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 365
    const-string v2, "value6"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 366
    const-string v2, "value7"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 367
    const-string v2, "value8"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 368
    const-string v2, "numAttempts"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 369
    const-string v2, "nextTimeToAttempt"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 370
    const-string v2, "delay"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 372
    :goto_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 374
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 375
    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 376
    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 377
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 378
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 379
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 380
    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 381
    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 382
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 383
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 384
    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 385
    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 386
    new-instance v2, Lcom/google/android/gm/provider/bt;

    invoke-direct/range {v2 .. v19}, Lcom/google/android/gm/provider/bt;-><init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 391
    :cond_0
    :try_start_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM operations"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 397
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gm/provider/Operations;->a(Lcom/google/android/gm/provider/bt;)J

    move-result-wide v4

    .line 400
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/bt;

    .line 401
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/Operations;->a(Lcom/google/android/gm/provider/bt;)J

    goto :goto_1

    .line 403
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 407
    return-wide v4
.end method

.method public final b(Ljava/util/Set;Z)J
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)J"
        }
    .end annotation

    .prologue
    .line 192
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    .line 193
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 194
    :goto_0
    const-string v3, "configureSectionedInbox"

    const-wide/16 v4, 0x0

    int-to-long v6, v2

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/google/android/gm/provider/Operations;->a(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJ)J

    move-result-wide v2

    return-wide v2

    .line 193
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gm/provider/be;Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/aX;J)V
    .locals 52

    .prologue
    .line 535
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 536
    const-string v5, "operations"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 537
    const-string v12, "50"

    .line 538
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/Operations;->bmy:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "_id"

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 541
    const-string v4, "_id"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 542
    const-string v4, "action"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 543
    const-string v4, "message_messageId"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 544
    const-string v4, "value1"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 545
    const-string v4, "value2"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 546
    const-string v4, "value3"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 547
    const-string v4, "value4"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 548
    const-string v4, "value5"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 549
    const-string v4, "value6"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 550
    const-string v4, "value7"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 551
    const-string v4, "value8"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 552
    const-string v4, "numAttempts"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 553
    const-string v4, "nextTimeToAttempt"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 554
    const-string v4, "delay"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 555
    const/4 v7, 0x0

    .line 556
    const/4 v6, 0x0

    .line 557
    const/4 v5, 0x0

    .line 558
    const/4 v4, 0x0

    .line 559
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gm/provider/Operations;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "gmail_max_attachment_size_bytes"

    const/high16 v10, 0x1400000

    invoke-static {v8, v9, v10}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v51

    move/from16 v32, v4

    move/from16 v33, v5

    move/from16 v34, v6

    move/from16 v35, v7

    .line 563
    :cond_0
    :goto_0
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 564
    invoke-interface/range {v36 .. v37}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 565
    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 566
    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 567
    move-object/from16 v0, v36

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 568
    move-object/from16 v0, v36

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 569
    move-object/from16 v0, v36

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 572
    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 573
    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 574
    move-object/from16 v0, v36

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 575
    move-object/from16 v0, v36

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 576
    move-object/from16 v0, v36

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 577
    move-object/from16 v0, v36

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 578
    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 579
    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 580
    new-instance v4, Lcom/google/android/gm/provider/bt;

    invoke-direct/range {v4 .. v21}, Lcom/google/android/gm/provider/bt;-><init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    move-object/from16 v19, p0

    move-wide/from16 v20, p4

    move-object/from16 v24, v4

    move-object/from16 v25, p3

    move-object/from16 v26, p2

    .line 583
    invoke-direct/range {v19 .. v26}, Lcom/google/android/gm/provider/Operations;->a(JJLcom/google/android/gm/provider/bt;Lcom/google/android/gm/provider/aX;Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v4

    .line 585
    if-eqz v4, :cond_0

    .line 586
    const-string v4, "messageLabelAdded"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v21, p1

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    .line 589
    invoke-interface/range {v21 .. v27}, Lcom/google/android/gm/provider/be;->d(JJJ)V

    goto/16 :goto_0

    .line 590
    :cond_1
    const-string v4, "messageLabelRemoved"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v21, p1

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    .line 591
    invoke-interface/range {v21 .. v27}, Lcom/google/android/gm/provider/be;->e(JJJ)V

    goto/16 :goto_0

    .line 592
    :cond_2
    const-string v4, "conversationLabelAdded"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 593
    const/16 v28, 0x1

    move-object/from16 v21, p1

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    invoke-interface/range {v21 .. v28}, Lcom/google/android/gm/provider/be;->a(JJJZ)V

    goto/16 :goto_0

    .line 595
    :cond_3
    const-string v4, "conversationLabelRemoved"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 596
    const/16 v28, 0x0

    move-object/from16 v21, p1

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    invoke-interface/range {v21 .. v28}, Lcom/google/android/gm/provider/be;->a(JJJZ)V

    goto/16 :goto_0

    .line 598
    :cond_4
    const-string v4, "messageSaved"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "messageSent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 600
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7, v4}, Lcom/google/android/gm/provider/MailEngine;->c(JZ)Lcom/google/android/gm/provider/bm;

    move-result-object v24

    .line 601
    if-nez v24, :cond_6

    .line 602
    const-string v4, "Gmail"

    const-string v5, "Cannot find message with id = %d for operations!"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v4, v5, v8}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 607
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "operations"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_id == "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 614
    :cond_6
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/google/android/gm/provider/bm;->bck:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, v33

    .line 615
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gm/provider/bm;->vC()Ljava/util/List;

    move-result-object v8

    .line 616
    if-eqz v8, :cond_7

    .line 617
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v8, v4

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 618
    iget v4, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->size:I

    add-int/2addr v4, v8

    move v8, v4

    .line 619
    goto :goto_1

    :cond_7
    move v8, v4

    .line 622
    :cond_8
    if-eqz v32, :cond_9

    move/from16 v0, v51

    if-gt v8, v0, :cond_16

    .line 623
    :cond_9
    const/4 v4, 0x1

    .line 628
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gm/provider/bm;->blM:J

    move-wide/from16 v27, v0

    const-string v9, "messageSaved"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    move-object/from16 v21, p1

    move-wide/from16 v25, v6

    invoke-interface/range {v21 .. v29}, Lcom/google/android/gm/provider/be;->a(JLcom/google/android/gm/provider/bm;JJZ)V

    move/from16 v32, v4

    move/from16 v33, v8

    .line 631
    goto/16 :goto_0

    :cond_a
    const-string v4, "messageExpunged"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 632
    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2, v6, v7}, Lcom/google/android/gm/provider/be;->k(JJ)V

    goto/16 :goto_0

    .line 633
    :cond_b
    const-string v4, "emptySpam"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 634
    if-nez v35, :cond_0

    .line 635
    const/16 v24, 0x0

    long-to-int v0, v10

    move/from16 v27, v0

    move-object/from16 v21, p1

    move-wide/from16 v25, v8

    invoke-interface/range {v21 .. v27}, Lcom/google/android/gm/provider/be;->a(JIJI)V

    .line 636
    const/4 v4, 0x1

    move/from16 v35, v4

    goto/16 :goto_0

    .line 638
    :cond_c
    const-string v4, "emptyTrash"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 639
    if-nez v34, :cond_0

    .line 640
    const/16 v24, 0x1

    long-to-int v0, v10

    move/from16 v27, v0

    move-object/from16 v21, p1

    move-wide/from16 v25, v8

    invoke-interface/range {v21 .. v27}, Lcom/google/android/gm/provider/be;->a(JIJI)V

    .line 641
    const/4 v4, 0x1

    move/from16 v34, v4

    goto/16 :goto_0

    .line 643
    :cond_d
    const-string v4, "resetUnseenCount"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v21, p1

    move-wide/from16 v24, v8

    move-object/from16 v26, v12

    .line 644
    invoke-interface/range {v21 .. v26}, Lcom/google/android/gm/provider/be;->a(JJLjava/lang/String;)V

    goto/16 :goto_0

    .line 646
    :cond_e
    const-string v4, "configureSectionedInbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 647
    const-string v4, ","

    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 648
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->Zx()Lcom/google/common/collect/z;

    move-result-object v6

    .line 650
    array-length v7, v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_f

    aget-object v10, v5, v4

    .line 651
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 650
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 654
    :cond_f
    invoke-virtual {v6}, Lcom/google/common/collect/z;->Zy()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    .line 656
    const-wide/16 v6, 0x1

    cmp-long v4, v8, v6

    if-nez v4, :cond_10

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2, v5, v4}, Lcom/google/android/gm/provider/be;->a(JLjava/util/Set;Z)V

    goto/16 :goto_0

    :cond_10
    const/4 v4, 0x0

    goto :goto_3

    .line 658
    :cond_11
    const-string v4, "adAction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 659
    long-to-int v0, v8

    move/from16 v24, v0

    const-wide/16 v4, 0x2

    cmp-long v4, v10, v4

    if-nez v4, :cond_12

    const/16 v29, 0x1

    :goto_4
    move-object/from16 v21, p1

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v28, v15

    move-object/from16 v30, v16

    move-object/from16 v31, v17

    invoke-interface/range {v21 .. v31}, Lcom/google/android/gm/provider/be;->a(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const/16 v29, 0x0

    goto :goto_4

    .line 662
    :cond_13
    const-string v4, "prefChange"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 663
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-eqz v4, :cond_14

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v9, p1

    move-wide/from16 v10, v22

    invoke-interface/range {v9 .. v14}, Lcom/google/android/gm/provider/be;->a(JLjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_14
    const/4 v14, 0x0

    goto :goto_5

    .line 665
    :cond_15
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown action: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 668
    :cond_16
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 669
    return-void
.end method

.method public final c(JLjava/lang/String;)J
    .locals 17

    .prologue
    .line 200
    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v4, p1

    invoke-direct/range {v0 .. v16}, Lcom/google/android/gm/provider/Operations;->a(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(JJ)V
    .locals 5

    .prologue
    .line 322
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 323
    const-string v1, "message_messageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 324
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "message_messageId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 325
    return-void
.end method
