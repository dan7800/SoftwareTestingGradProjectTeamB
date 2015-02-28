.class public final Lcom/android/mail/j;
.super Landroid/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/google/common/collect/ImmutableMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/mail/a;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final akb:[Ljava/lang/String;

.field private static final akc:[Ljava/lang/String;


# instance fields
.field private final akd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/j;->akb:[Ljava/lang/String;

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data15"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mail/j;->akc:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object p2, p0, Lcom/android/mail/j;->akd:Ljava/util/Set;

    .line 77
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/util/Set;Z)Lcom/google/common/collect/ImmutableMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    const-string v0, "load contact photos util"

    invoke-static {v0}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 119
    const/4 v6, 0x0

    .line 121
    const-string v0, "build first query"

    invoke-static {v0}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v7

    .line 125
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v8

    .line 126
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-static {p1}, Lcom/android/mail/j;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v10

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mimetype=\'vnd.android.cursor.item/email_v2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\' AND data1 IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 133
    invoke-static {v11, v10}, Lcom/android/mail/j;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)V

    .line 134
    const/16 v0, 0x29

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 139
    invoke-static {}, Lcom/android/mail/utils/ag;->Bh()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v5, "in_default_directory ASC, _id"

    .line 142
    :goto_0
    :try_start_0
    const-string v0, "query 1"

    invoke-static {v0}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 143
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mail/j;->akb:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Lcom/android/mail/j;->c(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 145
    :try_start_1
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 147
    if-nez v6, :cond_3

    .line 148
    invoke-static {}, Lcom/android/a/a/a;->endSection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    if-eqz v6, :cond_0

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 237
    :cond_1
    :goto_1
    return-object v0

    .line 139
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 152
    :cond_3
    :try_start_2
    const-string v0, "get photo id"

    invoke-static {v0}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 153
    const/4 v0, -0x1

    .line 154
    :goto_2
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 155
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 157
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 159
    new-instance v3, Lcom/android/mail/a;

    invoke-direct {v3, v2}, Lcom/android/mail/a;-><init>(Landroid/net/Uri;)V

    .line 161
    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 162
    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 163
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_4
    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 231
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_5

    .line 232
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 168
    :cond_6
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 169
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 174
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 176
    new-instance v2, Lcom/android/mail/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/mail/a;-><init>(Landroid/net/Uri;)V

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 180
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 181
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 182
    invoke-static {v7}, Lcom/google/common/collect/ImmutableMap;->q(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 231
    if-eqz v6, :cond_1

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 185
    :cond_9
    :try_start_4
    const-string v0, "build second query"

    invoke-static {v0}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 188
    invoke-static {v9}, Lcom/android/mail/j;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 190
    const-string v1, "_id IN ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {v11, v0}, Lcom/android/mail/j;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)V

    .line 192
    const/16 v1, 0x29

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 195
    const-string v1, "query 2"

    invoke-static {v1}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 196
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mail/j;->akc:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/android/mail/j;->c(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 198
    :try_start_5
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 200
    if-nez v2, :cond_a

    .line 201
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 202
    invoke-static {v7}, Lcom/google/common/collect/ImmutableMap;->q(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    .line 231
    if-eqz v2, :cond_1

    .line 232
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 205
    :cond_a
    :try_start_6
    const-string v0, "get photo blob"

    invoke-static {v0}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 206
    const/4 v0, -0x1

    .line 207
    :goto_5
    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 208
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 209
    if-eqz v4, :cond_e

    .line 210
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 214
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 215
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 216
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/mail/a;

    .line 218
    if-eqz p2, :cond_b

    .line 219
    const-string v5, "decode bitmap"

    invoke-static {v5}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 220
    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 221
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 223
    new-instance v5, Lcom/android/mail/a;

    iget-object v0, v0, Lcom/android/mail/a;->ajO:Landroid/net/Uri;

    invoke-direct {v5, v0, v4}, Lcom/android/mail/a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    invoke-interface {v7, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 224
    goto :goto_5

    .line 226
    :cond_b
    new-instance v5, Lcom/android/mail/a;

    iget-object v0, v0, Lcom/android/mail/a;->ajO:Landroid/net/Uri;

    invoke-direct {v5, v0, v4}, Lcom/android/mail/a;-><init>(Landroid/net/Uri;[B)V

    invoke-interface {v7, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 228
    goto :goto_5

    .line 229
    :cond_c
    invoke-static {}, Lcom/android/a/a/a;->endSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 231
    if-eqz v2, :cond_d

    .line 232
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_d
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 237
    invoke-static {v7}, Lcom/google/common/collect/ImmutableMap;->q(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto/16 :goto_1

    .line 231
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :cond_e
    move v0, v3

    goto :goto_5
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x1

    .line 272
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 278
    :goto_1
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 276
    :cond_0
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 280
    :cond_1
    return-void
.end method

.method private static b(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/16 v1, 0x4b

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 252
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    const/4 v0, 0x0

    .line 255
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v0, v1, 0x1

    .line 258
    if-lt v0, v2, :cond_1

    .line 259
    :cond_0
    return-object v3

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private static c(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mail/j;->akd:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/j;->akd:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/j;->akd:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/mail/j;->a(Landroid/content/ContentResolver;Ljava/util/Set;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0
.end method

.method protected final onStartLoading()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/mail/j;->forceLoad()V

    .line 82
    return-void
.end method

.method protected final onStopLoading()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/mail/j;->cancelLoad()Z

    .line 87
    return-void
.end method
