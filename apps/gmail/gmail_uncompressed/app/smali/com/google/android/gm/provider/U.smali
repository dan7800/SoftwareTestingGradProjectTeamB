.class public final Lcom/google/android/gm/provider/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bgX:Ljava/lang/Object;

.field private static bgY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gm/provider/V;",
            ">;"
        }
    .end annotation
.end field

.field private static bgZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gm/provider/V;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gm/provider/U;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final Ra:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/T;",
            ">;"
        }
    .end annotation
.end field

.field private final aQu:Landroid/database/DataSetObservable;

.field private bgV:Landroid/net/Uri;

.field private final bgW:Z

.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/U;->bgX:Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/U;->bgY:Ljava/util/Map;

    .line 44
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/U;->bgZ:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 23

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v4, Landroid/database/DataSetObservable;

    invoke-direct {v4}, Landroid/database/DataSetObservable;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gm/provider/U;->aQu:Landroid/database/DataSetObservable;

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gm/provider/U;->Ra:Ljava/util/ArrayList;

    .line 49
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/U;->mContext:Landroid/content/Context;

    .line 50
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/U;->mAccount:Ljava/lang/String;

    .line 51
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gm/provider/U;->bgW:Z

    .line 53
    if-nez p1, :cond_1

    .line 54
    sget-object v4, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v5, "Attempt to construct LabelList without context. Uri: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 59
    sget-object v6, Lcom/google/android/gm/provider/Gmail;->bai:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 62
    if-eqz v21, :cond_0

    .line 64
    :try_start_0
    new-instance v22, Lcom/google/android/gm/provider/Z;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/provider/Z;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 65
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 66
    const/4 v4, 0x0

    if-eqz v21, :cond_2

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/gm/provider/Z;->bgw:I

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/gm/provider/Z;->bhj:I

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/gm/provider/Z;->bhk:I

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/gm/provider/Z;->bhl:I

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/gm/provider/Z;->bhm:I

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/gm/provider/Z;->bhn:I

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/gm/provider/Z;->bho:I

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/gm/provider/Z;->mi:I

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/gm/provider/Z;->bhp:I

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/gm/provider/Z;->bhq:I

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/gm/provider/Z;->bhr:I

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    new-instance v4, Lcom/google/android/gm/provider/T;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/google/android/gm/provider/Z;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/google/android/gm/provider/Z;->mAccount:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gm/provider/Z;->bhs:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-direct/range {v4 .. v20}, Lcom/google/android/gm/provider/T;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZIIJLjava/util/Map;)V

    .line 67
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/U;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 70
    :catchall_0
    move-exception v4

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v4

    .line 66
    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .line 70
    :cond_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method static synthetic Bj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/gm/provider/U;->bgX:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic Fg()Ljava/util/Map;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/gm/provider/U;->bgZ:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gm/provider/U;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gm/provider/U;->Ra:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/provider/U;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gm/provider/U;->aQu:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public final Fe()V
    .locals 4

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 123
    sget-object v3, Lcom/google/android/gm/provider/U;->bgX:Ljava/lang/Object;

    monitor-enter v3

    .line 125
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/U;->bgY:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gm/provider/U;->bgV:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/V;

    .line 126
    if-nez v0, :cond_1

    .line 128
    monitor-exit v3

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    sget-object v1, Lcom/google/android/gm/provider/U;->bgZ:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 132
    if-eqz v1, :cond_2

    .line 134
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 138
    sget-object v1, Lcom/google/android/gm/provider/U;->bgZ:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/4 v1, 0x1

    .line 142
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/google/android/gm/provider/U;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public final Ff()V
    .locals 5

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/gm/provider/U;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->dW(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/U;->bgV:Landroid/net/Uri;

    .line 152
    sget-object v2, Lcom/google/android/gm/provider/U;->bgX:Ljava/lang/Object;

    monitor-enter v2

    .line 154
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/U;->bgY:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gm/provider/U;->bgV:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/V;

    .line 155
    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lcom/google/android/gm/provider/V;

    iget-object v1, p0, Lcom/google/android/gm/provider/U;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/provider/U;->mAccount:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gm/provider/U;->bgW:Z

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gm/provider/V;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 158
    sget-object v1, Lcom/google/android/gm/provider/U;->bgY:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gm/provider/U;->bgV:Landroid/net/Uri;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 162
    :goto_0
    sget-object v0, Lcom/google/android/gm/provider/U;->bgZ:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 163
    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 166
    sget-object v3, Lcom/google/android/gm/provider/U;->bgZ:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v0, p0, Lcom/google/android/gm/provider/U;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/provider/U;->bgV:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 177
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public final dP(I)Lcom/google/android/gm/provider/T;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gm/provider/U;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/T;

    return-object v0
.end method

.method public final eB(Ljava/lang/String;)Lcom/google/android/gm/provider/T;
    .locals 4

    .prologue
    .line 100
    if-eqz p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/android/gm/provider/U;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 102
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 103
    invoke-virtual {p0, v1}, Lcom/google/android/gm/provider/U;->dP(I)Lcom/google/android/gm/provider/T;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    :goto_1
    return-object v0

    .line 102
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gm/provider/U;->aQu:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gm/provider/U;->Ra:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/gm/provider/U;->aQu:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 118
    return-void
.end method
