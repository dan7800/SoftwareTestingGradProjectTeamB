.class public Lcom/google/android/gm/provider/G;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private final aGB:Ljava/util/Set;

.field private bfa:Landroid/content/ContentValues;

.field protected eR:Landroid/database/Cursor;

.field protected mAccount:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Handler;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 2215
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2216
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/G;->aGB:Ljava/util/Set;

    .line 2217
    iput-object p3, p0, Lcom/google/android/gm/provider/G;->eR:Landroid/database/Cursor;

    .line 2218
    iput-object p2, p0, Lcom/google/android/gm/provider/G;->mAccount:Ljava/lang/String;

    .line 2219
    iget-object v0, p0, Lcom/google/android/gm/provider/G;->eR:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/G;->eR:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 2220
    :cond_0
    return-void
.end method


# virtual methods
.method public final CW()I
    .locals 1

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/google/android/gm/provider/G;->eR:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2277
    iget-object v0, p0, Lcom/google/android/gm/provider/G;->eR:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected Ea()V
    .locals 1

    .prologue
    .line 2265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/G;->bfa:Landroid/content/ContentValues;

    .line 2266
    return-void
.end method

.method public final Ew()Z
    .locals 2

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/google/android/gm/provider/G;->eR:Landroid/database/Cursor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot read from an insertion cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2317
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/G;->eR:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 2319
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gm/provider/G;->Ea()V

    .line 2320
    :cond_1
    return v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/google/android/gm/provider/G;->eR:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/G;->eR:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/google/android/gm/provider/G;->eR:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 2360
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/G;->eR:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/provider/G;->eR:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2361
    iget-object v0, p0, Lcom/google/android/gm/provider/G;->eR:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2363
    :cond_1
    return-void
.end method

.method public final deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 2412
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    .prologue
    .line 2420
    iget-object v0, p0, Lcom/google/android/gm/provider/G;->aGB:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 2423
    :cond_0
    return-void
.end method
