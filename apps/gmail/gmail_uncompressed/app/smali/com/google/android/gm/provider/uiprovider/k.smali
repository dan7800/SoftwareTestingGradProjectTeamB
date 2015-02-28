.class public final Lcom/google/android/gm/provider/uiprovider/k;
.super Lcom/google/android/gm/provider/uiprovider/i;
.source "SourceFile"


# static fields
.field private static final boD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mW:Ljava/lang/String;


# instance fields
.field private final aBE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/uiprovider/GmailAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private final aHo:Lcom/android/mail/i/g;

.field private aPP:J

.field private aPQ:J

.field private aXn:J

.field private final bdZ:I

.field private final bdu:I

.field private final bea:I

.field private final beb:I

.field private final bec:I

.field private final beo:I

.field private final beq:Landroid/text/TextUtils$StringSplitter;

.field private final bgw:I

.field private final boU:Ljava/lang/String;

.field private final boV:Ljava/lang/String;

.field private final boW:I

.field private final boX:I

.field private final boY:I

.field private final boZ:I

.field private final bpa:I

.field private final bpb:I

.field private final bpc:I

.field private final bpd:I

.field private final bpe:I

.field private final bpf:I

.field private final bpg:I

.field private final bph:I

.field private final bpi:I

.field private final bpj:I

.field private final bpk:I

.field private final bpl:I

.field private final bpm:I

.field private final bpn:I

.field private final bpo:I

.field private final bpp:I

.field private final bpq:I

.field private bpr:Ljava/lang/String;

.field private bps:Ljava/lang/String;

.field private bpt:I

.field private bpu:Z

.field private final cV:Landroid/os/Bundle;

