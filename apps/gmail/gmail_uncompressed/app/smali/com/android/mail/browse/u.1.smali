.class public final Lcom/android/mail/browse/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/Cursor;
.implements Lcom/android/mail/browse/J;
.implements Lcom/android/mail/utils/m;


# static fields
.field private static alS:I

.field static alT:Lcom/android/mail/browse/A;


# instance fields
.field private final Hb:Landroid/content/ContentResolver;

.field private Mg:Z

.field alU:Lcom/android/mail/browse/F;

.field private volatile alV:Lcom/android/mail/browse/F;

.field private final alW:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final alX:Ljava/lang/Object;

.field private final alY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/browse/y;",
            ">;"
        }
    .end annotation
.end field

.field private alZ:Lcom/android/mail/browse/E;

.field private ama:Z

.field private amb:Z

.field private amc:Z

.field private final amd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private final ame:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private amf:[Ljava/lang/String;

.field private amg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final amh:Lcom/android/mail/browse/D;

.field private ami:Z

.field private amj:Z

.field private amk:I

.field private aml:Landroid/net/Uri;

.field private amm:[Ljava/lang/String;

.field private final amn:Landroid/os/Handler;

.field private final amo:Z

.field private final mName:Ljava/lang/String;

.field private vk:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput v0, Lcom/android/mail/browse/u;->alS:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;ZLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/mail/browse/u;->alW:Ljava/util/HashMap;

    .line 120
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/mail/browse/u;->alX:Ljava/lang/Object;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/mail/browse/u;->alY:Ljava/util/List;

    .line 129
    iput-boolean v0, p0, Lcom/android/mail/browse/u;->ama:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/mail/browse/u;->amb:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/mail/browse/u;->amc:Z

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/mail/browse/u;->amd:Ljava/util/List;

    .line 138
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/mail/browse/u;->ame:Ljava/util/Set;

    .line 148
    iput-boolean v0, p0, Lcom/android/mail/browse/u;->ami:Z

    .line 150
    iput-boolean v0, p0, Lcom/android/mail/browse/u;->Mg:Z

    .line 152
    iput-boolean v0, p0, Lcom/android/mail/browse/u;->amj:Z

    .line 155
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/mail/browse/u;->vk:I

    .line 160
    iput v0, p0, Lcom/android/mail/browse/u;->amk:I

    .line 166
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mail/browse/u;->amn:Landroid/os/Handler;

    .line 192
    iput-boolean p3, p0, Lcom/android/mail/browse/u;->amc:Z

    .line 193
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/browse/u;->Hb:Landroid/content/ContentResolver;

    .line 194
    iput-object p2, p0, Lcom/android/mail/browse/u;->aml:Landroid/net/Uri;

    .line 195
    iput-object p4, p0, Lcom/android/mail/browse/u;->mName:Ljava/lang/String;

    .line 196
    sget-object v1, Lcom/android/mail/providers/E;->aCx:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mail/browse/u;->amm:[Ljava/lang/String;

    .line 197
    new-instance v1, Lcom/android/mail/browse/D;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/mail/browse/D;-><init>(Lcom/android/mail/browse/u;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/mail/browse/u;->amh:Lcom/android/mail/browse/D;

    .line 200
    invoke-static {p1}, Lcom/android/mail/utils/ag;->aF(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/mail/browse/u;->amo:Z

    .line 201
    return-void
.end method

.method private a(Ljava/util/Collection;ILcom/android/mail/browse/be;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;I",
            "Lcom/android/mail/browse/be;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2318
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 2319
    new-instance v3, Lcom/android/mail/browse/z;

    invoke-direct {v3, p0, p2, v0, p3}, Lcom/android/mail/browse/z;-><init>(Lcom/android/mail/browse/u;ILcom/android/mail/providers/Conversation;Lcom/android/mail/browse/be;)V

    .line 2321
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2323
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/mail/browse/u;->e(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/Collection;Landroid/content/ContentValues;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Landroid/content/ContentValues;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2081
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;ILandroid/content/ContentValues;Lcom/android/mail/browse/be;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/browse/u;->e(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/mail/browse/u;Lcom/android/mail/browse/F;)Lcom/android/mail/browse/F;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/mail/browse/u;->alV:Lcom/android/mail/browse/F;

    return-object p1
.end method

.method private a(Lcom/android/mail/providers/Conversation;ILandroid/content/ContentValues;Lcom/android/mail/browse/be;)Lcom/android/mail/browse/z;
    .locals 6

    .prologue
    .line 2118
    new-instance v0, Lcom/android/mail/browse/z;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/browse/z;-><init>(Lcom/android/mail/browse/u;ILcom/android/mail/providers/Conversation;Landroid/content/ContentValues;Lcom/android/mail/browse/be;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 857
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 861
    if-eqz p1, :cond_0

    .line 862
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 863
    sget-object v1, Lcom/android/mail/browse/A;->amx:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 869
    :goto_0
    return-object v0

    .line 867
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/mail/browse/A;->amx:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/Collection;ILandroid/content/ContentValues;Lcom/android/mail/browse/be;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;I",
            "Landroid/content/ContentValues;",
            "Lcom/android/mail/browse/be;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/browse/z;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2105
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 2106
    const/4 v3, 0x0

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/providers/Conversation;ILandroid/content/ContentValues;Lcom/android/mail/browse/be;)Lcom/android/mail/browse/z;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2108
    :cond_0
    return-object v1
.end method

.method private a(Lcom/android/mail/browse/F;)V
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 665
    iget-object v5, p0, Lcom/android/mail/browse/u;->alX:Ljava/lang/Object;

    monitor-enter v5

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alW:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 670
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 671
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 672
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 673
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 676
    if-eqz v1, :cond_5

    .line 677
    const-string v4, "__updatetime__"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 678
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v8, v10

    const-wide/16 v12, 0x2710

    cmp-long v7, v10, v12

    if-gez v7, :cond_2

    .line 679
    const-string v4, "ConvCursor"

    const-string v7, "IN resetCursor, keep recent changes to %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-static {v4, v7, v10}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v4, v2

    .line 684
    :goto_1
    const-string v7, "__deleted__"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 686
    invoke-virtual {p1, v0}, Lcom/android/mail/browse/F;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 689
    iget v1, p0, Lcom/android/mail/browse/u;->amk:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/mail/browse/u;->amk:I

    .line 691
    const-string v1, "ConvCursor"

    const-string v7, "IN resetCursor, sDeletedCount decremented to: %d by %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/mail/browse/u;->amk:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "ConvCursor"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_4

    :goto_2
    aput-object v0, v10, v11

    invoke-static {v1, v7, v10}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v2

    :goto_3
    move v1, v4

    .line 702
    :goto_4
    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 703
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 681
    :cond_2
    if-nez v4, :cond_3

    .line 682
    :try_start_1
    const-string v4, "ConvCursor"

    const-string v7, "null updateTime from mCacheMap for key: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-static {v4, v7, v10}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    move v4, v3

    goto :goto_1

    .line 691
    :cond_4
    const-string v0, "[redacted]"

    goto :goto_2

    .line 699
    :cond_5
    const-string v1, "ConvCursor"

    const-string v4, "null ContentValues from mCacheMap for key: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v7, v10

    invoke-static {v1, v4, v7}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v3

    move v1, v3

    goto :goto_4

    .line 708
    :cond_6
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    if-eqz v0, :cond_7

    .line 709
    invoke-virtual {p0}, Lcom/android/mail/browse/u;->close()V

    .line 711
    :cond_7
    iput-object p1, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    .line 713
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/browse/u;->vk:I

    .line 714
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    iget v1, p0, Lcom/android/mail/browse/u;->vk:I

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/F;->moveToPosition(I)Z

    .line 715
    iget-boolean v0, p0, Lcom/android/mail/browse/u;->ami:Z

    if-nez v0, :cond_8

    .line 716
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    iget-object v1, p0, Lcom/android/mail/browse/u;->amh:Lcom/android/mail/browse/D;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/F;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/u;->ami:Z

    .line 720
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/u;->amb:Z

    .line 724
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->pt()Z

    move-result v0

    .line 725
    iget-object v1, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v1}, Lcom/android/mail/browse/F;->pu()V

    .line 726
    if-eqz v0, :cond_9

    .line 727
    invoke-direct {p0}, Lcom/android/mail/browse/u;->pa()V

    .line 729
    :cond_9
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_a
    move v0, v3

    goto :goto_3
.end method

.method static synthetic a(Lcom/android/mail/browse/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mail/browse/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 915
    invoke-static {}, Lcom/android/mail/browse/u;->oY()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 916
    const-string v2, "ConvCursor"

    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4}, Ljava/lang/Error;-><init>()V

    const-string v5, "cacheValue incorrectly being called from non-UI thread"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 920
    :cond_0
    iget-object v5, p0, Lcom/android/mail/browse/u;->alX:Ljava/lang/Object;

    monitor-enter v5

    .line 922
    :try_start_0
    iget-object v2, p0, Lcom/android/mail/browse/u;->alW:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 924
    if-nez v2, :cond_5

    .line 925
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 926
    iget-object v4, p0, Lcom/android/mail/browse/u;->alW:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 929
    :goto_0
    const-string v2, "__deleted__"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 930
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 931
    invoke-virtual {v4, p2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 932
    :goto_1
    if-eqz v6, :cond_3

    if-nez v2, :cond_3

    .line 933
    iget v2, p0, Lcom/android/mail/browse/u;->amk:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/mail/browse/u;->amk:I

    .line 955
    :cond_1
    invoke-static {v4, p2, p3}, Lcom/android/mail/browse/u;->b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 956
    const-string v2, "__updatetime__"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 960
    monitor-exit v5

    :goto_2
    return-void

    :cond_2
    move v2, v3

    .line 931
    goto :goto_1

    .line 938
    :cond_3
    if-nez v6, :cond_4

    if-eqz v2, :cond_4

    .line 939
    iget v2, p0, Lcom/android/mail/browse/u;->amk:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/mail/browse/u;->amk:I

    .line 940
    invoke-virtual {v4, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 945
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 960
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    .line 946
    :cond_4
    if-nez v6, :cond_1

    .line 952
    monitor-exit v5

    goto :goto_2

    :cond_5
    move-object v4, v2

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ContentValues;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2124
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2125
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2127
    :cond_0
    const-string v0, "folders_updated"

    const-string v1, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    return-void
.end method

.method public static a(Lcom/android/mail/browse/u;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2490
    if-nez p0, :cond_1

    move v1, v2

    .line 2496
    :cond_0
    :goto_0
    return v1

    .line 2493
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/browse/u;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2494
    if-nez v0, :cond_2

    move v0, v1

    .line 2496
    :goto_1
    invoke-virtual {p0}, Lcom/android/mail/browse/u;->getCount()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 v3, 0x4

    if-eq v3, v0, :cond_0

    const/16 v3, 0x8

    if-eq v3, v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 2494
    :cond_2
    const-string v3, "cursor_status"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method private at(Z)Lcom/android/mail/browse/F;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 631
    iget-object v1, p0, Lcom/android/mail/browse/u;->aml:Landroid/net/Uri;

    .line 632
    if-eqz p1, :cond_0

    .line 633
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "50"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 636
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 638
    const-string v0, "query"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/android/mail/browse/u;->Hb:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mail/browse/u;->amm:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 640
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 641
    if-nez v0, :cond_1

    .line 642
    const-string v2, "ConvCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doQuery returning null cursor, uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 648
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 650
    new-instance v1, Lcom/android/mail/browse/F;

    iget-boolean v2, p0, Lcom/android/mail/browse/u;->amo:Z

    invoke-direct {v1, v0, v2}, Lcom/android/mail/browse/F;-><init>(Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method static synthetic b(Lcom/android/mail/browse/u;)Lcom/android/mail/browse/F;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/browse/u;->at(Z)Lcom/android/mail/browse/F;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1386
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1387
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1393
    :goto_1
    return-void

    .line 1387
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1388
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1389
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1390
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1391
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1392
    :cond_3
    instance-of v0, p2, [B

    if-eqz v0, :cond_4

    .line 1393
    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 1395
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1396
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Value class not compatible with cache: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static b(Ljava/util/Collection;Landroid/content/ContentValues;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2132
    const-string v0, "rawFolders"

    invoke-static {p0}, Lcom/android/mail/providers/FolderList;->p(Ljava/util/Collection;)Lcom/android/mail/providers/FolderList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/FolderList;->uN()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2133
    return-void
.end method

.method private bT(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->ps()Ljava/lang/String;

    move-result-object v0

    .line 970
    invoke-direct {p0, v0, p1}, Lcom/android/mail/browse/u;->d(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/mail/browse/u;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mail/browse/u;->alX:Ljava/lang/Object;

    return-object v0
.end method

.method private d(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/mail/browse/u;->alW:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 975
    if-eqz v0, :cond_1

    .line 977
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 978
    const-string v1, "__deleted__"

    .line 982
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 984
    :goto_1
    return-object v0

    .line 980
    :cond_0
    iget-object v1, p0, Lcom/android/mail/browse/u;->amf:[Ljava/lang/String;

    aget-object v1, v1, p2

    goto :goto_0

    .line 984
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic d(Lcom/android/mail/browse/u;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/mail/browse/u;->Mg:Z

    return v0
.end method

.method private e(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/browse/z;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2164
    sget-object v0, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    invoke-virtual {v0, p1, p0}, Lcom/android/mail/browse/A;->apply(Ljava/util/Collection;Lcom/android/mail/browse/u;)I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/android/mail/browse/u;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/mail/browse/u;->amj:Z

    return v0
.end method

.method static synthetic f(Lcom/android/mail/browse/u;)Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/u;->ama:Z

    return v0
.end method

.method static synthetic g(Lcom/android/mail/browse/u;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mail/browse/u;->pc()V

    return-void
.end method

.method static synthetic h(Lcom/android/mail/browse/u;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mail/browse/u;->pa()V

    return-void
.end method

.method static synthetic i(Lcom/android/mail/browse/u;)V
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/mail/browse/u;->vk:I

    invoke-virtual {p0}, Lcom/android/mail/browse/u;->moveToFirst()Z

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/u;->moveToPosition(I)Z

    return-void
.end method

.method private static j(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 879
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 881
    sget-object v1, Lcom/android/mail/browse/A;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    :goto_0
    return-object p0

    .line 884
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 885
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 886
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 887
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 886
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 889
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic j(Lcom/android/mail/browse/u;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mail/browse/u;->pd()V

    return-void
.end method

.method private static k(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 893
    invoke-static {p0}, Lcom/android/mail/browse/u;->j(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 895
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/android/mail/browse/u;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mail/browse/u;->ame:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic l(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/mail/browse/u;->j(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/android/mail/browse/u;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mail/browse/u;->aml:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic m(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/mail/browse/u;->k(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private oW()V
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/mail/browse/u;->Mg:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/browse/u;->amj:Z

    if-nez v0, :cond_0

    .line 246
    iget-boolean v0, p0, Lcom/android/mail/browse/u;->amb:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/browse/u;->alZ:Lcom/android/mail/browse/E;

    if-nez v0, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/android/mail/browse/u;->pb()V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-boolean v0, p0, Lcom/android/mail/browse/u;->ama:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/android/mail/browse/u;->pc()V

    goto :goto_0
.end method

.method static oY()Z
    .locals 2

    .prologue
    .line 654
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pa()V
    .locals 3

    .prologue
    .line 991
    iget-object v1, p0, Lcom/android/mail/browse/u;->alX:Ljava/lang/Object;

    monitor-enter v1

    .line 992
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mail/browse/u;->ami:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 994
    :try_start_1
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    iget-object v2, p0, Lcom/android/mail/browse/u;->amh:Lcom/android/mail/browse/D;

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/F;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/mail/browse/u;->ami:Z

    .line 1000
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/u;->amb:Z

    .line 1002
    iget-boolean v0, p0, Lcom/android/mail/browse/u;->Mg:Z

    if-nez v0, :cond_1

    .line 1003
    invoke-direct {p0}, Lcom/android/mail/browse/u;->pb()V

    .line 1006
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private pb()V
    .locals 3

    .prologue
    .line 1014
    iget-boolean v0, p0, Lcom/android/mail/browse/u;->amj:Z

    if-nez v0, :cond_1

    .line 1015
    iget-object v1, p0, Lcom/android/mail/browse/u;->alY:Ljava/util/List;

    monitor-enter v1

    .line 1016
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/y;

    .line 1017
    invoke-interface {v0}, Lcom/android/mail/browse/y;->pm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1019
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1021
    :cond_1
    return-void
.end method

.method private pc()V
    .locals 3

    .prologue
    .line 1031
    iget-object v1, p0, Lcom/android/mail/browse/u;->alY:Ljava/util/List;

    monitor-enter v1

    .line 1032
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/y;

    .line 1033
    invoke-interface {v0}, Lcom/android/mail/browse/y;->pn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private pd()V
    .locals 3

    .prologue
    .line 1045
    iget-object v1, p0, Lcom/android/mail/browse/u;->alY:Ljava/util/List;

    monitor-enter v1

    .line 1046
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/y;

    .line 1047
    invoke-interface {v0}, Lcom/android/mail/browse/y;->onDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1051
    invoke-virtual {p0}, Lcom/android/mail/browse/u;->pj()V

    .line 1052
    return-void
.end method

.method static synthetic pk()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/android/mail/browse/u;->alS:I

    return v0
.end method

.method static synthetic pl()I
    .locals 2

    .prologue
    .line 76
    sget v0, Lcom/android/mail/browse/u;->alS:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/mail/browse/u;->alS:I

    return v0
.end method


# virtual methods
.method public final N(J)I
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1, p2}, Lcom/android/mail/browse/F;->P(J)I

    move-result v0

    return v0
.end method

.method public final O(J)I
    .locals 7

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1, p2}, Lcom/android/mail/browse/F;->P(J)I

    move-result v3

    .line 775
    if-gez v3, :cond_0

    move v2, v3

    .line 807
    :goto_0
    return v2

    .line 782
    :cond_0
    iget-object v4, p0, Lcom/android/mail/browse/u;->alX:Ljava/lang/Object;

    monitor-enter v4

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alW:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    .line 786
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 787
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 788
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 789
    const-string v6, "__deleted__"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 792
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 793
    iget-object v1, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/F;->bg(Ljava/lang/String;)I

    move-result v0

    .line 794
    if-ne v0, v3, :cond_1

    .line 796
    const/4 v2, -0x1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 808
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 799
    :cond_1
    if-ltz v0, :cond_3

    if-ge v0, v3, :cond_3

    .line 803
    add-int/lit8 v0, v2, -0x1

    :goto_2
    move v2, v0

    .line 806
    goto :goto_1

    .line 807
    :cond_2
    monitor-exit v4

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public final a(Lcom/android/mail/providers/Conversation;Ljava/lang/String;Z)I
    .locals 2

    .prologue
    .line 2022
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/mail/providers/Conversation;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Collection;Lcom/android/mail/browse/be;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/browse/be;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;ILcom/android/mail/browse/be;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Collection;Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 2030
    const-string v0, "ConvCursor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2031
    const-string v0, "ConvCursor"

    const-string v1, "ConversationCursor.updateInt(conversations=%s, columnName=%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2034
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2035
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2036
    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Collection;Ljava/lang/String;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 2044
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2045
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2046
    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/android/mail/providers/Conversation;Landroid/content/ContentValues;)Lcom/android/mail/browse/z;
    .locals 2

    .prologue
    .line 2113
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/providers/Conversation;ILandroid/content/ContentValues;Lcom/android/mail/browse/be;)Lcom/android/mail/browse/z;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/mail/providers/Conversation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Collection;Lcom/android/mail/browse/be;)Lcom/android/mail/browse/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/providers/Conversation;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;",
            "Lcom/android/mail/browse/be;",
            ")",
            "Lcom/android/mail/browse/z;"
        }
    .end annotation

    .prologue
    .line 2149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2, p3, v0}, Lcom/android/mail/browse/u;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ContentValues;)V

    invoke-static {p4, v0}, Lcom/android/mail/browse/u;->b(Ljava/util/Collection;Landroid/content/ContentValues;)V

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0, p5}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/providers/Conversation;ILandroid/content/ContentValues;Lcom/android/mail/browse/be;)Lcom/android/mail/browse/z;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 2172
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mail/browse/v;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mail/browse/v;-><init>(Lcom/android/mail/browse/u;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2182
    sget-object v0, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    invoke-virtual {v0, p0}, Lcom/android/mail/browse/A;->m(Lcom/android/mail/browse/u;)V

    .line 2183
    return-void
.end method

.method public final a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 899
    invoke-static {p1}, Lcom/android/mail/browse/u;->k(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 900
    iget-object v1, p0, Lcom/android/mail/browse/u;->alX:Ljava/lang/Object;

    monitor-enter v1

    .line 901
    :try_start_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/mail/browse/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 902
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    invoke-direct {p0}, Lcom/android/mail/browse/u;->pd()V

    .line 904
    return-void

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/android/mail/browse/y;)V
    .locals 5

    .prologue
    .line 816
    iget-object v1, p0, Lcom/android/mail/browse/u;->alY:Ljava/util/List;

    monitor-enter v1

    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 818
    iget-object v2, p0, Lcom/android/mail/browse/u;->alY:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 819
    iget-object v2, p0, Lcom/android/mail/browse/u;->alY:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/browse/u;->amb:Z

    if-eqz v0, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/android/mail/browse/u;->pb()V

    .line 830
    :cond_0
    return-void

    .line 821
    :cond_1
    :try_start_1
    const-string v2, "ConvCursor"

    const-string v3, "Ignoring duplicate add of listener"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final a(Lcom/android/mail/providers/Conversation;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1670
    iget v0, p1, Lcom/android/mail/providers/Conversation;->aze:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lcom/android/mail/providers/Conversation;->aze:I

    .line 1671
    iget-object v0, p0, Lcom/android/mail/browse/u;->amd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1672
    const-string v0, "ConvCursor"

    const-string v1, "[All dead: %s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1673
    iget-object v0, p0, Lcom/android/mail/browse/u;->amd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1674
    iput-boolean v4, p0, Lcom/android/mail/browse/u;->amj:Z

    .line 1675
    invoke-direct {p0}, Lcom/android/mail/browse/u;->oW()V

    .line 1677
    :cond_0
    return-void
.end method

.method public final a(Lcom/android/mail/utils/l;I)V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1, p2}, Lcom/android/mail/browse/F;->a(Lcom/android/mail/utils/l;I)V

    .line 846
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;Lcom/android/mail/providers/Conversation;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1661
    const-string v0, "ConvCursor"

    const-string v1, "[Mostly dead, deferring: %s] "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1662
    const-string v0, "conversationFlags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mail/browse/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1664
    iget v0, p2, Lcom/android/mail/providers/Conversation;->aze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/android/mail/providers/Conversation;->aze:I

    .line 1665
    iget-object v0, p0, Lcom/android/mail/browse/u;->amd:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1666
    iput-boolean v4, p0, Lcom/android/mail/browse/u;->amj:Z

    .line 1667
    return-void
.end method

.method public final b(Ljava/util/Collection;Lcom/android/mail/browse/be;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/browse/be;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2205
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;ILcom/android/mail/browse/be;)I

    move-result v0

    return v0
.end method

.method public final b(Lcom/android/mail/browse/y;)V
    .locals 2

    .prologue
    .line 836
    iget-object v1, p0, Lcom/android/mail/browse/u;->alY:Ljava/util/List;

    monitor-enter v1

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 838
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final bU(I)[B
    .locals 1

    .prologue
    .line 1326
    invoke-direct {p0, p1}, Lcom/android/mail/browse/u;->bT(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method final bf(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1680
    const-string v0, "ConvCursor"

    const-string v3, "[Clearing mostly dead %s] "

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1681
    iget-object v0, p0, Lcom/android/mail/browse/u;->amd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1682
    iput-boolean v2, p0, Lcom/android/mail/browse/u;->amj:Z

    .line 1683
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/u;->d(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 1685
    if-eqz v0, :cond_0

    .line 1686
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1687
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 1688
    const-string v2, "conversationFlags"

    and-int/lit8 v0, v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lcom/android/mail/browse/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 1693
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public final c(Ljava/util/Collection;Landroid/content/ContentValues;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Landroid/content/ContentValues;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2298
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;ILandroid/content/ContentValues;Lcom/android/mail/browse/be;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/browse/u;->e(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public final c(Ljava/util/Collection;Lcom/android/mail/browse/be;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/browse/be;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2216
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;ILcom/android/mail/browse/be;)I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1121
    iget-boolean v0, p0, Lcom/android/mail/browse/u;->ami:Z

    if-eqz v0, :cond_0

    .line 1123
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    iget-object v1, p0, Lcom/android/mail/browse/u;->amh:Lcom/android/mail/browse/D;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/F;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/u;->ami:Z

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->close()V

    .line 1131
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1

    .prologue
    .line 1938
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final d(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/browse/z;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2098
    invoke-direct {p0, p1}, Lcom/android/mail/browse/u;->e(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public final d(Ljava/util/Collection;Lcom/android/mail/browse/be;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/browse/be;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2227
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;ILcom/android/mail/browse/be;)I

    move-result v0

    return v0
.end method

.method public final deactivate()V
    .locals 1

    .prologue
    .line 1953
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final disable()V
    .locals 1

    .prologue
    .line 1111
    invoke-virtual {p0}, Lcom/android/mail/browse/u;->close()V

    .line 1112
    iget-object v0, p0, Lcom/android/mail/browse/u;->alW:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1113
    iget-object v0, p0, Lcom/android/mail/browse/u;->alY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    .line 1115
    return-void
.end method

.method public final e(Ljava/util/Collection;Lcom/android/mail/browse/be;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/browse/be;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2238
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;ILcom/android/mail/browse/be;)I

    move-result v0

    return v0
.end method

.method public final f(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2190
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;ILcom/android/mail/browse/be;)I

    move-result v0

    return v0
.end method

.method public final f(Ljava/util/Collection;Lcom/android/mail/browse/be;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/browse/be;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2249
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;ILcom/android/mail/browse/be;)I

    move-result v0

    return v0
.end method

.method public final g(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2256
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;ILcom/android/mail/browse/be;)I

    move-result v0

    return v0
.end method

.method public final getBlob(I)[B
    .locals 1

    .prologue
    .line 1320
    invoke-direct {p0, p1}, Lcom/android/mail/browse/u;->bT(I)Ljava/lang/Object;

    move-result-object v0

    .line 1321
    if-eqz v0, :cond_0

    check-cast v0, [B

    check-cast v0, [B

    .line 1322
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/F;->getBlob(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final getColumnCount()I
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public final getColumnIndex(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/F;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/F;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getColumnName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/F;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 3

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    if-nez v0, :cond_0

    .line 1184
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCount() on disabled cursor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mail/browse/u;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/u;->aml:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/mail/browse/u;->amk:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getDouble(I)D
    .locals 2

    .prologue
    .line 1273
    invoke-direct {p0, p1}, Lcom/android/mail/browse/u;->bT(I)Ljava/lang/Object;

    move-result-object v0

    .line 1274
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1275
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/F;->getDouble(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public final getFloat(I)F
    .locals 1

    .prologue
    .line 1280
    invoke-direct {p0, p1}, Lcom/android/mail/browse/u;->bT(I)Ljava/lang/Object;

    move-result-object v0

    .line 1281
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1282
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/F;->getFloat(I)F

    move-result v0

    goto :goto_0
.end method

.method public final getInt(I)I
    .locals 1

    .prologue
    .line 1287
    invoke-direct {p0, p1}, Lcom/android/mail/browse/u;->bT(I)Ljava/lang/Object;

    move-result-object v0

    .line 1288
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1289
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/F;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public final getLong(I)J
    .locals 2

    .prologue
    .line 1294
    invoke-direct {p0, p1}, Lcom/android/mail/browse/u;->bT(I)Ljava/lang/Object;

    move-result-object v0

    .line 1295
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1296
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/F;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getNotificationUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    if-nez v0, :cond_0

    .line 1985
    const/4 v0, 0x0

    .line 1987
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->getNotificationUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 1175
    iget v0, p0, Lcom/android/mail/browse/u;->vk:I

    return v0
.end method

.method public final getShort(I)S
    .locals 1

    .prologue
    .line 1301
    invoke-direct {p0, p1}, Lcom/android/mail/browse/u;->bT(I)Ljava/lang/Object;

    move-result-object v0

    .line 1302
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 1303
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/F;->getShort(I)S

    move-result v0

    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1310
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->ps()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mail/browse/u;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1315
    :goto_0
    return-object v0

    .line 1313
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mail/browse/u;->bT(I)Ljava/lang/Object;

    move-result-object v0

    .line 1314
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1315
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/F;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getType(I)I
    .locals 1

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/F;->getType(I)I

    move-result v0

    return v0
.end method

.method public final getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 1998
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final h(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2268
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;ILcom/android/mail/browse/be;)I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 2339
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2275
    const/16 v0, 0x83

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;ILcom/android/mail/browse/be;)I

    move-result v0

    return v0
.end method

.method public final isAfterLast()Z
    .locals 1

    .prologue
    .line 1908
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final isBeforeFirst()Z
    .locals 1

    .prologue
    .line 1903
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFirst()Z
    .locals 1

    .prologue
    .line 1893
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final isLast()Z
    .locals 1

    .prologue
    .line 1898
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final isNull(I)Z
    .locals 1

    .prologue
    .line 1948
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final j(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2286
    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;ILcom/android/mail/browse/be;)I

    move-result v0

    return v0
.end method

.method public final kc()V
    .locals 2

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/mail/browse/J;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/mail/browse/J;

    invoke-interface {v0}, Lcom/android/mail/browse/J;->kc()V

    .line 2475
    :cond_0
    return-void

    .line 2474
    :cond_1
    instance-of v1, v0, Landroid/database/CursorWrapper;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/database/CursorWrapper;

    invoke-virtual {v0}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public final kd()V
    .locals 2

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/mail/browse/J;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/mail/browse/J;

    invoke-interface {v0}, Lcom/android/mail/browse/J;->kd()V

    .line 2480
    :cond_0
    return-void

    .line 2479
    :cond_1
    instance-of v1, v0, Landroid/database/CursorWrapper;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/database/CursorWrapper;

    invoke-virtual {v0}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public final move(I)Z
    .locals 2

    .prologue
    .line 1264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "move unsupported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final moveToFirst()Z
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1192
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    if-nez v0, :cond_0

    .line 1193
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveToFirst() on disabled cursor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mail/browse/u;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/u;->aml:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/F;->moveToPosition(I)Z

    .line 1197
    iput v1, p0, Lcom/android/mail/browse/u;->vk:I

    .line 1198
    invoke-virtual {p0}, Lcom/android/mail/browse/u;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 2

    .prologue
    .line 1259
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "moveToLast unsupported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final moveToNext()Z
    .locals 1

    .prologue
    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->moveToNext()Z

    move-result v0

    .line 1140
    if-nez v0, :cond_1

    .line 1141
    invoke-virtual {p0}, Lcom/android/mail/browse/u;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/u;->vk:I

    .line 1147
    const/4 v0, 0x0

    .line 1151
    :goto_0
    return v0

    .line 1149
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/mail/browse/u;->bT(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1150
    iget v0, p0, Lcom/android/mail/browse/u;->vk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mail/browse/u;->vk:I

    .line 1151
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final moveToPosition(I)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1203
    :goto_0
    iget-object v2, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    if-nez v2, :cond_0

    .line 1204
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveToPosition() on disabled cursor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mail/browse/u;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/u;->aml:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1211
    :cond_0
    iget-object v2, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v2}, Lcom/android/mail/browse/F;->getPosition()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 1212
    const-string v2, "ConvCursor"

    const-string v3, "*** Underlying cursor position is -1 asking to move from %d to %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/mail/browse/u;->vk:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1215
    :cond_1
    if-nez p1, :cond_3

    .line 1216
    invoke-virtual {p0}, Lcom/android/mail/browse/u;->moveToFirst()Z

    move-result v0

    .line 1244
    :cond_2
    :goto_1
    return v0

    .line 1217
    :cond_3
    if-gez p1, :cond_4

    .line 1218
    iput v6, p0, Lcom/android/mail/browse/u;->vk:I

    .line 1219
    iget-object v1, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    iget v2, p0, Lcom/android/mail/browse/u;->vk:I

    invoke-virtual {v1, v2}, Lcom/android/mail/browse/F;->moveToPosition(I)Z

    goto :goto_1

    .line 1221
    :cond_4
    iget v2, p0, Lcom/android/mail/browse/u;->vk:I

    if-ne p1, v2, :cond_5

    .line 1223
    invoke-virtual {p0}, Lcom/android/mail/browse/u;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    move v0, v1

    goto :goto_1

    .line 1224
    :cond_5
    iget v2, p0, Lcom/android/mail/browse/u;->vk:I

    if-le p1, v2, :cond_8

    .line 1225
    :cond_6
    iget v2, p0, Lcom/android/mail/browse/u;->vk:I

    if-le p1, v2, :cond_7

    .line 1226
    invoke-virtual {p0}, Lcom/android/mail/browse/u;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_7
    move v0, v1

    .line 1230
    goto :goto_1

    .line 1231
    :cond_8
    if-ltz p1, :cond_9

    iget v2, p0, Lcom/android/mail/browse/u;->vk:I

    sub-int/2addr v2, p1

    if-le v2, p1, :cond_9

    .line 1236
    invoke-virtual {p0}, Lcom/android/mail/browse/u;->moveToFirst()Z

    goto/16 :goto_0

    .line 1239
    :cond_9
    iget v2, p0, Lcom/android/mail/browse/u;->vk:I

    if-ge p1, v2, :cond_a

    .line 1240
    invoke-virtual {p0}, Lcom/android/mail/browse/u;->moveToPrevious()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_a
    move v0, v1

    .line 1244
    goto :goto_1
.end method

.method public final moveToPrevious()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->moveToPrevious()Z

    move-result v0

    .line 1162
    if-nez v0, :cond_1

    .line 1164
    iput v1, p0, Lcom/android/mail/browse/u;->vk:I

    .line 1165
    const/4 v0, 0x0

    .line 1169
    :goto_0
    return v0

    .line 1167
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/mail/browse/u;->bT(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1168
    iget v0, p0, Lcom/android/mail/browse/u;->vk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mail/browse/u;->vk:I

    .line 1169
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final oV()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/android/mail/browse/u;->alX:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    const-string v2, "ConvCursor"

    const-string v3, "Create: initial creation"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    iget-boolean v2, p0, Lcom/android/mail/browse/u;->amc:Z

    invoke-direct {p0, v2}, Lcom/android/mail/browse/u;->at(Z)Lcom/android/mail/browse/F;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/browse/u;->close()V

    :cond_0
    invoke-virtual {v2}, Lcom/android/mail/browse/F;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/browse/u;->amf:[Ljava/lang/String;

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->Zx()Lcom/google/common/collect/z;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/browse/u;->amf:[Ljava/lang/String;

    array-length v5, v4

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    invoke-virtual {v3, v6}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/google/common/collect/z;->Zy()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/u;->amg:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/u;->amb:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/u;->ama:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/u;->alZ:Lcom/android/mail/browse/E;

    invoke-direct {p0, v2}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/browse/F;)V

    iget-object v0, p0, Lcom/android/mail/browse/u;->amn:Landroid/os/Handler;

    new-instance v2, Lcom/android/mail/browse/w;

    invoke-direct {v2, p0}, Lcom/android/mail/browse/w;-><init>(Lcom/android/mail/browse/u;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/mail/browse/u;->pj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :try_start_1
    iget-boolean v0, p0, Lcom/android/mail/browse/u;->amc:Z

    if-eqz v0, :cond_2

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/u;->amc:Z

    .line 220
    invoke-direct {p0}, Lcom/android/mail/browse/u;->pa()V

    .line 223
    :cond_2
    monitor-exit v1

    return-void

    .line 214
    :catchall_0
    move-exception v0

    iget-boolean v2, p0, Lcom/android/mail/browse/u;->amc:Z

    if-eqz v2, :cond_3

    .line 215
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mail/browse/u;->amc:Z

    .line 220
    invoke-direct {p0}, Lcom/android/mail/browse/u;->pa()V

    :cond_3
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final oX()Ljava/util/Set;
    .locals 1
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
    .line 255
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->pr()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final oZ()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 739
    iget-object v2, p0, Lcom/android/mail/browse/u;->alX:Ljava/lang/Object;

    monitor-enter v2

    .line 741
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 742
    iget-object v0, p0, Lcom/android/mail/browse/u;->alW:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 744
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 747
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 748
    const-string v6, "__deleted__"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/mail/browse/u;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 754
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public final pause()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/u;->Mg:Z

    .line 232
    return-void
.end method

.method public final pe()Z
    .locals 1

    .prologue
    .line 1079
    iget-boolean v0, p0, Lcom/android/mail/browse/u;->amb:Z

    return v0
.end method

.method public final pf()Z
    .locals 1

    .prologue
    .line 1083
    iget-boolean v0, p0, Lcom/android/mail/browse/u;->ama:Z

    return v0
.end method

.method public final pg()Lcom/android/mail/providers/Conversation;
    .locals 2

    .prologue
    .line 1330
    invoke-virtual {p0}, Lcom/android/mail/browse/u;->ph()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 1331
    if-nez v0, :cond_0

    .line 1333
    new-instance v0, Lcom/android/mail/providers/Conversation;

    invoke-direct {v0, p0}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    .line 1334
    iget-object v1, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/F;->b(Lcom/android/mail/providers/Conversation;)V

    .line 1337
    :cond_0
    return-object v0
.end method

.method public final ph()Lcom/android/mail/providers/Conversation;
    .locals 6

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v2

    .line 1349
    if-nez v2, :cond_0

    .line 1350
    const/4 v0, 0x0

    .line 1372
    :goto_0
    return-object v0

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alW:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v1}, Lcom/android/mail/browse/F;->ps()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1356
    if-eqz v0, :cond_3

    .line 1357
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1358
    invoke-virtual {v0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1359
    iget-object v5, p0, Lcom/android/mail/browse/u;->amg:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1360
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v1, v5}, Lcom/android/mail/browse/u;->b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1364
    :cond_2
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1368
    new-instance v0, Lcom/android/mail/providers/Conversation;

    invoke-direct {v0, v2}, Lcom/android/mail/providers/Conversation;-><init>(Lcom/android/mail/providers/Conversation;)V

    .line 1369
    invoke-virtual {v0, v3}, Lcom/android/mail/providers/Conversation;->d(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public final pi()V
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-static {v0}, Lcom/android/mail/browse/F;->g(Lcom/android/mail/browse/F;)V

    .line 1380
    return-void
.end method

.method public final pj()V
    .locals 2

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/android/mail/browse/u;->amn:Landroid/os/Handler;

    new-instance v1, Lcom/android/mail/browse/x;

    invoke-direct {v1, p0}, Lcom/android/mail/browse/x;-><init>(Lcom/android/mail/browse/u;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2470
    return-void
.end method

.method public final refresh()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1093
    iget-object v1, p0, Lcom/android/mail/browse/u;->alX:Ljava/lang/Object;

    monitor-enter v1

    .line 1094
    :try_start_0
    iget-object v2, p0, Lcom/android/mail/browse/u;->alZ:Lcom/android/mail/browse/E;

    if-eqz v2, :cond_0

    .line 1099
    monitor-exit v1

    .line 1107
    :goto_0
    return v0

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    if-eqz v0, :cond_1

    .line 1102
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->pq()V

    .line 1104
    :cond_1
    new-instance v0, Lcom/android/mail/browse/E;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/mail/browse/E;-><init>(Lcom/android/mail/browse/u;B)V

    iput-object v0, p0, Lcom/android/mail/browse/u;->alZ:Lcom/android/mail/browse/E;

    .line 1105
    iget-object v0, p0, Lcom/android/mail/browse/u;->alZ:Lcom/android/mail/browse/E;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/browse/E;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1106
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    const/4 v0, 0x1

    goto :goto_0

    .line 1106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    .prologue
    .line 1965
    return-void
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 1975
    return-void
.end method

.method public final requery()Z
    .locals 1

    .prologue
    .line 2016
    const/4 v0, 0x1

    return v0
.end method

.method public final respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    if-eqz v0, :cond_0

    .line 2009
    iget-object v0, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/F;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2011
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public final resume()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/u;->Mg:Z

    .line 240
    invoke-direct {p0}, Lcom/android/mail/browse/u;->oW()V

    .line 241
    return-void
.end method

.method public final setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 1993
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final sync()V
    .locals 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/mail/browse/u;->alV:Lcom/android/mail/browse/F;

    if-nez v0, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1066
    :cond_0
    iget-object v1, p0, Lcom/android/mail/browse/u;->alX:Ljava/lang/Object;

    monitor-enter v1

    .line 1070
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/mail/browse/u;->alZ:Lcom/android/mail/browse/E;

    .line 1071
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/u;->ama:Z

    .line 1072
    iget-object v0, p0, Lcom/android/mail/browse/u;->alV:Lcom/android/mail/browse/F;

    invoke-direct {p0, v0}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/browse/F;)V

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/u;->alV:Lcom/android/mail/browse/F;

    .line 1074
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    invoke-direct {p0}, Lcom/android/mail/browse/u;->pd()V

    goto :goto_0

    .line 1074
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2345
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2346
    const-string v1, " mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    iget-object v1, p0, Lcom/android/mail/browse/u;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2348
    const-string v1, " mDeferSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2349
    iget-boolean v1, p0, Lcom/android/mail/browse/u;->amj:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2350
    const-string v1, " mRefreshRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2351
    iget-boolean v1, p0, Lcom/android/mail/browse/u;->amb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2352
    const-string v1, " mRefreshReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2353
    iget-boolean v1, p0, Lcom/android/mail/browse/u;->ama:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2354
    const-string v1, " mRefreshTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2355
    iget-object v1, p0, Lcom/android/mail/browse/u;->alZ:Lcom/android/mail/browse/E;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2356
    const-string v1, " mPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2357
    iget-boolean v1, p0, Lcom/android/mail/browse/u;->Mg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2358
    const-string v1, " mDeletedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2359
    iget v1, p0, Lcom/android/mail/browse/u;->amk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2360
    const-string v1, " mUnderlying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2361
    iget-object v1, p0, Lcom/android/mail/browse/u;->alU:Lcom/android/mail/browse/F;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2362
    const-string v1, "ConvCursor"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2363
    const-string v1, " mCacheMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2364
    iget-object v1, p0, Lcom/android/mail/browse/u;->alW:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2366
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    .prologue
    .line 1970
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 1980
    return-void
.end method
