.class public final Lcom/google/android/gms/common/api/o;
.super Ljava/lang/Object;


# instance fields
.field private final bCo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bCp:I

.field private bCq:Landroid/view/View;

.field private bCr:Ljava/lang/String;

.field private final bCs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Lcom/google/android/gms/common/api/b;",
            ">;"
        }
    .end annotation
.end field

.field private bCt:Landroid/support/v4/app/k;

.field private bCu:I

.field private bCv:Lcom/google/android/gms/common/api/q;

.field private bCw:Landroid/os/Looper;

.field private bCx:I

.field private final bCy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/p;",
            ">;"
        }
    .end annotation
.end field

.field private final bCz:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/q;",
            ">;"
        }
    .end annotation
.end field

.field private bxh:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->bCo:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->bCs:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/o;->bCu:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/o;->bCx:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->bCy:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->bCz:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/common/api/o;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->bCw:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->bCr:Ljava/lang/String;

    return-void
.end method

.method private Kx()Lcom/google/android/gms/common/internal/ClientSettings;
    .locals 6

    new-instance v0, Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v1, p0, Lcom/google/android/gms/common/api/o;->bxh:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/api/o;->bCo:Ljava/util/Set;

    iget v3, p0, Lcom/google/android/gms/common/api/o;->bCp:I

    iget-object v4, p0, Lcom/google/android/gms/common/api/o;->bCq:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/gms/common/api/o;->bCr:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/ClientSettings;-><init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final Ky()Lcom/google/android/gms/common/api/n;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->bCs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "must call addApi() to add at least one API"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/G;->b(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/common/api/o;->bCu:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->bCt:Landroid/support/v4/app/k;

    invoke-static {v0}, Lcom/google/android/gms/common/api/G;->b(Landroid/support/v4/app/k;)Lcom/google/android/gms/common/api/G;

    move-result-object v9

    iget v0, p0, Lcom/google/android/gms/common/api/o;->bCu:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/common/api/G;->ev(I)Lcom/google/android/gms/common/api/n;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/x;

    iget-object v1, p0, Lcom/google/android/gms/common/api/o;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/o;->bCw:Landroid/os/Looper;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/o;->Kx()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/o;->bCs:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/gms/common/api/o;->bCy:Ljava/util/Set;

    iget-object v6, p0, Lcom/google/android/gms/common/api/o;->bCz:Ljava/util/Set;

    iget v7, p0, Lcom/google/android/gms/common/api/o;->bCu:I

    iget v8, p0, Lcom/google/android/gms/common/api/o;->bCx:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/api/x;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;II)V

    :cond_0
    iget v1, p0, Lcom/google/android/gms/common/api/o;->bCu:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/o;->bCv:Lcom/google/android/gms/common/api/q;

    invoke-virtual {v9, v1, v0, v2}, Lcom/google/android/gms/common/api/G;->a(ILcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/q;)V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/api/x;

    iget-object v1, p0, Lcom/google/android/gms/common/api/o;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/o;->bCw:Landroid/os/Looper;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/o;->Kx()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/o;->bCs:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/gms/common/api/o;->bCy:Ljava/util/Set;

    iget-object v6, p0, Lcom/google/android/gms/common/api/o;->bCz:Ljava/util/Set;

    const/4 v7, -0x1

    iget v8, p0, Lcom/google/android/gms/common/api/o;->bCx:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/api/x;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;II)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a",
            "<+",
            "Lcom/google/android/gms/common/api/d;",
            ">;)",
            "Lcom/google/android/gms/common/api/o;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->bCs:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->Kp()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/common/api/o;->bCo:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/v;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/v;->Kz()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/c;",
            ">(",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;)",
            "Lcom/google/android/gms/common/api/o;"
        }
    .end annotation

    const-string v0, "Null options are not permitted for this Api"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/G;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->bCs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->Kp()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/common/api/o;->bCo:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/v;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/v;->Kz()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/common/api/v;)Lcom/google/android/gms/common/api/o;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->bCo:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/v;->Kz()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/common/api/p;)Lcom/google/android/gms/common/api/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->bCy:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->bCz:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final fP(Ljava/lang/String;)Lcom/google/android/gms/common/api/o;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/o;->bxh:Ljava/lang/String;

    return-object p0
.end method
