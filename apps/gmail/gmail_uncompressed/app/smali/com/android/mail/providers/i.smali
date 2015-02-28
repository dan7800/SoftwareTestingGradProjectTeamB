.class public final Lcom/android/mail/providers/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Ln:J

.field private YL:Ljava/lang/String;

.field private asT:I

.field private azA:I

.field private azB:I

.field private azC:Z

.field private azD:Z

.field private azE:Z

.field private azF:Landroid/net/Uri;

.field private azG:Lcom/android/mail/providers/ConversationInfo;

.field private azH:Landroid/net/Uri;

.field private azI:Z

.field private azJ:Ljava/lang/String;

.field private azK:J

.field private azt:J

.field private azu:Z

.field private azv:Landroid/net/Uri;

.field private azw:Z

.field private azx:Z

.field private azy:Z

.field private azz:Lcom/android/mail/providers/FolderList;

.field private do:I

.field private eM:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/providers/ConversationInfo;)Lcom/android/mail/providers/i;
    .locals 2

    .prologue
    .line 499
    if-nez p1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set null ConversationInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    iput-object p1, p0, Lcom/android/mail/providers/i;->azG:Lcom/android/mail/providers/ConversationInfo;

    .line 503
    return-object p0
.end method

.method public final bM(Ljava/lang/String;)Lcom/android/mail/providers/i;
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/mail/providers/i;->YL:Ljava/lang/String;

    .line 420
    return-object p0
.end method

.method public final bh(Z)Lcom/android/mail/providers/i;
    .locals 0

    .prologue
    .line 459
    iput-boolean p1, p0, Lcom/android/mail/providers/i;->azy:Z

    .line 460
    return-object p0
.end method

.method public final uM()Lcom/android/mail/providers/Conversation;
    .locals 30

    .prologue
    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/providers/i;->azG:Lcom/android/mail/providers/ConversationInfo;

    if-nez v2, :cond_0

    .line 530
    invoke-static {}, Lcom/android/mail/providers/Conversation;->kI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Null conversationInfo in Builder"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 531
    new-instance v2, Lcom/android/mail/providers/ConversationInfo;

    invoke-direct {v2}, Lcom/android/mail/providers/ConversationInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mail/providers/i;->azG:Lcom/android/mail/providers/ConversationInfo;

    .line 533
    :cond_0
    new-instance v3, Lcom/android/mail/providers/Conversation;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mail/providers/i;->Ln:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mail/providers/i;->eM:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mail/providers/i;->YL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mail/providers/i;->azt:J

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/mail/providers/i;->azu:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mail/providers/i;->azv:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mail/providers/i;->asT:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mail/providers/i;->do:I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mail/providers/i;->azw:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/mail/providers/i;->azx:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mail/providers/i;->azy:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/providers/i;->azz:Lcom/android/mail/providers/FolderList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mail/providers/i;->azA:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mail/providers/i;->azB:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mail/providers/i;->azC:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mail/providers/i;->azD:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mail/providers/i;->azE:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/providers/i;->azF:Landroid/net/Uri;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/providers/i;->azG:Lcom/android/mail/providers/ConversationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/providers/i;->azH:Landroid/net/Uri;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mail/providers/i;->azI:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/providers/i;->azJ:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mail/providers/i;->azK:J

    move-wide/from16 v27, v0

    const/16 v29, 0x0

    invoke-direct/range {v3 .. v29}, Lcom/android/mail/providers/Conversation;-><init>(JLandroid/net/Uri;Ljava/lang/String;JZLandroid/net/Uri;IIZZZLcom/android/mail/providers/FolderList;IIZZZLandroid/net/Uri;Lcom/android/mail/providers/ConversationInfo;Landroid/net/Uri;ZJB)V

    return-object v3
.end method
