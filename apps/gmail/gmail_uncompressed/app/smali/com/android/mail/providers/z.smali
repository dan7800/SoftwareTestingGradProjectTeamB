.class public Lcom/android/mail/providers/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private aBI:Landroid/database/sqlite/SQLiteOpenHelper;

.field private aBJ:Ljava/lang/String;

.field private aBK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aBL:Ljava/lang/Object;

.field private mClosed:Z

.field protected final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/z;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mail/providers/z;->aBL:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/android/mail/providers/z;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/android/mail/providers/A;

    iget-object v1, p0, Lcom/android/mail/providers/z;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mail/providers/A;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mail/providers/z;->aBI:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mail/providers/z;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/2130837709"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/z;->aBJ:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private bk(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/mail/providers/z;->aBL:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mail/providers/z;->mClosed:Z

    if-nez v0, :cond_1

    .line 142
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/z;->aBI:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    monitor-exit v1

    .line 146
    :goto_1
    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/z;->aBI:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_1
    monitor-exit v1

    .line 146
    const/4 v0, 0x0

    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cc(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 156
    invoke-direct {p0, v5}, Lcom/android/mail/providers/z;->bk(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    iget-object v0, p0, Lcom/android/mail/providers/z;->aBK:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/mail/providers/z;->aBK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 165
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/mail/providers/z;->aBJ:Ljava/lang/String;

    aput-object v2, v0, v5

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 168
    const-string v2, " SELECT _id   , display1 AS suggest_text_1   , ? || query AS suggest_intent_query   , ? AS suggest_icon_1 FROM suggestions WHERE display1 LIKE ? ORDER BY date DESC"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 170
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final cd(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 178
    invoke-direct {p0, v6}, Lcom/android/mail/providers/z;->bk(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 181
    const-string v2, "display1"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v2, "query"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    :try_start_0
    const-string v2, "suggestions"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    sget-object v1, Lcom/android/mail/providers/z;->mW:Ljava/lang/String;

    const-string v2, "recent suggestions db save exception"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final clearHistory()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 195
    invoke-direct {p0, v4}, Lcom/android/mail/providers/z;->bk(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    const-string v1, "suggestions"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    sget-object v1, Lcom/android/mail/providers/z;->mW:Ljava/lang/String;

    const-string v2, "recent suggestions db delete exception"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final e(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/mail/providers/z;->aBK:Ljava/util/ArrayList;

    .line 137
    return-void
.end method

.method public final qD()V
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/mail/providers/z;->aBL:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/providers/z;->aBI:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/providers/z;->mClosed:Z

    .line 90
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
