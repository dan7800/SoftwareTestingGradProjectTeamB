.class public final Lcom/google/android/gms/appdatasearch/g;
.super Ljava/lang/Object;


# instance fields
.field private bud:Ljava/lang/String;

.field private bvC:Landroid/net/Uri;

.field private final bvD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bvE:Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;

.field private bvF:Z

.field private bvG:Landroid/accounts/Account;

.field private bvH:Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;

.field private bvI:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/g;->mName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/appdatasearch/g;->bvD:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final Jm()Lcom/google/android/gms/appdatasearch/g;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/appdatasearch/g;->bvF:Z

    return-object p0
.end method

.method public final Jn()Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;
    .locals 10

    new-instance v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/g;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/g;->bud:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/g;->bvC:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/gms/appdatasearch/g;->bvD:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/appdatasearch/g;->bvD:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    iget-object v5, p0, Lcom/google/android/gms/appdatasearch/g;->bvE:Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;

    iget-boolean v6, p0, Lcom/google/android/gms/appdatasearch/g;->bvF:Z

    iget-object v7, p0, Lcom/google/android/gms/appdatasearch/g;->bvG:Landroid/accounts/Account;

    iget-object v8, p0, Lcom/google/android/gms/appdatasearch/g;->bvH:Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;

    iget-object v9, p0, Lcom/google/android/gms/appdatasearch/g;->bvI:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;ZLandroid/accounts/Account;Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;)Lcom/google/android/gms/appdatasearch/g;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/g;->bvH:Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;

    return-object p0
.end method

.method public final varargs a([Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;)Lcom/google/android/gms/appdatasearch/g;
    .locals 4

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/g;->bvD:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final c(Landroid/accounts/Account;)Lcom/google/android/gms/appdatasearch/g;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/g;->bvG:Landroid/accounts/Account;

    return-object p0
.end method

.method public final fC(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/g;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/g;->bud:Ljava/lang/String;

    return-object p0
.end method

.method public final fD(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/g;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/appdatasearch/g;->bvC:Landroid/net/Uri;

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final fE(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/g;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/g;->bvI:Ljava/lang/String;

    return-object p0
.end method
