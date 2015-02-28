.class public final Lcom/android/mail/browse/aC;
.super Lcom/android/mail/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/c/b",
        "<",
        "Lcom/android/mail/browse/ConversationMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private aqg:Lcom/android/mail/browse/aD;

.field private asf:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/mail/browse/ConversationMessage;->aqh:Lcom/android/mail/c/a;

    invoke-direct {p0, p1, v0}, Lcom/android/mail/c/b;-><init>(Landroid/database/Cursor;Lcom/android/mail/c/a;)V

    .line 60
    return-void
.end method


# virtual methods
.method public final Q(J)Lcom/android/mail/browse/ConversationMessage;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/android/mail/browse/aC;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 120
    :goto_0
    return-object v0

    .line 113
    :cond_0
    const/4 v0, -0x1

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v2

    .line 116
    iget-wide v4, v2, Lcom/android/mail/browse/ConversationMessage;->id:J

    cmp-long v3, p1, v4

    if-nez v3, :cond_1

    move-object v0, v2

    .line 117
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 120
    goto :goto_0
.end method

.method public final a(Lcom/android/mail/browse/aD;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/mail/browse/aC;->aqg:Lcom/android/mail/browse/aD;

    .line 64
    return-void
.end method

.method public final cj(I)I
    .locals 4

    .prologue
    .line 138
    const/16 v1, 0x11

    .line 139
    const/4 v0, -0x1

    .line 140
    invoke-virtual {p0}, Lcom/android/mail/browse/aC;->getCount()I

    move-result v2

    sub-int/2addr v2, p1

    .line 141
    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ge v0, v2, :cond_0

    .line 142
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mail/browse/ConversationMessage;->ql()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 144
    :cond_0
    return v1
.end method

.method public final getStatus()I
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mail/browse/aC;->asf:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/mail/browse/aC;->asf:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    :goto_0
    return v0

    .line 152
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/aC;->asf:Ljava/lang/Integer;

    .line 153
    invoke-virtual {p0}, Lcom/android/mail/browse/aC;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    const-string v1, "cursor_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    const-string v1, "cursor_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/aC;->asf:Ljava/lang/Integer;

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/aC;->asf:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final isLoaded()Z
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/mail/browse/aC;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/android/mail/providers/G;->cG(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pg()Lcom/android/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mail/browse/aC;->aqg:Lcom/android/mail/browse/aD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/aC;->aqg:Lcom/android/mail/browse/aD;

    invoke-interface {v0}, Lcom/android/mail/browse/aD;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final qL()Lcom/android/mail/browse/ConversationMessage;
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/mail/browse/aC;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ConversationMessage;

    .line 72
    iget-object v1, p0, Lcom/android/mail/browse/aC;->aqg:Lcom/android/mail/browse/aD;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationMessage;->a(Lcom/android/mail/browse/aD;)V

    .line 73
    return-object v0
.end method

.method public final ql()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/aC;->cj(I)I

    move-result v0

    return v0
.end method

.method public final qm()Z
    .locals 2

    .prologue
    .line 82
    const/4 v0, -0x1

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/mail/browse/ConversationMessage;->azc:Z

    if-eqz v1, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final rx()Z
    .locals 2

    .prologue
    .line 93
    const/4 v0, -0x1

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/mail/browse/ConversationMessage;->aza:Z

    if-nez v1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final ry()V
    .locals 3

    .prologue
    .line 102
    const/4 v0, -0x1

    .line 103
    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/mail/browse/ConversationMessage;->aza:Z

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public final rz()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const-string v0, "conv=\'%s\' status=%d messages:\n"

    new-array v1, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/browse/aC;->aqg:Lcom/android/mail/browse/aD;

    invoke-interface {v3}, Lcom/android/mail/browse/aD;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-virtual {p0}, Lcom/android/mail/browse/aC;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const/4 v0, -0x1

    .line 174
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v3

    .line 176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {v3}, Lcom/android/mail/browse/ConversationMessage;->vC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 178
    iget-object v0, v0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_0
    const-string v0, "[Message #%d hash=%s uri=%s id=%s serverId=%s from=\'%s\' draftType=%d sendingState=%s read=%s starred=%s attUris=%s]\n"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3}, Lcom/android/mail/browse/ConversationMessage;->ql()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    iget-object v6, v3, Lcom/android/mail/browse/ConversationMessage;->uri:Landroid/net/Uri;

    aput-object v6, v5, v12

    const/4 v6, 0x3

    iget-wide v8, v3, Lcom/android/mail/browse/ConversationMessage;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, v3, Lcom/android/mail/browse/ConversationMessage;->aBd:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-virtual {v3}, Lcom/android/mail/browse/ConversationMessage;->vq()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget v7, v3, Lcom/android/mail/browse/ConversationMessage;->aBk:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, v3, Lcom/android/mail/browse/ConversationMessage;->ayZ:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    iget-boolean v7, v3, Lcom/android/mail/browse/ConversationMessage;->aza:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-boolean v3, v3, Lcom/android/mail/browse/ConversationMessage;->azc:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v6

    const/16 v3, 0xa

    aput-object v4, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 185
    goto/16 :goto_0

    .line 186
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
