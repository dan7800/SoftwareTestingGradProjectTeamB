.class public final Lcom/google/android/gm/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ADDRESS:Ljava/lang/String;

.field public static NAME:Ljava/lang/String;

.field public static bqO:Ljava/lang/String;

.field public static bqP:Ljava/lang/String;

.field public static bqQ:Ljava/lang/String;

.field public static bqR:I

.field public static bqS:I

.field public static bqT:I

.field public static bqU:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/providers/ReplyFromAccount;",
            ">;>;"
        }
    .end annotation
.end field

.field public static bqV:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "name"

    sput-object v0, Lcom/google/android/gm/c/b;->NAME:Ljava/lang/String;

    .line 22
    const-string v0, "address"

    sput-object v0, Lcom/google/android/gm/c/b;->ADDRESS:Ljava/lang/String;

    .line 24
    const-string v0, "reply_to"

    sput-object v0, Lcom/google/android/gm/c/b;->bqO:Ljava/lang/String;

    .line 26
    const-string v0, "is_default"

    sput-object v0, Lcom/google/android/gm/c/b;->bqP:Ljava/lang/String;

    .line 28
    const-string v0, "bx_rf"

    sput-object v0, Lcom/google/android/gm/c/b;->bqQ:Ljava/lang/String;

    .line 30
    const/4 v0, 0x2

    sput v0, Lcom/google/android/gm/c/b;->bqR:I

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gm/c/b;->bqS:I

    .line 34
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gm/c/b;->bqT:I

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/c/b;->bqU:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/c/b;->bqV:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static H(Landroid/net/Uri;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/ReplyFromAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lcom/google/android/gm/c/b;->bqU:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/google/android/gm/c/b;->bqU:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    monitor-enter v0

    .line 114
    :try_start_0
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 118
    :goto_0
    return-object v0

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static I(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/google/android/gm/c/b;->bqV:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gm/c/b;->bqV:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/google/android/gm/c/b;->bqV:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 13

    .prologue
    .line 83
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 85
    sget-object v0, Lcom/google/android/gm/c/b;->ADDRESS:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 86
    sget-object v0, Lcom/google/android/gm/c/b;->NAME:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 87
    sget-object v0, Lcom/google/android/gm/c/b;->bqO:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 88
    sget-object v0, Lcom/google/android/gm/c/b;->bqP:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 90
    :cond_0
    new-instance v0, Lcom/android/mail/providers/ReplyFromAccount;

    const/4 v1, 0x0

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mail/providers/ReplyFromAccount;-><init>(Lcom/android/mail/providers/Account;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 94
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/google/android/gm/c/b;->bqU:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static b(Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    const-string v0, "value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 134
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    const/4 v0, 0x1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    sget-object v1, Lcom/google/android/gm/c/b;->bqV:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static f(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/gm/c/b;->bqU:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 57
    if-eqz v0, :cond_2

    .line 58
    monitor-enter v0

    .line 59
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/ReplyFromAccount;

    .line 60
    iget-object v3, v1, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    sget-object v1, Lcom/google/android/gm/c/b;->bqU:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_2
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static fr(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/gm/c/b;->bqU:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method
