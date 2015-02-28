.class public final Lcom/google/android/gm/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static brh:Ljava/lang/String;

.field public static bri:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "value"

    sput-object v0, Lcom/google/android/gm/c/g;->brh:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/c/g;->bri:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static ag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/android/gm/c/g;->fv(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 47
    sget-object v1, Lcom/google/android/gm/c/g;->bri:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public static ah(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/android/gm/c/g;->fv(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 58
    sget-object v1, Lcom/google/android/gm/c/g;->bri:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public static c(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 109
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 111
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    sget-object v0, Lcom/google/android/gm/c/g;->brh:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 113
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 115
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    const/4 v0, -0x1

    .line 117
    const-string v5, "sx_rt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 118
    const/4 v0, 0x0

    .line 122
    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    .line 123
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 125
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/google/android/gm/c/g;->bri:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 130
    return-void

    .line 119
    :cond_4
    :try_start_1
    const-string v5, "sx_dn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static fv(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/gm/c/g;->bri:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 34
    :goto_0
    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 37
    :cond_0
    return-object v0

    .line 32
    :cond_1
    sget-object v0, Lcom/google/android/gm/c/g;->bri:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method