.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 29
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/uiprovider/k;->mW:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0}, Lcom/google/common/collect/y;-><init>()V

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->bez:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beA:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beD:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beC:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beB:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/uiprovider/k;->boD:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/i/g;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 98
    invoke-direct {p0, p2, p7}, Lcom/google/android/gm/provider/uiprovider/i;-><init>(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->aBE:Ljava/util/List;

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpu:Z

    .line 462
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->DY()Landroid/text/TextUtils$StringSplitter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->beq:Landroid/text/TextUtils$StringSplitter;

    .line 100
    iput-object p3, p0, Lcom/google/android/gm/provider/uiprovider/k;->mAccount:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/google/android/gm/provider/uiprovider/k;->boU:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lcom/google/android/gm/provider/uiprovider/k;->aHo:Lcom/android/mail/i/g;

    .line 103
    iput-object p1, p0, Lcom/google/android/gm/provider/uiprovider/k;->mContext:Landroid/content/Context;

    .line 104
    iput-object p6, p0, Lcom/google/android/gm/provider/uiprovider/k;->boV:Ljava/lang/String;

    .line 106
    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bgw:I

    .line 107
    const-string v1, "messageId"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->boW:I

    .line 108
    const-string v1, "conversation"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bdZ:I

    .line 109
    const-string v1, "subject"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bea:I

    .line 110
    const-string v1, "snippet"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->beb:I

    .line 111
    const-string v1, "fromAddress"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bec:I

    .line 112
    const-string v1, "customFromAddress"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->boX:I

    .line 113
    const-string v1, "toAddresses"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->boY:I

    .line 114
    const-string v1, "ccAddresses"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->boZ:I

    .line 115
    const-string v1, "bccAddresses"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpa:I

    .line 116
    const-string v1, "replyToAddresses"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpb:I

    .line 117
    const-string v1, "dateReceivedMs"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpc:I

    .line 118
    const-string v1, "body"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bdu:I

    .line 119
    const-string v1, "bodyEmbedsExternalResources"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpd:I

    .line 121
    const-string v1, "labelIds"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->beo:I

    .line 122
    const-string v1, "refMessageId"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpe:I

    .line 123
    const-string v1, "isDraft"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpf:I

    .line 124
    const-string v1, "forward"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpg:I

    .line 125
    const-string v1, "joinedAttachmentInfos"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bph:I

    .line 127
    const-string v1, "isUnread"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpi:I

    .line 129
    const-string v1, "isStarred"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpj:I

    .line 131
    const-string v1, "isInOutbox"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpk:I

    .line 133
    const-string v1, "isInRetry"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpl:I

    .line 135
    const-string v1, "isInFailed"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpm:I

    .line 137
    const-string v1, "quoteStartPos"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpn:I

    .line 138
    const-string v1, "spamDisplayedReasonType"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpo:I

    .line 140
    const-string v1, "clipped"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpp:I

    .line 141
    const-string v1, "permalink"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpq:I

    .line 146
    invoke-super {p0}, Lcom/google/android/gm/provider/uiprovider/i;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "status"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "status"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/android/gm/provider/uiprovider/k;->boD:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lcom/google/android/gm/provider/uiprovider/k;->boD:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    const-string v1, "cursor_status"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/google/android/gm/provider/uiprovider/k;->cV:Landroid/os/Bundle;

    .line 147
    return-void
.end method

.method private Ih()V
    .locals 3

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpu:Z

    if-nez v0, :cond_0

    .line 159
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bph:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->aBE:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->fp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->boW:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->aXn:J

    .line 161
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bgw:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->aPQ:J

    .line 162
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bdZ:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->aPP:J

    .line 163
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bec:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/uiprovider/k;->eb(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->boX:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/uiprovider/k;->eb(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpr:Ljava/lang/String;

    .line 164
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpo:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpt:I

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpu:Z

    .line 168
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 163
    goto :goto_0
.end method

.method private Ii()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 398
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->boU:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 427
    :goto_0
    return v0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->boU:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->ei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v0, v4, :cond_1

    .line 408
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 410
    if-nez v0, :cond_2

    .line 411
    sget-object v0, Lcom/google/android/gm/provider/uiprovider/k;->mW:Ljava/lang/String;

    const-string v3, "UIMessageCursor#getIsSeen() - main thread, MailEngine did not exist"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/google/android/gm/provider/ad;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 413
    goto :goto_0

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gm/provider/uiprovider/k;->mAccount:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 421
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Fn()Lcom/google/android/gm/provider/D;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/D;->ej(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 427
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->beo:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gm/provider/uiprovider/k;->beq:Landroid/text/TextUtils$StringSplitter;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-interface {v3, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->beq:Landroid/text/TextUtils$StringSplitter;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->a(Landroid/text/TextUtils$StringSplitter;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 427
    goto :goto_0
.end method

.method private Ij()J
    .locals 2

    .prologue
    .line 471
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpe:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private Ik()I
    .locals 2

    .prologue
    .line 568
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpn:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v0

    .line 570
    if-gtz v0, :cond_0

    .line 571
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    const/4 v0, -0x1

    .line 580
    :cond_0
    :goto_0
    return v0

    .line 575
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->boV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private ec(I)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/uiprovider/k;->eb(I)Ljava/lang/String;

    move-result-object v0

    .line 560
    sget-object v1, Lcom/google/android/gm/provider/Gmail;->bdF:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bps:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 175
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bdu:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bps:Ljava/lang/String;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bps:Ljava/lang/String;

    return-object v0
.end method

.method private vu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->boY:I

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/uiprovider/k;->ec(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private vw()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->boZ:I

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/uiprovider/k;->ec(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private vy()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpa:I

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/uiprovider/k;->ec(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final Ig()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/google/android/gm/provider/uiprovider/i;->Ig()V

    .line 152
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->aBE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bps:Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpu:Z

    .line 155
    return-void
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->cV:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getInt(I)I
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x2

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->Ih()V

    .line 225
    iget-object v4, p0, Lcom/google/android/gm/provider/uiprovider/k;->aBE:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v1

    .line 227
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 283
    :pswitch_0
    const-string v0, "Gmail"

    const-string v3, "UIMessageCursor.getInt(%d): Unexpected column"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 284
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v2

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v4, v2

    .line 225
    goto :goto_0

    .line 229
    :pswitch_1
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpd:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v2

    goto :goto_1

    .line 231
    :pswitch_2
    iget v3, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpf:I

    invoke-super {p0, v3}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    if-eqz v3, :cond_10

    iget v3, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpg:I

    invoke-super {p0, v3}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    move v2, v1

    :cond_2
    if-eqz v2, :cond_5

    const/4 v0, 0x4

    :cond_3
    :goto_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->Ij()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->vu()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->vw()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->vy()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    if-le v2, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_3

    .line 233
    :pswitch_3
    if-eqz v4, :cond_0

    move v2, v1

    goto :goto_1

    .line 236
    :pswitch_4
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpi:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    if-nez v0, :cond_0

    move v2, v1

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_4

    .line 238
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->Ii()Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_1

    .line 240
    :pswitch_6
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpj:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_5

    .line 242
    :pswitch_7
    iget v4, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpm:I

    invoke-super {p0, v4}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    move v4, v1

    :goto_6
    if-eqz v4, :cond_a

    move v2, v3

    .line 243
    goto/16 :goto_1

    :cond_9
    move v4, v2

    .line 242
    goto :goto_6

    .line 244
    :cond_a
    iget v3, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpl:I

    invoke-super {p0, v3}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_b

    move v3, v1

    :goto_7
    if-eqz v3, :cond_c

    .line 245
    const/4 v2, 0x4

    goto/16 :goto_1

    :cond_b
    move v3, v2

    .line 244
    goto :goto_7

    .line 246
    :cond_c
    iget v3, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpk:I

    invoke-super {p0, v3}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_d

    :goto_8
    if-eqz v1, :cond_0

    move v2, v0

    .line 247
    goto/16 :goto_1

    :cond_d
    move v1, v2

    .line 246
    goto :goto_8

    .line 254
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/d;->aY(Ljava/lang/String;)Lcom/android/mail/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/d;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 255
    iget-object v3, p0, Lcom/google/android/gm/provider/uiprovider/k;->aHo:Lcom/android/mail/i/g;

    invoke-virtual {v3, v0}, Lcom/android/mail/i/g;->bG(Ljava/lang/String;)Z

    move-result v3

    .line 256
    if-nez v3, :cond_e

    const-string v3, "mail-noreply@google.com"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_e
    move v2, v1

    goto/16 :goto_1

    .line 258
    :pswitch_9
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->Ik()I

    move-result v0

    if-ltz v0, :cond_0

    move v2, v1

    goto/16 :goto_1

    .line 260
    :pswitch_a
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->Ik()I

    move-result v2

    goto/16 :goto_1

    .line 263
    :pswitch_b
    iget v4, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpt:I

    if-eq v4, v3, :cond_0

    .line 265
    sget-object v2, Lcom/google/android/gm/provider/bz;->bnf:Ljava/util/Set;

    iget v3, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v0

    .line 267
    goto/16 :goto_1

    :cond_f
    move v2, v1

    .line 269
    goto/16 :goto_1

    .line 274
    :pswitch_c
    sget-object v0, Lcom/google/android/gm/provider/bz;->bng:Ljava/util/Map;

    iget v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 275
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_1

    .line 281
    :pswitch_d
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpp:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v2

    goto/16 :goto_1

    :cond_10
    move v0, v2

    goto/16 :goto_3

    .line 227
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_9
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method

.method public final getLong(I)J
    .locals 5

    .prologue
    .line 208
    sparse-switch p1, :sswitch_data_0

    .line 216
    const-string v0, "Gmail"

    const-string v1, "UIMessageCursor.getLong(%d): Unexpected column"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 218
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 210
    :sswitch_0
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bgw:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 212
    :sswitch_1
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpc:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 214
    :sswitch_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 296
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->Ih()V

    .line 298
    packed-switch p1, :pswitch_data_0

    .line 358
    :pswitch_0
    const-string v2, "Gmail"

    const-string v3, "UIMessageCursor.getString(%d): Unexpected column"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 360
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/uiprovider/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 300
    :pswitch_1
    iget-wide v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->aXn:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->mAccount:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/k;->aPQ:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/GmailProvider;->h(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->mAccount:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/k;->aPP:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/GmailProvider;->j(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :pswitch_4
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bea:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :pswitch_5
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->beb:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpr:Ljava/lang/String;

    goto :goto_0

    .line 312
    :pswitch_7
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->boX:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 314
    :pswitch_8
    const-string v0, ", "

    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->vu()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 316
    :pswitch_9
    const-string v0, ", "

    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->vw()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :pswitch_a
    const-string v0, ", "

    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->vy()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :pswitch_b
    const-string v0, ", "

    iget v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpb:I

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/uiprovider/k;->ec(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    move-object v0, v8

    .line 325
    goto :goto_0

    .line 327
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->mAccount:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/k;->Ij()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/GmailProvider;->l(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :pswitch_f
    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/k;->aBE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 331
    :goto_1
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->mAccount:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/k;->aPP:J

    iget-wide v4, p0, Lcom/google/android/gm/provider/uiprovider/k;->aXn:J

    iget-wide v6, p0, Lcom/google/android/gm/provider/uiprovider/k;->aPQ:J

    invoke-static/range {v1 .. v7}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJJ)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    move v0, v1

    .line 330
    goto :goto_1

    :cond_1
    move-object v0, v8

    .line 331
    goto/16 :goto_0

    :pswitch_10
    move-object v0, v8

    .line 337
    goto/16 :goto_0

    .line 339
    :pswitch_11
    iget-object v10, p0, Lcom/google/android/gm/provider/uiprovider/k;->aBE:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->mAccount:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/k;->aPP:J

    iget-wide v4, p0, Lcom/google/android/gm/provider/uiprovider/k;->aXn:J

    iget-wide v6, p0, Lcom/google/android/gm/provider/uiprovider/k;->aPQ:J

    if-nez v10, :cond_2

    move-object v0, v8

    goto/16 :goto_0

    :cond_2
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    iget-object v8, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v1 .. v9}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->uri:Landroid/net/Uri;

    goto :goto_2

    :cond_3
    invoke-static {v10}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->n(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_12
    move-object v0, v8

    .line 342
    goto/16 :goto_0

    :pswitch_13
    move-object v0, v8

    .line 344
    goto/16 :goto_0

    .line 346
    :pswitch_14
    sget-object v0, Lcom/google/android/gm/provider/bz;->bne:Ljava/util/Map;

    iget v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 348
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move-object v0, v8

    .line 349
    goto/16 :goto_0

    .line 351
    :cond_5
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/k;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_15
    move-object v0, v8

    .line 354
    goto/16 :goto_0

    .line 356
    :pswitch_16
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/k;->bpq:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_7
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method
