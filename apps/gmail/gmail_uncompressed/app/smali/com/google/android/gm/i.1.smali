.class public final Lcom/google/android/gm/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# static fields
.field private static aWJ:Lcom/google/android/gm/i;


# instance fields
.field private aWK:Lcom/google/android/gm/persistence/b;

.field private aWL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/i;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/i;->aWK:Lcom/google/android/gm/persistence/b;

    .line 52
    invoke-static {}, Lcom/google/common/collect/Maps;->aap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/i;->aWL:Ljava/util/Map;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AccountHistory Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gm/i;->mHandler:Landroid/os/Handler;

    .line 58
    iget-object v0, p0, Lcom/google/android/gm/i;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gm/j;

    invoke-direct {v1, p0}, Lcom/google/android/gm/j;-><init>(Lcom/google/android/gm/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    iget-object v0, p0, Lcom/google/android/gm/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/i;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gm/i;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized aT(Landroid/content/Context;)Lcom/google/android/gm/i;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/google/android/gm/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gm/i;->aWJ:Lcom/google/android/gm/i;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/google/android/gm/i;

    invoke-direct {v0, p0}, Lcom/google/android/gm/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gm/i;->aWJ:Lcom/google/android/gm/i;

    .line 46
    :cond_0
    sget-object v0, Lcom/google/android/gm/i;->aWJ:Lcom/google/android/gm/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private ds(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    iget-object v0, p0, Lcom/google/android/gm/i;->aWL:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 179
    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-object v0

    .line 182
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 183
    const-string v0, "GmailAccountHistory"

    const-string v1, "calling getAccountHistory from main thread for %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/i;->aWL:Ljava/util/Map;

    monitor-enter v2

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/i;->aWL:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 188
    if-nez v0, :cond_4

    .line 189
    const-string v1, "GmailAccountHistory"

    const-string v3, "records is null for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v1, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
    :try_end_1
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    const/4 v0, 0x4

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/i;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_1
    if-eqz v0, :cond_2

    .line 195
    const/4 v3, 0x0

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 196
    const-string v3, "GmailAccountHistory"

    const-string v4, "Forward: add %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 197
    const/4 v3, 0x4

    invoke-direct {p0, v0, v3}, Lcom/google/android/gm/i;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 200
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/i;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_2
    if-eqz v0, :cond_3

    .line 204
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v3, "GmailAccountHistory"

    const-string v4, "Backward: add %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 206
    const/4 v3, 0x3

    invoke-direct {p0, v0, v3}, Lcom/google/android/gm/i;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 209
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    const-string v4, "GmailAccountHistory"

    const-string v5, "maps email %s to records %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    iget-object v4, p0, Lcom/google/android/gm/i;->aWL:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 213
    :catch_0
    move-exception v0

    :goto_4
    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 216
    :goto_5
    :try_start_3
    const-string v3, "GmailAccountHistory"

    const-string v4, "GoogleAuthException"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 217
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_4

    .line 218
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_4
    :goto_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    move-object v0, v1

    .line 220
    goto :goto_6

    .line 213
    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_7
    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4
.end method

.method private g(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/gm/i;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/d;->Z(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/AccountChangeEvent;

    .line 155
    const-string v2, "GmailAccountHistory"

    const-string v3, "onEmailByType(%d): %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/AccountChangeEvent;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 157
    invoke-virtual {v0}, Lcom/google/android/gms/auth/AccountChangeEvent;->JO()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/auth/AccountChangeEvent;->JP()Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final dr(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gm/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p1}, Lcom/google/android/gm/persistence/b;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 131
    :goto_0
    return-object p1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/i;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gm/ay;->w(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/google/android/gm/i;->aWK:Lcom/google/android/gm/persistence/b;

    iget-object v1, p0, Lcom/google/android/gm/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p1}, Lcom/google/android/gm/persistence/b;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_2

    .line 98
    const-string v0, "GmailAccountHistory"

    const-string v3, "calling getAccountAlias from main thread for %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 102
    :cond_2
    iget-object v3, p0, Lcom/google/android/gm/i;->aWL:Ljava/util/Map;

    monitor-enter v3

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/i;->aWK:Lcom/google/android/gm/persistence/b;

    iget-object v4, p0, Lcom/google/android/gm/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, p1}, Lcom/google/android/gm/persistence/b;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    monitor-exit v3

    move-object p1, v0

    goto :goto_0

    .line 108
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gm/i;->ds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 109
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 110
    const/4 v0, 0x0

    .line 111
    :goto_1
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v0, :cond_4

    .line 112
    iget-object v6, p0, Lcom/google/android/gm/i;->aWK:Lcom/google/android/gm/persistence/b;

    iget-object v7, p0, Lcom/google/android/gm/i;->mContext:Landroid/content/Context;

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lcom/google/android/gm/persistence/b;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 115
    :cond_4
    if-eqz v0, :cond_5

    .line 116
    const-string v5, "GmailAccountHistory"

    const-string v6, "Found legacy data, use old email %s as alias"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object p1, v0

    .line 124
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    const-string v5, "GmailAccountHistory"

    const-string v6, "Cache alias %s for %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 126
    iget-object v5, p0, Lcom/google/android/gm/i;->aWK:Lcom/google/android/gm/persistence/b;

    iget-object v6, p0, Lcom/google/android/gm/i;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v0, p1}, Lcom/google/android/gm/persistence/b;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 121
    :cond_5
    :try_start_1
    const-string v0, "GmailAccountHistory"

    const-string v5, "Didn\'t find legacy data, use %s as alias"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v0, v5, v6}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 128
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    if-eqz p1, :cond_7

    move v0, v1

    :goto_4
    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_7
    move v0, v2

    goto :goto_4

    .line 130
    :cond_8
    const-string v0, "GmailAccountHistory"

    const-string v3, "getAccountAlias returns %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method public final dt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    invoke-direct {p0, p1}, Lcom/google/android/gm/i;->ds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    :goto_0
    return-object v0

    .line 241
    :cond_0
    const-string v0, "GmailAccountHistory"

    const-string v1, "getLatestEmail returns no records"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, p1

    .line 242
    goto :goto_0
.end method

.method public final onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 139
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 140
    const-string v4, "GmailAccountHistory"

    const-string v5, "onAccountsUpdated: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    const-string v4, "com.google"

    iget-object v5, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/gm/i;->dr(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    iget-object v4, p0, Lcom/google/android/gm/i;->aWK:Lcom/google/android/gm/persistence/b;

    iget-object v5, p0, Lcom/google/android/gm/i;->mContext:Landroid/content/Context;

    iget-object v6, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/android/gm/persistence/b;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_1
    return-void
.end method
