.class public final Lcom/android/mail/providers/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Qo:I

.field private Zr:I

.field private Zz:I

.field private aAA:Landroid/net/Uri;

.field private aAB:I

.field private aAC:I

.field private aAD:I

.field private aAE:Ljava/lang/String;

.field private aAF:Ljava/lang/String;

.field private aAG:Ljava/lang/String;

.field private aAH:Landroid/net/Uri;

.field private aAI:J

.field private aAJ:Ljava/lang/String;

.field private aAu:Z

.field private aAv:I

.field private aAw:Landroid/net/Uri;

.field private aAx:Landroid/net/Uri;

.field private aAy:I

.field private aAz:I

.field private aqe:Landroid/net/Uri;

.field private axP:Ljava/lang/String;

.field private cH:I

.field private eM:Landroid/net/Uri;

.field private mName:Ljava/lang/String;

.field private wo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bP(Ljava/lang/String;)Lcom/android/mail/providers/m;
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/mail/providers/m;->axP:Ljava/lang/String;

    .line 244
    return-object p0
.end method

.method public final bQ(Ljava/lang/String;)Lcom/android/mail/providers/m;
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/mail/providers/m;->mName:Ljava/lang/String;

    .line 252
    return-object p0
.end method

.method public final bR(Ljava/lang/String;)Lcom/android/mail/providers/m;
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/mail/providers/m;->aAE:Ljava/lang/String;

    .line 312
    return-object p0
.end method

.method public final bS(Ljava/lang/String;)Lcom/android/mail/providers/m;
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/mail/providers/m;->aAF:Ljava/lang/String;

    .line 316
    return-object p0
.end method

.method public final cC(I)Lcom/android/mail/providers/m;
    .locals 0

    .prologue
    .line 239
    iput p1, p0, Lcom/android/mail/providers/m;->cH:I

    .line 240
    return-object p0
.end method

.method public final cD(I)Lcom/android/mail/providers/m;
    .locals 0

    .prologue
    .line 299
    iput p1, p0, Lcom/android/mail/providers/m;->Zr:I

    .line 300
    return-object p0
.end method

.method public final s(Landroid/net/Uri;)Lcom/android/mail/providers/m;
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/mail/providers/m;->eM:Landroid/net/Uri;

    .line 248
    return-object p0
.end method

.method public final t(Landroid/net/Uri;)Lcom/android/mail/providers/m;
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/mail/providers/m;->aAw:Landroid/net/Uri;

    .line 268
    return-object p0
.end method

.method public final vd()Lcom/android/mail/providers/Folder;
    .locals 29

    .prologue
    .line 230
    new-instance v3, Lcom/android/mail/providers/Folder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mail/providers/m;->cH:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mail/providers/m;->axP:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mail/providers/m;->eM:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mail/providers/m;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mail/providers/m;->Qo:I

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/mail/providers/m;->aAu:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/mail/providers/m;->aAv:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mail/providers/m;->aAw:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mail/providers/m;->aAx:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mail/providers/m;->aAy:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mail/providers/m;->aAz:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mail/providers/m;->Zz:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/providers/m;->aAA:Landroid/net/Uri;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mail/providers/m;->aAB:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mail/providers/m;->aAC:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mail/providers/m;->Zr:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mail/providers/m;->wo:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mail/providers/m;->aAD:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/providers/m;->aAE:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/providers/m;->aAF:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/providers/m;->aqe:Landroid/net/Uri;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/providers/m;->aAG:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/providers/m;->aAH:Landroid/net/Uri;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mail/providers/m;->aAI:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/providers/m;->aAJ:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v3 .. v28}, Lcom/android/mail/providers/Folder;-><init>(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;IZILandroid/net/Uri;Landroid/net/Uri;IIILandroid/net/Uri;IIIILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;)V

    return-object v3
.end method

.method public final ve()Lcom/android/mail/providers/m;
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/providers/m;->aAB:I

    .line 292
    return-object p0
.end method

.method public final vf()Lcom/android/mail/providers/m;
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/providers/m;->aAC:I

    .line 296
    return-object p0
.end method
