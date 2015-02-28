.class public final Lcom/android/mail/ui/aI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final mW:Ljava/lang/String;


# instance fields
.field private aHq:Z

.field private final aHr:Lcom/android/mail/ui/aJ;

.field private amr:Lcom/android/mail/providers/Conversation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/aI;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/ui/aJ;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/aI;->aHq:Z

    .line 53
    iput-object p1, p0, Lcom/android/mail/ui/aI;->aHr:Lcom/android/mail/ui/aJ;

    .line 54
    return-void
.end method

.method private cT(I)Lcom/android/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mail/ui/aI;->aHr:Lcom/android/mail/ui/aJ;

    invoke-interface {v0}, Lcom/android/mail/ui/aJ;->vM()Lcom/android/mail/browse/u;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Lcom/android/mail/browse/u;->moveToPosition(I)Z

    .line 60
    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 61
    iput p1, v0, Lcom/android/mail/providers/Conversation;->position:I

    .line 62
    return-object v0
.end method

.method private static p(Lcom/android/mail/browse/u;)Z
    .locals 1

    .prologue
    .line 136
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/browse/u;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private yH()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mail/ui/aI;->aHr:Lcom/android/mail/ui/aJ;

    invoke-interface {v0}, Lcom/android/mail/ui/aJ;->vM()Lcom/android/mail/browse/u;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/android/mail/ui/aI;->p(Lcom/android/mail/browse/u;)Z

    move-result v0

    return v0
.end method

.method private yJ()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, -0x1

    .line 167
    iget-object v1, p0, Lcom/android/mail/ui/aI;->aHr:Lcom/android/mail/ui/aJ;

    invoke-interface {v1}, Lcom/android/mail/ui/aJ;->vM()Lcom/android/mail/browse/u;

    move-result-object v1

    .line 170
    iget-boolean v2, p0, Lcom/android/mail/ui/aI;->aHq:Z

    if-nez v2, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/mail/ui/aI;->amr:Lcom/android/mail/providers/Conversation;

    iget v0, v0, Lcom/android/mail/providers/Conversation;->position:I

    .line 215
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/mail/ui/aI;->amr:Lcom/android/mail/providers/Conversation;

    if-eqz v2, :cond_0

    .line 177
    iput-boolean v6, p0, Lcom/android/mail/ui/aI;->aHq:Z

    .line 178
    invoke-virtual {v1}, Lcom/android/mail/browse/u;->getCount()I

    move-result v2

    .line 179
    invoke-static {v1}, Lcom/android/mail/ui/aI;->p(Lcom/android/mail/browse/u;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/mail/ui/aI;->amr:Lcom/android/mail/providers/Conversation;

    iget-wide v4, v0, Lcom/android/mail/providers/Conversation;->id:J

    invoke-virtual {v1, v4, v5}, Lcom/android/mail/browse/u;->O(J)I

    move-result v0

    .line 184
    if-ltz v0, :cond_2

    .line 185
    iget-object v2, p0, Lcom/android/mail/ui/aI;->amr:Lcom/android/mail/providers/Conversation;

    iput v0, v2, Lcom/android/mail/providers/Conversation;->position:I

    .line 190
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mail/browse/u;->moveToPosition(I)Z

    goto :goto_0

    .line 198
    :cond_2
    if-lt v0, v2, :cond_3

    .line 200
    add-int/lit8 v0, v2, -0x1

    .line 207
    :cond_3
    invoke-static {v1}, Lcom/android/mail/ui/aI;->p(Lcom/android/mail/browse/u;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ltz v0, :cond_0

    .line 208
    sget-object v2, Lcom/android/mail/ui/aI;->mW:Ljava/lang/String;

    const-string v3, "ConversationPositionTracker: Could not find conversation %s in the cursor. Moving to position %d "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mail/ui/aI;->amr:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v5}, Lcom/android/mail/providers/Conversation;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    invoke-virtual {v1, v0}, Lcom/android/mail/browse/u;->moveToPosition(I)Z

    .line 212
    new-instance v2, Lcom/android/mail/providers/Conversation;

    invoke-direct {v2, v1}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/android/mail/ui/aI;->amr:Lcom/android/mail/providers/Conversation;

    .line 213
    iget-object v1, p0, Lcom/android/mail/ui/aI;->amr:Lcom/android/mail/providers/Conversation;

    iput v0, v1, Lcom/android/mail/providers/Conversation;->position:I

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/util/Collection;)Lcom/android/mail/providers/Conversation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)",
            "Lcom/android/mail/providers/Conversation;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 229
    if-ne p1, v8, :cond_2

    move v6, v5

    .line 230
    :goto_0
    if-ne p1, v5, :cond_3

    move v4, v5

    .line 231
    :goto_1
    if-eqz v6, :cond_6

    invoke-direct {p0}, Lcom/android/mail/ui/aI;->yJ()I

    move-result v0

    invoke-direct {p0}, Lcom/android/mail/ui/aI;->yH()Z

    move-result v2

    if-eqz v2, :cond_0

    if-gez v0, :cond_4

    :cond_0
    move-object v0, v1

    .line 233
    :cond_1
    :goto_2
    sget-object v1, Lcom/android/mail/ui/aI;->mW:Ljava/lang/String;

    const-string v2, "ConversationPositionTracker.getNextConversation: getNewer = %b, getOlder = %b, Next conversation is %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v7, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v5

    aput-object v0, v7, v8

    invoke-static {v1, v2, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 236
    return-object v0

    :cond_2
    move v6, v3

    .line 229
    goto :goto_0

    :cond_3
    move v4, v3

    .line 230
    goto :goto_1

    .line 231
    :cond_4
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_3
    if-ltz v2, :cond_5

    invoke-direct {p0, v2}, Lcom/android/mail/ui/aI;->cT(I)Lcom/android/mail/providers/Conversation;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/mail/providers/Conversation;->a(Ljava/util/Collection;Lcom/android/mail/providers/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_c

    invoke-direct {p0}, Lcom/android/mail/ui/aI;->yJ()I

    move-result v0

    invoke-direct {p0}, Lcom/android/mail/ui/aI;->yH()Z

    move-result v2

    if-eqz v2, :cond_7

    if-gez v0, :cond_8

    :cond_7
    move-object v0, v1

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    :goto_4
    iget-object v2, p0, Lcom/android/mail/ui/aI;->aHr:Lcom/android/mail/ui/aJ;

    invoke-interface {v2}, Lcom/android/mail/ui/aJ;->vM()Lcom/android/mail/browse/u;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/ui/aI;->p(Lcom/android/mail/browse/u;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v2}, Lcom/android/mail/browse/u;->getCount()I

    move-result v2

    :goto_5
    if-ge v0, v2, :cond_b

    invoke-direct {p0, v0}, Lcom/android/mail/ui/aI;->cT(I)Lcom/android/mail/providers/Conversation;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/mail/providers/Conversation;->a(Ljava/util/Collection;Lcom/android/mail/providers/Conversation;)Z

    move-result v7

    if-nez v7, :cond_a

    move-object v0, v2

    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_5

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    move-object v0, v1

    goto :goto_2

    :cond_c
    move-object v0, v1

    goto :goto_2
.end method

.method public final q(Lcom/android/mail/providers/Conversation;)V
    .locals 1

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/mail/ui/aI;->amr:Lcom/android/mail/providers/Conversation;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/aI;->aHq:Z

    .line 131
    invoke-direct {p0}, Lcom/android/mail/ui/aI;->yJ()I

    .line 132
    return-void
.end method

.method public final yI()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/aI;->aHq:Z

    .line 149
    return-void
.end method
