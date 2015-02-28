.class public Lcom/android/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V::",
        "Lcom/android/a/e;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/a/f",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final GT:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final GU:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final GV:I

.field private final GW:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/a/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/a/l;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/a/l;->GT:Ljava/util/LinkedHashMap;

    .line 61
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/a/l;->GU:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 62
    int-to-float v0, p1

    const/4 v1, 0x0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 63
    if-lez v0, :cond_0

    .line 64
    new-instance v1, Lcom/android/a/m;

    invoke-direct {v1, p0, v0}, Lcom/android/a/m;-><init>(Lcom/android/a/l;I)V

    iput-object v1, p0, Lcom/android/a/l;->GW:Landroid/util/LruCache;

    .line 68
    :goto_0
    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/a/l;->GV:I

    .line 69
    return-void

    .line 66
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/a/l;->GW:Landroid/util/LruCache;

    goto :goto_0
.end method


# virtual methods
.method public synthetic M(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/a/l;->k(Ljava/lang/Object;Z)Lcom/android/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic N(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lcom/android/a/e;

    invoke-virtual {p0, p1}, Lcom/android/a/l;->b(Lcom/android/a/e;)V

    return-void
.end method

.method protected a(Lcom/android/a/e;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/Object;Lcom/android/a/e;)Lcom/android/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    const-string v1, "cache put"

    invoke-static {v1}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 91
    if-nez p2, :cond_0

    .line 92
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 105
    :goto_0
    return-object v0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/a/l;->GT:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 97
    :try_start_0
    invoke-interface {p2}, Lcom/android/a/e;->fV()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    iget-object v0, p0, Lcom/android/a/l;->GT:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/e;

    .line 104
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 105
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 99
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/a/l;->GW:Landroid/util/LruCache;

    if-eqz v2, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/a/l;->GW:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public b(Lcom/android/a/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 111
    const-string v0, "pool offer"

    invoke-static {v0}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 112
    invoke-interface {p1}, Lcom/android/a/e;->fU()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/a/e;->fV()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected offer of an invalid object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/a/l;->GU:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 117
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 118
    return-void
.end method

.method public gd()Lcom/android/a/e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 122
    const-string v0, "pool poll"

    invoke-static {v0}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/a/l;->GU:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/e;

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 160
    :goto_0
    return-object v0

    .line 129
    :cond_0
    iget-object v5, p0, Lcom/android/a/l;->GT:Ljava/util/LinkedHashMap;

    monitor-enter v5

    .line 130
    const/4 v4, 0x0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/a/l;->GT:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v2

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/a/e;

    .line 134
    invoke-interface {v1}, Lcom/android/a/e;->fU()I

    move-result v7

    if-gtz v7, :cond_1

    invoke-interface {v1}, Lcom/android/a/e;->fV()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 135
    if-nez v3, :cond_3

    .line 140
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/a/l;->a(Lcom/android/a/e;)I

    move-result v1

    add-int/2addr v1, v4

    .line 141
    iget v3, p0, Lcom/android/a/l;->GV:I

    if-le v1, v3, :cond_5

    .line 142
    :goto_3
    iget v3, p0, Lcom/android/a/l;->GV:I

    if-gt v1, v3, :cond_2

    .line 152
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 153
    monitor-exit v5

    move-object v0, v2

    goto :goto_0

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/android/a/l;->GT:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/e;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_3
    move-object v0, v3

    goto :goto_2

    :cond_4
    move-object v0, v3

    move v1, v4

    goto :goto_3

    :cond_5
    move-object v3, v0

    move v4, v1

    goto :goto_1
.end method

.method public k(Ljava/lang/Object;Z)Lcom/android/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TV;"
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, "cache get"

    invoke-static {v0}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/android/a/l;->GT:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/a/l;->GT:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/e;

    .line 76
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/a/l;->GW:Landroid/util/LruCache;

    if-eqz v2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/a/l;->GW:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/e;

    .line 79
    :cond_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v0}, Lcom/android/a/e;->acquireReference()V

    .line 82
    :cond_1
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/a/l;->gd()Lcom/android/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p2, Lcom/android/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/android/a/l;->a(Ljava/lang/Object;Lcom/android/a/e;)Lcom/android/a/e;

    move-result-object v0

    return-object v0
.end method
