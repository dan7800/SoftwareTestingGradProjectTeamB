.class public final Lcom/google/android/gms/appdatasearch/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/c;


# instance fields
.field private final btR:Landroid/os/ConditionVariable;

.field private btS:Lcom/google/android/gms/common/a;

.field private final btT:Lcom/google/android/gms/internal/y;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btR:Landroid/os/ConditionVariable;

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/a;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/y;

    new-instance v1, Lcom/google/android/gms/appdatasearch/b;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/appdatasearch/b;-><init>(Lcom/google/android/gms/appdatasearch/a;B)V

    new-instance v2, Lcom/google/android/gms/appdatasearch/c;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/appdatasearch/c;-><init>(Lcom/google/android/gms/appdatasearch/a;B)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/y;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/d;Lcom/google/android/gms/common/e;)V

    iput-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btT:Lcom/google/android/gms/internal/y;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/appdatasearch/a;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btR:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/appdatasearch/a;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/common/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/a;->btS:Lcom/google/android/gms/common/a;

    return-object p1
.end method

.method private a(Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;)Z
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->bvx:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/a;->mContext:Landroid/content/Context;

    const-string v2, "com.google.android.gms"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btT:Lcom/google/android/gms/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/y;->QM()Lcom/google/android/gms/internal/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/z;->b(Ljava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "AppDataSearchClient"

    const-string v2, "Register corpus failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cd(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "AppDataSearchClient"

    const-string v1, "verifyContentProviderClient: caller is current process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v0, :cond_2

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling UID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not Google Play Services."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Google Play Services not installed"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/common/f;->cf(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling package problem: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/common/f;->er(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fz(Ljava/lang/String;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/a;->btT:Lcom/google/android/gms/internal/y;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/y;->QM()Lcom/google/android/gms/internal/z;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/google/android/gms/internal/z;->ao(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v2, "content_provider_uris"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    iget-object v7, p0, Lcom/google/android/gms/appdatasearch/a;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "success"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    move v2, v0

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-boolean v4, v3, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    :goto_2
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "AppDataSearchClient"

    const-string v3, "Unregister corpus failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final C(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btT:Lcom/google/android/gms/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/y;->QM()Lcom/google/android/gms/internal/z;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/a;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/z;->gl(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;

    iget-object v0, v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AppDataSearchClient"

    const-string v3, "Getting corpora failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x1

    array-length v5, v3

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v3, v2

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0, v6}, Lcom/google/android/gms/appdatasearch/a;->fz(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;

    invoke-direct {p0, v0}, Lcom/google/android/gms/appdatasearch/a;->a(Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    move v2, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;IILcom/google/android/gms/appdatasearch/QuerySpecification;)Lcom/google/android/gms/appdatasearch/SearchResults;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btT:Lcom/google/android/gms/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/y;->QM()Lcom/google/android/gms/internal/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/z;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILcom/google/android/gms/appdatasearch/QuerySpecification;)Lcom/google/android/gms/appdatasearch/SearchResults;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AppDataSearchClient"

    const-string v2, "Query failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;I)Lcom/google/android/gms/appdatasearch/SuggestionResults;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btT:Lcom/google/android/gms/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/y;->QM()Lcom/google/android/gms/internal/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x14

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/z;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/google/android/gms/appdatasearch/SuggestSpecification;)Lcom/google/android/gms/appdatasearch/SuggestionResults;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AppDataSearchClient"

    const-string v2, "Suggest failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto :goto_0
.end method

.method public final aX(J)Lcom/google/android/gms/common/a;
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/appdatasearch/a;->btS:Lcom/google/android/gms/common/a;

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btR:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btT:Lcom/google/android/gms/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/y;->connect()V

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btR:Landroid/os/ConditionVariable;

    invoke-virtual {v0, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btT:Lcom/google/android/gms/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/y;->disconnect()V

    new-instance v0, Lcom/google/android/gms/common/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btS:Lcom/google/android/gms/common/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btS:Lcom/google/android/gms/common/a;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/a;->bBQ:Lcom/google/android/gms/common/a;

    goto :goto_0
.end method

.method public final disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btT:Lcom/google/android/gms/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/y;->disconnect()V

    return-void
.end method

.method public final fA(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/CorpusStatus;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btT:Lcom/google/android/gms/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/y;->QM()Lcom/google/android/gms/internal/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/z;->an(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/CorpusStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AppDataSearchClient"

    const-string v2, "Get corpus status failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r(Ljava/lang/String;J)Z
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->btT:Lcom/google/android/gms/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/y;->QM()Lcom/google/android/gms/internal/z;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v3, p1

    move-wide v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/z;->a(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/appdatasearch/RequestIndexingSpecification;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "AppDataSearchClient"

    const-string v2, "Request indexing failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
