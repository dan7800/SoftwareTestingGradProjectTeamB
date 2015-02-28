.class public final Lcom/google/android/gm/provider/uiprovider/g;
.super Lcom/google/android/gm/provider/uiprovider/i;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

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

.field private static final boE:Lcom/android/mail/utils/V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/utils/V",
            "<",
            "Lcom/google/android/gm/provider/SenderInstructions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private YZ:Ljava/lang/String;

.field private final bdZ:I

.field private final bea:I

.field private final beb:I

.field private final bec:I

.field private final bed:I

.field private final bee:I

.field private final bef:I

.field private final beg:I

.field private final beh:I

.field private final bej:I

.field private final bem:I

.field private final ben:I

.field private final boA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/T;",
            ">;"
        }
    .end annotation
.end field

.field private final boB:Landroid/support/v4/f/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/f",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private final boC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bov:Ljava/lang/String;

.field private final bow:I

.field private final box:Ljava/lang/String;

.field private final boy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/T;",
            ">;"
        }
    .end annotation
.end field

.field private boz:Z

.field private final mAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 37
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/uiprovider/g;->TAG:Ljava/lang/String;

    .line 70
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

    sput-object v0, Lcom/google/android/gm/provider/uiprovider/g;->boD:Ljava/util/Map;

    .line 83
    new-instance v0, Lcom/android/mail/utils/V;

    new-instance v1, Lcom/google/android/gm/provider/uiprovider/h;

    invoke-direct {v1}, Lcom/google/android/gm/provider/uiprovider/h;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mail/utils/V;-><init>(Lcom/android/mail/utils/W;)V

    sput-object v0, Lcom/google/android/gm/provider/uiprovider/g;->boE:Lcom/android/mail/utils/V;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1, p4}, Lcom/google/android/gm/provider/uiprovider/i;-><init>(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->boy:Ljava/util/Map;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->boz:Z

    .line 62
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    .line 66
    new-instance v0, Landroid/support/v4/f/f;

    invoke-direct {v0}, Landroid/support/v4/f/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->boB:Landroid/support/v4/f/f;

    .line 68
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->boC:Ljava/util/HashMap;

    .line 98
    iput-object p2, p0, Lcom/google/android/gm/provider/uiprovider/g;->mAccount:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/google/android/gm/provider/uiprovider/g;->bov:Ljava/lang/String;

    .line 101
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bdZ:I

    .line 103
    const-string v0, "subject"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bea:I

    .line 104
    const-string v0, "snippet"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->beb:I

    .line 105
    const-string v0, "fromAddress"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bec:I

    .line 106
    const-string v0, "fromProtoBuf"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bed:I

    .line 107
    const-string v0, "fromCompact"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bee:I

    .line 108
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bef:I

    .line 109
    const-string v0, "personalLevel"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->beg:I

    .line 111
    const-string v0, "numMessages"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->beh:I

    .line 112
    const-string v0, "hasAttachments"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bej:I

    .line 114
    const-string v0, "conversationLabels"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->ben:I

    .line 116
    const-string v0, "synced"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bem:I

    .line 117
    const-string v0, "sortMessageId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bow:I

    .line 119
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/GmailProvider;->eo(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->box:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private If()V
    .locals 4

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->boz:Z

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    const-string v1, "loadLabels"

    invoke-static {v1}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/g;->mAccount:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gm/provider/uiprovider/g;->ben:I

    invoke-super {p0, v2}, Lcom/google/android/gm/provider/uiprovider/i;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/provider/uiprovider/g;->boy:Ljava/util/Map;

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/gm/provider/Y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 198
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->beb:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/uiprovider/g;->eb(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->YZ:Ljava/lang/String;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->boz:Z

    .line 201
    :cond_0
    return-void
.end method

.method private kb()Lcom/android/mail/providers/ConversationInfo;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 261
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bee:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getBlob(I)[B

    move-result-object v3

    .line 262
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->beh:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v1

    .line 263
    new-instance v0, Lcom/android/mail/providers/ConversationInfo;

    invoke-direct {v0, v1}, Lcom/android/mail/providers/ConversationInfo;-><init>(I)V

    .line 265
    sget-object v2, Lcom/google/android/gm/provider/uiprovider/g;->boE:Lcom/android/mail/utils/V;

    invoke-virtual {v2}, Lcom/android/mail/utils/V;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/gm/provider/SenderInstructions;

    .line 267
    :try_start_0
    invoke-virtual {v6}, Lcom/google/android/gm/provider/SenderInstructions;->reset()V

    .line 268
    if-eqz v3, :cond_2

    array-length v2, v3

    if-lez v2, :cond_2

    .line 269
    const-string v2, "parseCSI-ss"

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 270
    invoke-static {v3, v6}, Lcom/google/android/gm/provider/s;->a([BLcom/google/android/gm/provider/SenderInstructions;)V

    .line 285
    :goto_0
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 287
    iget-object v3, p0, Lcom/google/android/gm/provider/uiprovider/g;->YZ:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    const-string v4, "^u"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v6}, Lcom/google/android/gm/provider/SenderInstructions;->HN()I

    move-result v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/providers/ConversationInfo;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/gm/provider/SenderInstructions;->HO()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/by;

    iget-object v2, v1, Lcom/google/android/gm/provider/by;->bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    sget-object v4, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->bna:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    if-ne v2, v4, :cond_0

    if-nez v8, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gm/provider/by;->apC:Z

    :cond_1
    iget-boolean v2, v1, Lcom/google/android/gm/provider/by;->apC:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    new-instance v4, Lcom/android/mail/providers/ParticipantInfo;

    iget-object v5, v1, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gm/provider/by;->aBF:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gm/provider/by;->priority:I

    invoke-direct {v4, v5, v9, v1, v2}, Lcom/android/mail/providers/ParticipantInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v4}, Lcom/android/mail/providers/ConversationInfo;->a(Lcom/android/mail/providers/ParticipantInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 290
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gm/provider/uiprovider/g;->boE:Lcom/android/mail/utils/V;

    invoke-virtual {v1, v6}, Lcom/android/mail/utils/V;->V(Ljava/lang/Object;)V

    throw v0

    .line 273
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/google/android/gm/provider/uiprovider/g;->bed:I

    invoke-super {p0, v2}, Lcom/google/android/gm/provider/uiprovider/i;->getBlob(I)[B

    move-result-object v3

    .line 274
    const/4 v2, 0x0

    .line 275
    const-string v4, "parseCSI-proto"

    invoke-static {v4}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 276
    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    .line 277
    invoke-static {v3}, Lcom/google/android/gm/provider/s;->g([B)Lcom/google/common/a/a/a;

    move-result-object v2

    .line 279
    :cond_3
    if-eqz v2, :cond_4

    .line 280
    invoke-static {v2, v6}, Lcom/google/android/gm/provider/s;->a(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/SenderInstructions;)V

    goto :goto_0

    .line 282
    :cond_4
    iget v2, p0, Lcom/google/android/gm/provider/uiprovider/g;->bec:I

    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/uiprovider/g;->eb(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/google/android/gm/provider/s;->a(Ljava/lang/String;Lcom/google/android/gm/provider/SenderInstructions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    move v2, v7

    .line 287
    goto :goto_2

    .line 290
    :cond_6
    sget-object v1, Lcom/google/android/gm/provider/uiprovider/g;->boE:Lcom/android/mail/utils/V;

    invoke-virtual {v1, v6}, Lcom/android/mail/utils/V;->V(Ljava/lang/Object;)V

    .line 292
    return-object v0
.end method

.method private zC()J
    .locals 2

    .prologue
    .line 388
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bdZ:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected final Ig()V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Lcom/google/android/gm/provider/uiprovider/i;->Ig()V

    .line 319
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->boz:Z

    .line 321
    return-void
.end method

.method public final getBlob(I)[B
    .locals 5

    .prologue
    .line 237
    const-string v0, "Gmail"

    const-string v1, "UIConversationCursor.getBlob(%d): Unexpected column"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 244
    invoke-super {p0}, Lcom/google/android/gm/provider/uiprovider/i;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 247
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 249
    const-string v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    sget-object v2, Lcom/google/android/gm/provider/uiprovider/g;->boD:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 255
    const-string v2, "cursor_status"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    const-string v0, "cursor_total_count"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    return-object v1
.end method

.method public final getInt(I)I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/g;->If()V

    .line 125
    packed-switch p1, :pswitch_data_0

    .line 172
    :pswitch_0
    const-string v1, "Gmail"

    const-string v3, "UIConversationCursor.getInt(%d): Unexpected column"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v1, v3, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 174
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v0

    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 127
    :pswitch_2
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bej:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 129
    :pswitch_3
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->beh:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 132
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    const-string v3, "^r"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 134
    :pswitch_5
    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    const-string v3, "^^failed"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    const/4 v0, -0x1

    goto :goto_0

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    const-string v3, "^^retry"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    const/4 v0, 0x4

    goto :goto_0

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    const-string v3, "^^out"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 139
    goto :goto_0

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    const-string v2, "^f"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v0, 0x3

    goto :goto_0

    .line 146
    :pswitch_6
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    const-string v3, "^io_im"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 150
    :pswitch_7
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    const-string v3, "^u"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 152
    :pswitch_8
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    const-string v3, "^us"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 154
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    const-string v3, "^t"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 156
    :pswitch_a
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    const-string v3, "^s"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto/16 :goto_0

    .line 158
    :pswitch_b
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    const-string v3, "^p"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto/16 :goto_0

    .line 160
    :pswitch_c
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    const-string v3, "^g"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto/16 :goto_0

    .line 165
    :pswitch_d
    iget v3, p0, Lcom/google/android/gm/provider/uiprovider/g;->beg:I

    invoke-super {p0, v3}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->dN(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v3

    sget-object v4, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->bfb:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->bfd:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    if-ne v3, v4, :cond_4

    move v0, v1

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->bfc:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    if-ne v3, v1, :cond_0

    move v0, v2

    goto/16 :goto_0

    .line 170
    :pswitch_e
    iget v1, p0, Lcom/google/android/gm/provider/uiprovider/g;->bem:I

    invoke-super {p0, v1}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    goto/16 :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public final getLong(I)J
    .locals 5

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/g;->If()V

    .line 181
    sparse-switch p1, :sswitch_data_0

    .line 189
    const-string v0, "Gmail"

    const-string v1, "UIConversationCursor.getLong(%d): Unexpected column"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 191
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 183
    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/g;->zC()J

    move-result-wide v0

    goto :goto_0

    .line 185
    :sswitch_1
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bef:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 187
    :sswitch_2
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bow:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 205
    if-eq p1, v2, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/g;->If()V

    .line 210
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 227
    const-string v0, "Gmail"

    const-string v1, "UIConversationCursor.getString(%d): Unexpected column"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 229
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/uiprovider/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 212
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->mAccount:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/g;->zC()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/GmailProvider;->j(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :sswitch_1
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bea:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/uiprovider/g;->eb(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->YZ:Ljava/lang/String;

    goto :goto_0

    .line 218
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->mAccount:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/g;->zC()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/GmailProvider;->k(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 221
    :sswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 223
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->bov:Ljava/lang/String;

    goto :goto_0

    .line 225
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->box:Ljava/lang/String;

    goto :goto_0

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x16 -> :sswitch_5
        0x17 -> :sswitch_4
        0x18 -> :sswitch_6
    .end sparse-switch
.end method

.method public final respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 332
    new-instance v1, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 334
    const-string v0, "setVisibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "setVisibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-eqz v0, :cond_0

    .line 339
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 340
    const-string v3, "command"

    const-string v4, "setVisible"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v3, "visible"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 343
    invoke-super {p0, v2}, Lcom/google/android/gm/provider/uiprovider/i;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 344
    const-string v2, "ok"

    const-string v3, "commandResponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 346
    const-string v2, "setVisibility"

    if-eqz v0, :cond_4

    const-string v0, "ok"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    const-string v0, "uiPositionChange"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    const-string v0, "uiPositionChange"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 356
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 357
    const-string v3, "command"

    const-string v4, "setUIPosition"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v3, "position"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    invoke-super {p0, v2}, Lcom/google/android/gm/provider/uiprovider/i;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 360
    const-string v2, "ok"

    const-string v3, "commandResponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 362
    const-string v2, "uiPositionChange"

    if-eqz v0, :cond_5

    const-string v0, "ok"

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_1
    const-string v0, "conversationInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/g;->If()V

    .line 371
    const-string v0, "conversationInfo"

    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/g;->kb()Lcom/android/mail/providers/ConversationInfo;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 374
    :cond_2
    const-string v0, "rawFolders"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/g;->If()V

    .line 377
    const-string v0, "getRawFolders"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/g;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/g;->boA:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gm/provider/uiprovider/g;->boB:Landroid/support/v4/f/f;

    iget-object v4, p0, Lcom/google/android/gm/provider/uiprovider/g;->boC:Ljava/util/HashMap;

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;Ljava/util/Map;Landroid/support/v4/f/f;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 380
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 381
    const-string v2, "rawFolders"

    invoke-static {v0}, Lcom/android/mail/providers/FolderList;->p(Ljava/util/Collection;)Lcom/android/mail/providers/FolderList;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 384
    :cond_3
    return-object v1

    .line 346
    :cond_4
    const-string v0, "failed"

    goto :goto_0

    .line 362
    :cond_5
    const-string v0, "failed"

    goto :goto_1
.end method
