.class public final Lcom/google/android/gm/provider/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/provider/aj;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final bhJ:Ljava/util/Map;
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

.field private static bhO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static bhP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bhQ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bhR:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bhf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final Tw:Landroid/accounts/Account;

.field private final bcJ:Landroid/database/sqlite/SQLiteDatabase;

.field final bdw:Lcom/google/android/gm/provider/D;

.field private final bhA:Lcom/google/android/gm/provider/Operations;

.field bhB:J

.field bhC:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/provider/ah;",
            ">;"
        }
    .end annotation
.end field

.field bhD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final bhE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bhF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field final bhG:Lcom/google/android/gm/provider/ag;

.field private final bhH:Lcom/google/android/gm/provider/w;

.field private bhI:Z

.field private final bhK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/af;",
            ">;"
        }
    .end annotation
.end field

.field private final bhL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/af;",
            ">;"
        }
    .end annotation
.end field

.field private bhM:J

.field private bhN:J

.field private bhS:Ljava/lang/String;

.field private bhT:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 54
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0}, Lcom/google/common/collect/y;-><init>()V

    const-string v1, "^i"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_personal"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_social"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_promo"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_notification"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_group"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^iim"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^t"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^io_im"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^b"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^f"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^^out"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^r"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^all"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^s"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^k"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/ae;->bhJ:Ljava/util/Map;

    .line 723
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "^r"

    aput-object v1, v0, v4

    const-string v1, "^^out"

    aput-object v1, v0, v3

    const-string v1, "^s"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/ae;->bhO:Ljava/util/Set;

    .line 727
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^f"

    aput-object v1, v0, v4

    const-string v1, "^t"

    aput-object v1, v0, v3

    const-string v1, "^b"

    aput-object v1, v0, v5

    const-string v1, "^all"

    aput-object v1, v0, v6

    const-string v1, "^k"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "^io_im"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/ae;->bhP:Ljava/util/Set;

    .line 732
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "^^out"

    aput-object v1, v0, v4

    const-string v1, "^r"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/ae;->bhQ:Ljava/util/Set;

    .line 735
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "^f"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/ae;->bhf:Ljava/util/Set;

    .line 738
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "^all"

    aput-object v1, v0, v4

    const-string v1, "^b"

    aput-object v1, v0, v3

    const-string v1, "^s"

    aput-object v1, v0, v5

    const-string v1, "^k"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/ae;->bhR:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/Operations;Lcom/google/android/gm/provider/ag;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/ae;->bhE:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/ae;->bhF:Ljava/util/Map;

    .line 108
    iput-boolean v1, p0, Lcom/google/android/gm/provider/ae;->bhI:Z

    .line 627
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/ae;->bhK:Ljava/util/Map;

    .line 628
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/ae;->bhL:Ljava/util/Map;

    .line 629
    iput-wide v4, p0, Lcom/google/android/gm/provider/ae;->bhM:J

    .line 630
    iput-wide v4, p0, Lcom/google/android/gm/provider/ae;->bhN:J

    .line 1201
    iput-boolean v1, p0, Lcom/google/android/gm/provider/ae;->bhT:Z

    .line 260
    iput-object p1, p0, Lcom/google/android/gm/provider/ae;->mContext:Landroid/content/Context;

    .line 261
    iput-object p2, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    .line 262
    iput-object p3, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    .line 263
    iput-object p4, p0, Lcom/google/android/gm/provider/ae;->bhA:Lcom/google/android/gm/provider/Operations;

    .line 264
    iput-object v3, p0, Lcom/google/android/gm/provider/ae;->bhC:Ljava/util/Collection;

    .line 265
    iput-object p5, p0, Lcom/google/android/gm/provider/ae;->bhG:Lcom/google/android/gm/provider/ag;

    .line 268
    invoke-direct {p0}, Lcom/google/android/gm/provider/ae;->Fm()V

    .line 270
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v1, "canonicalName"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "numConversations"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "numUnreadConversations"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "numUnseenConversations"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "color"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "hidden"

    aput-object v1, v2, v0

    .line 280
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "labels"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 283
    new-instance v1, Lcom/google/android/gm/provider/D;

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/D;-><init>(Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/gm/provider/ae;->bdw:Lcom/google/android/gm/provider/D;

    .line 285
    new-instance v0, Lcom/google/android/gm/provider/w;

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gm/provider/w;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/ae;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/ae;->bhH:Lcom/google/android/gm/provider/w;

    .line 287
    invoke-direct {p0}, Lcom/google/android/gm/provider/ae;->Fp()V

    .line 288
    return-void
.end method

.method public static E(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1786
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "canonicalName"

    aput-object v0, v2, v4

    .line 1789
    const-string v1, "labels"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1792
    const-wide/16 v0, -0x1

    .line 1793
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1794
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1795
    invoke-static {v4, v5}, Lcom/google/android/gm/provider/ae;->au(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1796
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 1800
    :cond_1
    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1802
    :cond_2
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1803
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1804
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1805
    invoke-static {v3}, Lcom/google/android/gm/provider/ae;->eN(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/ae;->au(J)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1806
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const-string v6, "UPDATE labels SET _id = ? WHERE _id = ?"

    invoke-virtual {p0, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "UPDATE message_labels SET labels_id = ? WHERE labels_id = ?"

    invoke-virtual {p0, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "UPDATE conversation_labels SET labels_id = ? WHERE labels_id = ?"

    invoke-virtual {p0, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v4, v5, v0, v1}, Lcom/google/android/gm/provider/Operations;->a(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "UPDATE conversations SET labelIds = REPLACE(labelIds, \',"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\', \',"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1810
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1811
    return-void
.end method

.method private Fm()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 428
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "server_preferences"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v8

    const-string v4, "value"

    aput-object v4, v2, v9

    const-string v4, "blobValue"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_2

    .line 432
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 437
    if-eqz v2, :cond_0

    .line 438
    iget-object v3, p0, Lcom/google/android/gm/provider/ae;->bhE:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->bhF:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 443
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 445
    :cond_2
    return-void
.end method

.method private Fp()V
    .locals 8

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/google/android/gm/provider/ae;->bhI:Z

    if-eqz v0, :cond_0

    .line 965
    :goto_0
    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 956
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/ae;->bhJ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 957
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 957
    :cond_1
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "systemLabelOrder"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, v1, v3}, Lcom/google/android/gm/provider/ae;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "labels"

    const-string v5, "canonicalName = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 960
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/ae;->bhI:Z

    .line 961
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ae;->FI()V

    .line 962
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 964
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method private Ft()Lcom/google/common/a/a/a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1469
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhF:Ljava/util/Map;

    const-string v2, "sx_piac"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1472
    if-nez v0, :cond_0

    .line 1473
    sget-object v0, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    const-string v2, "Could not find personal inbox android config protobuf"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 1486
    :goto_0
    return-object v0

    .line 1479
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/common/a/a/a;

    sget-object v3, Lcom/google/android/gm/provider/a/a;->boa:Lcom/google/common/a/a/b;

    invoke-direct {v2, v3}, Lcom/google/common/a/a/a;-><init>(Lcom/google/common/a/a/b;)V

    invoke-virtual {v2, v0}, Lcom/google/common/a/a/a;->o([B)Lcom/google/common/a/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1481
    :catch_0
    move-exception v0

    .line 1482
    sget-object v2, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    const-string v3, "Unable to parse personal inbox android config protobuf"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 1483
    goto :goto_0
.end method

.method public static a(Lcom/google/android/gm/provider/af;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 712
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    return-object v0
.end method

.method private a(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 11

    .prologue
    .line 471
    const/4 v10, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gm/provider/ae;->a(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    .line 473
    return-void
.end method

.method private a(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V
    .locals 15

    .prologue
    .line 481
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/D;->El()J

    move-result-wide v12

    .line 482
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/D;->Eo()J

    move-result-wide v4

    .line 484
    if-eqz p7, :cond_5

    .line 490
    cmp-long v2, v12, p5

    if-nez v2, :cond_1

    const-string v2, "UPDATE conversations SET labelIds = ? || REPLACE(labelIds, ?, ?), forceAllUnread = 1 WHERE queryId != 0 AND _id = ?"

    .line 494
    :goto_0
    iget-object v3, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p5

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p5

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, ","

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    cmp-long v2, v4, p5

    if-nez v2, :cond_2

    .line 499
    if-eqz p9, :cond_0

    .line 500
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v3, p0

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v9, p8

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gm/provider/ae;->a(JJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    .line 552
    :cond_0
    :goto_1
    return-void

    .line 490
    :cond_1
    const-string v2, "UPDATE conversations SET labelIds = ? || REPLACE(labelIds, ?, ?) WHERE queryId != 0 AND _id = ?"

    goto :goto_0

    .line 507
    :cond_2
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 510
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 512
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "INSERT or REPLACE INTO message_labels (message_messageId, labels_id, message_conversation) SELECT messageId, ?, ? FROM messages WHERE conversation = ? AND messageId <= ?"

    invoke-virtual {v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    sget-object v2, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmO:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v0, p8

    if-ne v0, v2, :cond_3

    .line 517
    iget-object v3, p0, Lcom/google/android/gm/provider/ae;->bhA:Lcom/google/android/gm/provider/Operations;

    const-string v8, "conversationLabelAdded"

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gm/provider/Operations;->a(JJLjava/lang/String;J)J

    .line 522
    :cond_3
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/D;->Ej()J

    move-result-wide v2

    cmp-long v2, v2, p5

    if-nez v2, :cond_4

    .line 523
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/D;->Ep()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gm/provider/ae;->a(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    goto :goto_1

    .line 526
    :cond_4
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/D;->Ep()J

    move-result-wide v2

    cmp-long v2, v2, p5

    if-nez v2, :cond_0

    .line 527
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/D;->Ej()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gm/provider/ae;->a(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    goto :goto_1

    .line 532
    :cond_5
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 534
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "message_labels"

    const-string v4, "labels_id = ? AND message_labels.message_conversation = ? AND message_labels.message_messageId <= ?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 540
    sget-object v2, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmO:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v0, p8

    if-ne v0, v2, :cond_6

    .line 541
    iget-object v3, p0, Lcom/google/android/gm/provider/ae;->bhA:Lcom/google/android/gm/provider/Operations;

    const-string v8, "conversationLabelRemoved"

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gm/provider/Operations;->a(JJLjava/lang/String;J)J

    .line 546
    :cond_6
    cmp-long v2, v12, p5

    if-nez v2, :cond_7

    const-string v2, "UPDATE conversations SET labelIds = REPLACE(labelIds, ?, ?), forceAllUnread = 0 WHERE queryId != 0 AND _id = ?"

    .line 550
    :goto_2
    iget-object v3, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ","

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v11, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 546
    :cond_7
    const-string v2, "UPDATE conversations SET labelIds = REPLACE(labelIds, ?, ?) WHERE queryId != 0 AND _id = ?"

    goto :goto_2
.end method

.method private a(JJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V
    .locals 19

    .prologue
    .line 347
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gm/provider/ae;->ao(J)J

    move-result-wide v8

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/ae;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/D;->Eo()J

    move-result-wide v16

    .line 351
    if-eqz p5, :cond_2

    move-object/from16 v3, p0

    move-wide/from16 v4, p3

    move-wide/from16 v6, p1

    .line 352
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/provider/ae;->b(JJJ)V

    .line 354
    sget-object v2, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmO:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_0

    .line 355
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/provider/ae;->bhA:Lcom/google/android/gm/provider/Operations;

    const-string v12, "messageLabelAdded"

    move-wide/from16 v10, p1

    move-wide/from16 v13, p3

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/gm/provider/Operations;->a(JJLjava/lang/String;J)J

    .line 369
    :cond_0
    :goto_0
    cmp-long v2, v16, p3

    if-nez v2, :cond_1

    if-eqz p7, :cond_1

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT maxMessageId FROM conversations WHERE _id = ? AND queryId = 0 LIMIT 1"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 375
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v3, v2, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 377
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 384
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 387
    if-eqz p5, :cond_3

    .line 389
    const/16 v16, 0x0

    move-object/from16 v7, p0

    move-wide/from16 v12, p3

    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gm/provider/ae;->a(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    .line 412
    :cond_1
    :goto_1
    return-void

    .line 359
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "message_labels"

    const-string v4, "labels_id = ? AND message_messageId = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 362
    sget-object v2, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmO:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_0

    .line 363
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/provider/ae;->bhA:Lcom/google/android/gm/provider/Operations;

    const-string v12, "messageLabelRemoved"

    move-wide/from16 v10, p1

    move-wide/from16 v13, p3

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/gm/provider/Operations;->a(JJLjava/lang/String;J)J

    goto :goto_0

    .line 384
    :catch_0
    move-exception v2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2

    .line 393
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT COUNT(*) FROM message_labels WHERE labels_id = ? AND message_conversation = ?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 398
    const/4 v2, 0x1

    :try_start_1
    move-wide/from16 v0, p3

    invoke-virtual {v3, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 399
    const/4 v2, 0x2

    invoke-virtual {v3, v2, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 400
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    .line 402
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 405
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    .line 407
    const/16 v16, 0x0

    move-object/from16 v7, p0

    move-wide/from16 v12, p3

    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gm/provider/ae;->a(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    goto :goto_1

    .line 402
    :catchall_1
    move-exception v2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method private a(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 742
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v4

    .line 747
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->dZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_0
    move v1, v3

    .line 748
    :goto_0
    const-string v5, "systemLabel"

    if-eqz v1, :cond_b

    move v0, v3

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 750
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v2}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 752
    const-string v5, "priority"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 755
    sget-object v6, Lcom/google/android/gm/provider/ae;->bhJ:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 759
    iget-object v6, p0, Lcom/google/android/gm/provider/ae;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6, v0, v7}, Lcom/google/android/gm/persistence/b;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    .line 766
    :goto_2
    const-string v6, "systemLabelOrder"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 769
    :cond_1
    if-eqz v1, :cond_4

    .line 771
    sget-object v0, Lcom/google/android/gm/provider/ae;->bhJ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v3

    .line 773
    :goto_3
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v1, v6}, Lcom/google/android/gm/persistence/b;->E(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 776
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->ea(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 780
    if-eqz v1, :cond_13

    if-nez v5, :cond_13

    .line 782
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ae;->Fu()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 784
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/ai;

    .line 785
    invoke-virtual {v0}, Lcom/google/android/gm/provider/ai;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 809
    :cond_3
    :goto_4
    const-string v0, "hidden"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 812
    :cond_4
    sget-object v0, Lcom/google/android/gm/provider/ae;->bhP:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 817
    const-string v0, "labelCountDisplayBehavior"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 821
    :cond_5
    sget-object v0, Lcom/google/android/gm/provider/ae;->bhO:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 826
    const-string v0, "labelCountDisplayBehavior"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 830
    :cond_6
    sget-object v0, Lcom/google/android/gm/provider/ae;->bhQ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 835
    const-string v0, "labelSyncPolicy"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 839
    :cond_7
    sget-object v0, Lcom/google/android/gm/provider/ae;->bhR:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 844
    const-string v0, "labelSyncPolicy"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 848
    :cond_8
    sget-object v0, Lcom/google/android/gm/provider/ae;->bhf:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 854
    const-string v0, "labelSyncPolicy"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    :cond_9
    return-void

    :cond_a
    move v1, v2

    .line 747
    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 748
    goto/16 :goto_1

    .line 763
    :cond_c
    sget-object v0, Lcom/google/android/gm/provider/ae;->bhJ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_d
    move v0, v2

    .line 771
    goto/16 :goto_3

    :cond_e
    move v2, v3

    .line 790
    goto :goto_4

    .line 791
    :cond_f
    const-string v4, "^i"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "^iim"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 801
    :cond_10
    if-eqz v1, :cond_3

    if-nez v5, :cond_3

    move v2, v3

    goto/16 :goto_4

    .line 802
    :cond_11
    const-string v1, "^b"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v2, v3

    .line 805
    goto/16 :goto_4

    :cond_12
    move v2, v0

    goto/16 :goto_4

    :cond_13
    move v2, v3

    goto/16 :goto_4
.end method

.method private a(Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1285
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1288
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1289
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p2}, Lcom/google/android/gm/provider/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1290
    if-eqz p2, :cond_0

    .line 1291
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->bhA:Lcom/google/android/gm/provider/Operations;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gm/provider/Operations;->ab(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1299
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1295
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1297
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1299
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1300
    return-void
.end method

.method private ao(J)J
    .locals 3

    .prologue
    .line 556
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 557
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "select conversation from messages where messageId = ?"

    invoke-static {v1, v2, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 561
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static au(J)Z
    .locals 2

    .prologue
    .line 1833
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x3e8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/google/android/gm/provider/af;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 719
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    goto :goto_0
.end method

.method private b(JJJ)V
    .locals 5

    .prologue
    .line 417
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 418
    const-string v1, "labels_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    const-string v1, "message_messageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    const-string v1, "message_conversation"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "message_labels"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 422
    return-void
.end method

.method private c(Lcom/google/common/a/a/a;)V
    .locals 2

    .prologue
    .line 1490
    const-string v0, "sx_piac"

    invoke-virtual {p1}, Lcom/google/common/a/a/a;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 1492
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/ae;->m(Ljava/util/Map;)V

    .line 1493
    return-void
.end method

.method private eK(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v0, -0x1

    .line 1610
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/ae;->eM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1612
    if-nez v1, :cond_0

    .line 1621
    :goto_0
    return v0

    .line 1617
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1618
    :catch_0
    move-exception v2

    .line 1619
    sget-object v3, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    const-string v4, "Value %s for key %s cannot be parsed as an int"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object p1, v5, v1

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static eN(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1840
    if-eqz p0, :cond_0

    const-string v0, "^^"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1595
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/ae;->eM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1597
    if-nez v1, :cond_0

    .line 1606
    :goto_0
    return p2

    .line 1603
    :cond_0
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move p2, v0

    .line 1604
    goto :goto_0

    .line 1606
    :cond_1
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    move p2, v0

    goto :goto_0
.end method


# virtual methods
.method public final A(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/provider/ah;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    iput-object p1, p0, Lcom/google/android/gm/provider/ae;->bhC:Ljava/util/Collection;

    .line 296
    return-void
.end method

.method public final FA()Z
    .locals 2

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhE:Ljava/util/Map;

    const-string v1, "bx_ioao"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1678
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final FB()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1690
    const-string v0, "temp_adie"

    invoke-direct {p0, v0, v5}, Lcom/google/android/gm/provider/ae;->n(Ljava/lang/String;Z)Z

    move-result v0

    .line 1692
    sget-object v1, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    const-string v2, "reading always-show-images CF, val=%s acct=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1693
    return v0
.end method

.method public final FC()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 1697
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ae;->FB()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1705
    :goto_0
    return v0

    .line 1702
    :cond_0
    const-string v1, "bx_eid"

    invoke-direct {p0, v1, v6}, Lcom/google/android/gm/provider/ae;->n(Ljava/lang/String;Z)Z

    move-result v1

    .line 1704
    sget-object v2, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    const-string v3, "MailCore.getAlwaysShowImages(), val=%s acct=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 1705
    goto :goto_0
.end method

.method public final FD()Z
    .locals 2

    .prologue
    .line 1715
    const-string v0, "bx_eidps"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/ae;->n(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final FE()V
    .locals 3

    .prologue
    .line 1719
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1720
    const-string v1, "bx_eidps"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/ae;->a(Ljava/util/Map;Z)V

    .line 1722
    return-void
.end method

.method public final FF()Z
    .locals 2

    .prologue
    .line 1725
    const-string v0, "bx_sc"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/ae;->n(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final FG()I
    .locals 1

    .prologue
    .line 1729
    const-string v0, "ix_awtsv"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/ae;->eK(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final FH()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1734
    const-string v0, "ix_awtsv"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/ae;->eK(Ljava/lang/String;)I

    move-result v0

    if-le v2, v0, :cond_0

    .line 1735
    const-string v0, "ix_awtsv"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/google/android/gm/provider/ae;->a(Ljava/util/Map;Z)V

    .line 1741
    :cond_0
    return-void
.end method

.method public final declared-synchronized FI()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    .line 1744
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1746
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhK:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1747
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1748
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->requery()V

    .line 1750
    const-wide/16 v4, 0x0

    .line 1751
    const-wide/16 v2, -0x1

    .line 1753
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/D;->Eh()Landroid/content/ContentQueryMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->getRows()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1754
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1755
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "canonicalName"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1756
    if-nez v0, :cond_1

    .line 1757
    sget-object v0, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    const-string v1, "Null canonical name in onLabelsChanged"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v7}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1760
    :cond_1
    new-instance v7, Lcom/google/android/gm/provider/af;

    invoke-direct {v7, v8, v9, v0}, Lcom/google/android/gm/provider/af;-><init>(JLjava/lang/String;)V

    .line 1761
    invoke-static {v8, v9}, Lcom/google/android/gm/provider/ae;->au(J)Z

    move-result v1

    invoke-static {v0}, Lcom/google/android/gm/provider/ae;->eN(Ljava/lang/String;)Z

    move-result v10

    if-eq v1, v10, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdN:Lcom/google/common/collect/k;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/k;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1764
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not clear whether label is local: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1766
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhK:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhL:Ljava/util/Map;

    iget-object v1, v7, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    cmp-long v0, v8, v4

    if-lez v0, :cond_3

    iget-wide v0, v7, Lcom/google/android/gm/provider/af;->id:J

    move-wide v4, v0

    .line 1769
    :cond_3
    invoke-static {v8, v9}, Lcom/google/android/gm/provider/ae;->au(J)Z

    move-result v0

    if-eqz v0, :cond_5

    cmp-long v0, v8, v2

    if-gez v0, :cond_5

    .line 1770
    iget-wide v0, v7, Lcom/google/android/gm/provider/af;->id:J

    :goto_1
    move-wide v2, v0

    .line 1772
    goto/16 :goto_0

    .line 1774
    :cond_4
    add-long v0, v4, v12

    iput-wide v0, p0, Lcom/google/android/gm/provider/ae;->bhM:J

    .line 1775
    sub-long v0, v2, v12

    iput-wide v0, p0, Lcom/google/android/gm/provider/ae;->bhN:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1776
    monitor-exit p0

    return-void

    :cond_5
    move-wide v0, v2

    goto :goto_1
.end method

.method public final FJ()Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 1922
    const-string v0, "^^out"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    .line 1923
    const-string v1, "^^retry"

    invoke-virtual {p0, v1}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v1

    .line 1925
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1926
    :cond_0
    sget-object v2, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    const-string v3, "null label in setRetryOnAllOutgoing. outbox: %s retry: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1928
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 1959
    :goto_0
    return-object v0

    .line 1931
    :cond_1
    iget-wide v6, v0, Lcom/google/android/gm/provider/af;->id:J

    .line 1932
    iget-wide v10, v1, Lcom/google/android/gm/provider/af;->id:J

    .line 1934
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1936
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1939
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "message_labels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "message_messageId"

    aput-object v4, v2, v3

    const-string v3, "labels_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1942
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1944
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1945
    invoke-direct {p0, v4, v5}, Lcom/google/android/gm/provider/ae;->ao(J)J

    move-result-wide v6

    .line 1946
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v1, p0

    move-wide v2, v10

    .line 1948
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gm/provider/ae;->b(JJJ)V

    .line 1949
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1951
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1953
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1954
    if-eqz v9, :cond_4

    .line 1955
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v8

    .line 1959
    goto :goto_0

    .line 1953
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_1
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1954
    if-eqz v1, :cond_5

    .line 1955
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 1953
    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_1
.end method

.method public final Fn()Lcom/google/android/gm/provider/D;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bdw:Lcom/google/android/gm/provider/D;

    return-object v0
.end method

.method public final declared-synchronized Fo()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/provider/af;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Fq()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1195
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1196
    const-string v1, "custom_from_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1197
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gm/c/b;->bqO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ASC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final Fr()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1231
    iget-boolean v0, p0, Lcom/google/android/gm/provider/ae;->bhT:Z

    if-nez v0, :cond_2

    .line 1232
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1233
    const-string v1, "dasher_info"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1234
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/google/android/gm/provider/Gmail;->bdV:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1237
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    const-string v0, "domainTitle"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/ae;->bhS:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    :cond_0
    if-eqz v1, :cond_1

    .line 1243
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1247
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/ae;->bhT:Z

    .line 1250
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhS:Ljava/lang/String;

    return-object v0

    .line 1242
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 1243
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final Fs()V
    .locals 8

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1440
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1441
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1442
    invoke-direct {p0, v0, v2}, Lcom/google/android/gm/provider/ae;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1443
    iget-object v3, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "labels"

    const-string v5, "canonicalName = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1464
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1448
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1450
    const-string v1, "^i"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/provider/ae;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1451
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const-string v3, "canonicalName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "^i"

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1455
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1457
    const-string v1, "^iim"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/provider/ae;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1458
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const-string v3, "canonicalName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "^iim"

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1461
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ae;->FI()V

    .line 1462
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1464
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1465
    return-void
.end method

.method public final Fu()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/ai;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1496
    invoke-direct {p0}, Lcom/google/android/gm/provider/ae;->Ft()Lcom/google/common/a/a/a;

    move-result-object v1

    .line 1497
    if-nez v1, :cond_0

    .line 1498
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->Zu()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 1517
    :goto_0
    return-object v0

    .line 1501
    :cond_0
    new-instance v2, Lcom/google/common/collect/y;

    invoke-direct {v2}, Lcom/google/common/collect/y;-><init>()V

    .line 1504
    invoke-virtual {v1, v8}, Lcom/google/common/a/a/a;->fA(I)I

    move-result v3

    .line 1506
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 1507
    invoke-virtual {v1, v8, v0}, Lcom/google/common/a/a/a;->ap(II)Lcom/google/common/a/a/a;

    move-result-object v4

    .line 1508
    invoke-virtual {v4, v8}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1509
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1510
    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v4

    .line 1512
    new-instance v7, Lcom/google/android/gm/provider/ai;

    invoke-direct {v7, v5, v6, v4}, Lcom/google/android/gm/provider/ai;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1514
    invoke-virtual {v2, v5, v7}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    .line 1506
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1517
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0
.end method

.method public final Fv()Z
    .locals 2

    .prologue
    .line 1582
    invoke-direct {p0}, Lcom/google/android/gm/provider/ae;->Ft()Lcom/google/common/a/a/a;

    move-result-object v0

    .line 1583
    if-nez v0, :cond_0

    .line 1584
    const/4 v0, 0x0

    .line 1587
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v0

    goto :goto_0
.end method

.method public final Fw()Z
    .locals 2

    .prologue
    .line 1653
    const-string v0, "bx_pie"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/ae;->n(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final Fx()Z
    .locals 2

    .prologue
    .line 1661
    const-string v0, "bx_piuf"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/ae;->n(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final Fy()Z
    .locals 2

    .prologue
    .line 1665
    const-string v0, "ShouldShowSectionedInboxOOBE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/ae;->n(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final Fz()V
    .locals 2

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhE:Ljava/util/Map;

    const-string v1, "ShouldShowSectionedInboxOOBE"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    return-void
.end method

.method public final G(Ljava/util/List;)V
    .locals 6
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
    const/4 v5, 0x0

    .line 317
    const-string v0, ", "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "message_labels"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "message_messageId IN ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bhA:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/provider/Operations;->I(Ljava/util/List;)V

    .line 323
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "messageId IN ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 324
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 325
    sget-object v1, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    const-string v2, "Deleted messages count (%d) does not match delete request count (%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 331
    :cond_0
    return-void
.end method

.method public final U(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1259
    const-string v0, "/customfrom/"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    invoke-static {p1}, Lcom/google/android/gm/provider/GmailProvider;->en(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gm/c/b;->f(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1262
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "custom_from_prefs"

    const-string v3, "_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1263
    return-void
.end method

.method public final V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1648
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/ae;->eM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1649
    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public final W(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 1849
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->ei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1850
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v1

    .line 1853
    if-nez v1, :cond_1

    .line 1911
    :cond_0
    :goto_0
    return v0

    .line 1858
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gm/provider/T;->getId()J

    move-result-wide v6

    .line 1860
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v1

    .line 1863
    if-eqz v1, :cond_0

    .line 1868
    invoke-virtual {v1}, Lcom/google/android/gm/provider/T;->getId()J

    move-result-wide v8

    .line 1870
    invoke-static {p2}, Lcom/google/android/gm/provider/Gmail;->ei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1871
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v1

    .line 1874
    if-eqz v1, :cond_0

    .line 1879
    invoke-virtual {v1}, Lcom/google/android/gm/provider/T;->getId()J

    move-result-wide v10

    .line 1881
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1883
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1884
    const-string v0, "labels_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1893
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "conversation_labels"

    const-string v3, "labels_id = ? AND conversation_id IN (SELECT conversation_id FROM conversation_labels WHERE labels_id = ?)"

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v6

    .line 1896
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "message_labels"

    const-string v3, "labels_id = ? AND message_conversation IN (SELECT conversation_id FROM conversation_labels WHERE labels_id = ?)"

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 1899
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1900
    const-string v1, "numConversations"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1901
    const-string v1, "numUnreadConversations"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1902
    const-string v1, "numUnseenConversations"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1904
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1906
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "labels"

    const-string v4, "_id = ?"

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1908
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1909
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ae;->FI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1911
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final a(JJLcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 13

    .prologue
    .line 465
    move-object/from16 v0, p5

    iget-wide v8, v0, Lcom/google/android/gm/provider/af;->id:J

    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gm/provider/ae;->a(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 466
    return-void
.end method

.method public final a(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhH:Lcom/google/android/gm/provider/w;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gm/provider/w;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 577
    return-void
.end method

.method final a(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V
    .locals 7

    .prologue
    .line 593
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bhH:Lcom/google/android/gm/provider/w;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gm/provider/w;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    .line 595
    return-void
.end method

.method public final a(JLcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 9

    .prologue
    .line 335
    iget-wide v4, p3, Lcom/google/android/gm/provider/af;->id:J

    const/4 v8, 0x1

    move-object v1, p0

    move-wide v2, p1

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gm/provider/ae;->a(JJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    .line 336
    return-void
.end method

.method public final a(JLjava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 451
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "message_labels"

    const-string v2, "message_messageId = ?"

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 457
    sget-object v7, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmN:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gm/provider/ae;->a(JJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    goto :goto_0

    .line 460
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gm/provider/af;IIIILjava/lang/String;)V
    .locals 8

    .prologue
    .line 1002
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1003
    const-string v1, "numConversations"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1004
    const-string v1, "numUnreadConversations"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1005
    const-string v1, "numUnseenConversations"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1006
    const-string v1, "color"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1007
    const-string v1, "visibility"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1010
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1011
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1012
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ae;->FI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1015
    return-void

    .line 1014
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final a(Lcom/google/android/gm/provider/af;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 934
    const-string v1, "canonicalName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string v1, "color"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 937
    const-string v1, "visibility"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-direct {p0, p2, v0}, Lcom/google/android/gm/provider/ae;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 941
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 942
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/bb;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1159
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1161
    if-eqz p3, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "custom_from_prefs"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1165
    invoke-static {p1}, Lcom/google/android/gm/c/b;->fr(Ljava/lang/String;)V

    .line 1169
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1170
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1171
    const-string v4, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/bb;

    iget-object v1, v1, Lcom/google/android/gm/provider/bb;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const-string v4, "is_default"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/bb;

    iget-object v1, v1, Lcom/google/android/gm/provider/bb;->blc:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string v4, "reply_to"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/bb;

    iget-object v1, v1, Lcom/google/android/gm/provider/bb;->replyTo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string v4, "address"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/bb;

    iget-object v1, v1, Lcom/google/android/gm/provider/bb;->address:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v1, "_id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "custom_from_prefs"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v0, v1, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1186
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1173
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/bb;

    iget-object v1, v1, Lcom/google/android/gm/provider/bb;->replyTo:Ljava/lang/String;

    goto :goto_1

    .line 1180
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1182
    invoke-static {p1}, Lcom/google/android/gm/provider/GmailProvider;->en(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1183
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ae;->Fq()Landroid/database/Cursor;

    move-result-object v1

    .line 1184
    invoke-static {v0, v1}, Lcom/google/android/gm/c/b;->a(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1187
    return-void
.end method

.method final a(Ljava/util/Set;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1529
    invoke-direct {p0}, Lcom/google/android/gm/provider/ae;->Ft()Lcom/google/common/a/a/a;

    move-result-object v3

    .line 1531
    if-eqz v3, :cond_5

    .line 1532
    invoke-virtual {v3, v1}, Lcom/google/common/a/a/a;->fA(I)I

    move-result v0

    .line 1534
    invoke-static {v0}, Lcom/google/common/collect/Sets;->fs(I)Ljava/util/HashSet;

    move-result-object v4

    .line 1537
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1538
    invoke-virtual {v3, v1, v0}, Lcom/google/common/a/a/a;->ap(II)Lcom/google/common/a/a/a;

    move-result-object v5

    .line 1540
    invoke-virtual {v5, v1}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1542
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1544
    invoke-virtual {v3, v0}, Lcom/google/common/a/a/a;->fz(I)V

    .line 1537
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1546
    :cond_0
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1550
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1551
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1553
    new-instance v6, Lcom/google/common/a/a/a;

    sget-object v7, Lcom/google/android/gm/provider/a/a;->bnZ:Lcom/google/common/a/a/b;

    invoke-direct {v6, v7}, Lcom/google/common/a/a/a;-><init>(Lcom/google/common/a/a/b;)V

    .line 1554
    invoke-virtual {v6, v1, v0}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 1556
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "label:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 1557
    const/4 v0, 0x3

    invoke-static {}, Lcom/google/android/gm/c/f;->IC()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Lcom/google/common/a/a/a;->setInt(II)V

    goto :goto_2

    .line 1563
    :cond_3
    invoke-virtual {v3, v9, p2}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 1566
    :try_start_0
    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/ae;->c(Lcom/google/common/a/a/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    :goto_3
    const-string v3, "bx_pie"

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 1575
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/ae;->k(Ljava/util/Map;)V

    .line 1579
    :goto_5
    return-void

    .line 1568
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    const-string v3, "Error writing tab config protobuf. Requires server sync"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :cond_4
    move v0, v2

    .line 1572
    goto :goto_4

    .line 1577
    :cond_5
    sget-object v0, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    const-string v1, "User changed section config, but we have no existing protobuf"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_5
.end method

.method public final a([Lcom/google/android/gm/provider/af;[Lcom/google/android/gm/provider/af;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 303
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/ae;->bhD:Ljava/util/Map;

    .line 304
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 305
    if-eqz v3, :cond_0

    .line 306
    iget-object v4, p0, Lcom/google/android/gm/provider/ae;->bhD:Ljava/util/Map;

    iget-wide v6, v3, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    array-length v2, p2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, p2, v0

    .line 310
    if-eqz v3, :cond_2

    .line 311
    iget-object v4, p0, Lcom/google/android/gm/provider/ae;->bhD:Ljava/util/Map;

    iget-wide v6, v3, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 314
    :cond_3
    return-void
.end method

.method public final an(J)V
    .locals 1

    .prologue
    .line 291
    iput-wide p1, p0, Lcom/google/android/gm/provider/ae;->bhB:J

    .line 292
    return-void
.end method

.method public final ap(J)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 607
    new-array v2, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 608
    iget-object v3, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "conversation_labels"

    const-string v5, "conversation_id = ? AND queryId = 0"

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 610
    iget-object v3, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "conversations"

    const-string v5, "_id = ? AND queryId = 0"

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 612
    iget-object v3, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "message_labels"

    const-string v5, "message_conversation = ?"

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 614
    iget-object v3, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "messages"

    const-string v5, "conversation = ? AND queryId = 0"

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 615
    sget-object v4, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    const-string v5, "Purged %d messages in conversation %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 618
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 619
    const-string v5, "status"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    iget-object v5, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "attachments"

    const-string v7, "messages_conversation = ?"

    invoke-virtual {v5, v6, v4, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 622
    if-eqz v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized aq(J)Lcom/google/android/gm/provider/af;
    .locals 3

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhK:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/af;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ar(J)Lcom/google/android/gm/provider/af;
    .locals 5

    .prologue
    .line 683
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/ae;->aq(J)Lcom/google/android/gm/provider/af;

    move-result-object v0

    .line 684
    if-nez v0, :cond_2

    .line 685
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 687
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gm/provider/ae;->bhM:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onLabelsChanged not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "canonicalName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "numConversations"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "numUnreadConversations"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "numUnseenConversations"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "color"

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "visibility"

    const-string v2, "SHOW"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 688
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 689
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ae;->FI()V

    .line 690
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/ae;->aq(J)Lcom/google/android/gm/provider/af;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 692
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 695
    :cond_2
    return-object v0
.end method

.method public final declared-synchronized as(J)Lcom/google/android/gm/provider/af;
    .locals 3

    .prologue
    .line 700
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhK:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/af;

    .line 701
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown label id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 702
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public final at(J)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1019
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1020
    const-string v1, "numUnseenConversations"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1021
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1023
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1024
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1025
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ae;->FI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1028
    return-void

    .line 1027
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final av(J)J
    .locals 9

    .prologue
    .line 1968
    const-string v0, "^^failed"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/ae;->eF(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    iget-wide v2, v0, Lcom/google/android/gm/provider/af;->id:J

    .line 1969
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/ae;->ao(J)J

    move-result-wide v6

    .line 1971
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    move-object v1, p0

    move-wide v4, p1

    .line 1973
    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gm/provider/ae;->b(JJJ)V

    .line 1975
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1977
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1979
    return-wide v6

    .line 1977
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 1322
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "server_preferences"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    sget-object v0, Lcom/google/android/gm/c/b;->bqQ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sx_rt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/google/android/gm/c/g;->ag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhE:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    if-eqz p3, :cond_1

    .line 1325
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhA:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/Operations;->ab(Ljava/lang/String;Ljava/lang/String;)J

    .line 1327
    :cond_1
    return-void

    .line 1322
    :cond_2
    const-string v0, "sx_dn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/google/android/gm/c/g;->ah(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "bx_pie"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gm/provider/ae;->Fu()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/provider/ae;->bhG:Lcom/google/android/gm/provider/ag;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Set;Lcom/google/android/gm/provider/ag;)V

    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->mContext:Landroid/content/Context;

    const-string v1, "application/gmail-ls"

    invoke-static {v0, v1}, Lcom/android/mail/widget/b;->v(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bV(Z)V
    .locals 3

    .prologue
    .line 1709
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1710
    const-string v1, "bx_eid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/ae;->a(Ljava/util/Map;Z)V

    .line 1712
    return-void
.end method

.method public final c(Lcom/google/android/gm/provider/af;)V
    .locals 4

    .prologue
    .line 989
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 991
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 994
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "message_labels"

    const-string v3, "labels_id = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 995
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const-string v3, "_id = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 996
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "conversation_labels"

    const-string v3, "labels_id = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 997
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhA:Lcom/google/android/gm/provider/Operations;

    iget-wide v2, p1, Lcom/google/android/gm/provider/af;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/Operations;->aR(J)V

    .line 998
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/bc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1125
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1129
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1130
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1131
    sget-object v4, Lcom/google/android/gm/c/f;->bqZ:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    sget-object v4, Lcom/google/android/gm/c/f;->bra:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/bc;

    iget-object v1, v1, Lcom/google/android/gm/provider/bc;->bld:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    sget-object v4, Lcom/google/android/gm/c/f;->bqY:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/bc;

    iget-object v1, v1, Lcom/google/android/gm/provider/bc;->ble:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const-string v4, "_id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1136
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "custom_label_color_prefs"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/bc;

    invoke-static {p1, v1, v0}, Lcom/google/android/gm/c/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/bc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1146
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1144
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1146
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1147
    return-void
.end method

.method final e(Landroid/content/ContentValues;)I
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1039
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1040
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    const-string v1, "Attempting to update recent labels with empty or null map: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v3, v2

    .line 1099
    :goto_0
    return v3

    .line 1052
    :cond_1
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    .line 1060
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "UPDATE labels SET "

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1061
    const-string v0, "lastTouched"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    const-string v0, " = (CASE "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    const-string v0, "canonicalName"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1067
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1068
    const-string v8, " WHEN ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    add-int/lit8 v8, v1, 0x1

    aput-object v0, v6, v1

    .line 1070
    const-string v1, " THEN ?"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    add-int/lit8 v1, v8, 0x1

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    goto :goto_1

    .line 1073
    :cond_2
    const-string v0, " END)"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    const-string v0, " WHERE "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    const-string v0, "canonicalName"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    const-string v0, " IN ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v1

    move v1, v3

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1080
    if-eqz v1, :cond_3

    move v1, v2

    .line 1085
    :goto_3
    const-string v5, "?"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    add-int/lit8 v5, v4, 0x1

    aput-object v0, v6, v4

    move v4, v5

    .line 1087
    goto :goto_2

    .line 1083
    :cond_3
    const-string v5, ", "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1088
    :cond_4
    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1093
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1097
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final declared-synchronized eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;
    .locals 1

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhL:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/af;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized eF(Ljava/lang/String;)Lcom/google/android/gm/provider/af;
    .locals 3

    .prologue
    .line 648
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhL:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/af;

    .line 649
    if-nez v0, :cond_0

    .line 650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find label with canonical name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 653
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public final eG(Ljava/lang/String;)Lcom/google/android/gm/provider/af;
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 662
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    .line 663
    if-nez v0, :cond_5

    .line 664
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 666
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gm/provider/ae;->bhM:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onLabelsChanged not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "canonicalName"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "name"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "numConversations"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "numUnreadConversations"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "numUnseenConversations"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "color"

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "visibility"

    const-string v2, "SHOW"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/gm/provider/ae;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-static {p1}, Lcom/google/android/gm/provider/ae;->eN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/google/android/gm/provider/ae;->bhN:J

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/google/android/gm/provider/ae;->bhN:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    const-string v2, "_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to insert row for label: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdO:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdN:Lcom/google/common/collect/k;

    invoke-interface {v0}, Lcom/google/common/collect/k;->YQ()Lcom/google/common/collect/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gm/provider/ae;->bhM:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gm/provider/ae;->bhM:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 667
    :cond_4
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 668
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ae;->FI()V

    .line 669
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 671
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 674
    :cond_5
    return-object v0
.end method

.method public final eH(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/google/android/gm/provider/ae;->bhS:Ljava/lang/String;

    .line 1213
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1214
    const-string v1, "domainTitle"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1217
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "dasher_info"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1218
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "dasher_info"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1219
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1221
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1222
    return-void

    .line 1221
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final eI(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1336
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "server_preferences"

    const-string v2, "name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1342
    :goto_0
    return-void

    .line 1340
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to delete a pref that is not present: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final eJ(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1591
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/ae;->n(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final eL(Ljava/lang/String;)J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 1626
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/ae;->eM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1628
    if-nez v2, :cond_0

    .line 1637
    :goto_0
    return-wide v0

    .line 1633
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 1634
    :catch_0
    move-exception v3

    .line 1635
    sget-object v4, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    const-string v5, "Value %s for key %s cannot be parsed as a long"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object p1, v6, v2

    invoke-static {v4, v3, v5, v6}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final eM(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1643
    sget-object v1, Lcom/google/android/gm/provider/ae;->TAG:Ljava/lang/String;

    const-string v2, "userpref %s is %s for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1644
    return-object v0
.end method

.method public final g(JJ)V
    .locals 7

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1107
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1110
    iget-object v2, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UPDATE labels SET lastMessageTimestamp = ? WHERE _id = ? AND lastMessageTimestamp < ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    return-void
.end method

.method public final k(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/ae;->a(Ljava/util/Map;Z)V

    .line 1271
    return-void
.end method

.method final l(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1310
    return-void
.end method

.method public final m(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 1376
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ae;->Fu()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1379
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1382
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1383
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1384
    const-string v5, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const-string v1, "value"

    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1386
    const-string v5, "blobValue"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1387
    const-string v5, "_id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "server_preferences"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v1, v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1392
    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bhF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1396
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1394
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1396
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1399
    const-string v0, "sx_piac"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1400
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ae;->Fs()V

    .line 1401
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->bhG:Lcom/google/android/gm/provider/ag;

    invoke-interface {v0}, Lcom/google/android/gm/provider/ag;->FK()V

    .line 1403
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ae;->Fu()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1404
    invoke-static {v0}, Lcom/google/common/collect/Sets;->g(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    .line 1405
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1408
    iget-object v3, p0, Lcom/google/android/gm/provider/ae;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gm/provider/Gmail;->P(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v3

    .line 1409
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1410
    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$Settings;->EB()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1411
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1412
    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$Settings;->EA()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1414
    const-string v6, "^sq_ig_i_personal"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1415
    invoke-interface {v5, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1421
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/google/common/collect/Sets;->g(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    .line 1422
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1423
    invoke-interface {v4, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1424
    invoke-interface {v5, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1426
    invoke-virtual {v3, v4}, Lcom/google/android/gm/provider/Gmail$Settings;->z(Ljava/util/Collection;)V

    .line 1427
    invoke-virtual {v3, v5}, Lcom/google/android/gm/provider/Gmail$Settings;->y(Ljava/util/Collection;)V

    .line 1429
    iget-object v0, p0, Lcom/google/android/gm/provider/ae;->Tw:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/provider/ae;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/google/android/gm/provider/Gmail;->a(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;Landroid/content/ContentResolver;)V

    .line 1431
    :cond_2
    return-void

    .line 1416
    :cond_3
    const-string v6, "^sq_ig_i_personal"

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1417
    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method
