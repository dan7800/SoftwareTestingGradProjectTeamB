.class public final Lcom/google/android/gm/provider/bt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bmB:J

.field public final bmC:Ljava/lang/String;

.field public final bmD:Ljava/lang/String;

.field public final bmE:Ljava/lang/String;

.field public final bmF:Ljava/lang/String;

.field public final bmG:Ljava/lang/String;

.field public final bmH:Ljava/lang/String;

.field public final bmI:Ljava/lang/String;

.field public final bmJ:J

.field public bmK:I

.field public bmL:I

.field public bmM:J

.field public final mMessageId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 18

    .prologue
    .line 104
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v17}, Lcom/google/android/gm/provider/bt;-><init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/android/gm/provider/bt;->bmI:Ljava/lang/String;

    .line 113
    iput-wide p2, p0, Lcom/google/android/gm/provider/bt;->mMessageId:J

    .line 114
    iput-wide p4, p0, Lcom/google/android/gm/provider/bt;->bmJ:J

    .line 115
    iput-wide p6, p0, Lcom/google/android/gm/provider/bt;->bmB:J

    .line 116
    iput-object p8, p0, Lcom/google/android/gm/provider/bt;->bmC:Ljava/lang/String;

    .line 117
    iput-object p9, p0, Lcom/google/android/gm/provider/bt;->bmD:Ljava/lang/String;

    .line 118
    iput-object p10, p0, Lcom/google/android/gm/provider/bt;->bmE:Ljava/lang/String;

    .line 119
    iput-object p11, p0, Lcom/google/android/gm/provider/bt;->bmF:Ljava/lang/String;

    .line 120
    iput-object p12, p0, Lcom/google/android/gm/provider/bt;->bmG:Ljava/lang/String;

    .line 121
    iput-object p13, p0, Lcom/google/android/gm/provider/bt;->bmH:Ljava/lang/String;

    .line 122
    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gm/provider/bt;->bmK:I

    .line 123
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gm/provider/bt;->bmL:I

    .line 124
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/google/android/gm/provider/bt;->bmM:J

    .line 125
    return-void
.end method
