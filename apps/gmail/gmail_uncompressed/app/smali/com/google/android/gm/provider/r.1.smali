.class final Lcom/google/android/gm/provider/r;
.super Landroid/content/CursorLoader;
.source "SourceFile"


# instance fields
.field private final azU:Landroid/app/DownloadManager;

.field final synthetic bdd:Lcom/google/android/gm/provider/k;

.field private final bdn:Landroid/database/ContentObserver;

.field private bdo:[J


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/k;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/gm/provider/r;->bdd:Lcom/google/android/gm/provider/k;

    .line 116
    invoke-direct {p0, p2}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 118
    const-string v0, "download"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/google/android/gm/provider/r;->azU:Landroid/app/DownloadManager;

    .line 119
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/r;->bdn:Landroid/database/ContentObserver;

    .line 120
    return-void
.end method


# virtual methods
.method public final loadInBackground()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/gm/provider/r;->azU:Landroid/app/DownloadManager;

    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    iget-object v2, p0, Lcom/google/android/gm/provider/r;->bdo:[J

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/google/android/gm/provider/r;->bdn:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 145
    :cond_0
    return-object v0
.end method

.method public final bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/gm/provider/r;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected final onReset()V
    .locals 5

    .prologue
    .line 150
    invoke-super {p0}, Landroid/content/CursorLoader;->onReset()V

    .line 151
    iget-object v0, p0, Lcom/google/android/gm/provider/r;->bdo:[J

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/gm/provider/r;->bdo:[J

    invoke-static {v0}, Lcom/google/common/primitives/Longs;->a([J)Ljava/util/List;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/google/android/gm/provider/r;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v1}, Lcom/google/android/gm/provider/k;->a(Lcom/google/android/gm/provider/k;)Lcom/google/android/gm/provider/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/g;->w(Ljava/util/Collection;)V

    .line 154
    invoke-static {}, Lcom/google/android/gm/provider/k;->km()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASL removing %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 156
    :cond_0
    return-void
.end method

.method public final x(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-static {}, Lcom/google/android/gm/provider/k;->km()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASL tracking %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    iget-object v1, p0, Lcom/google/android/gm/provider/r;->bdd:Lcom/google/android/gm/provider/k;

    invoke-static {v1}, Lcom/google/android/gm/provider/k;->a(Lcom/google/android/gm/provider/k;)Lcom/google/android/gm/provider/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gm/provider/g;->v(Ljava/util/Collection;)V

    .line 128
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/android/gm/provider/r;->bdo:[J

    .line 130
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 131
    iget-object v0, p0, Lcom/google/android/gm/provider/r;->bdo:[J

    aput-wide v4, v0, v1

    .line 132
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 133
    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method
