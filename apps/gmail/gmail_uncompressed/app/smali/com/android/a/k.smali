.class public Lcom/android/a/k;
.super Lcom/android/a/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/a/l",
        "<",
        "Lcom/android/a/g;",
        "Lcom/android/a/i;",
        ">;",
        "Lcom/android/a/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private GR:Z

.field private GS:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/android/a/g;",
            "Lcom/android/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private final fK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/a/k;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/a/l;-><init>(IF)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/a/k;->GR:Z

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/a/k;->fK:Ljava/lang/Object;

    .line 49
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/a/k;->GS:Landroid/util/LruCache;

    .line 52
    return-void
.end method

.method private a(Lcom/android/a/g;Lcom/android/a/i;)Lcom/android/a/i;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/a/k;->GS:Landroid/util/LruCache;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/a/j;->ga()Lcom/android/a/j;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/a/k;->GS:Landroid/util/LruCache;

    invoke-static {}, Lcom/android/a/j;->ga()Lcom/android/a/j;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/a/l;->a(Ljava/lang/Object;Lcom/android/a/e;)Lcom/android/a/e;

    move-result-object v0

    check-cast v0, Lcom/android/a/i;

    goto :goto_0
.end method

.method private a(Lcom/android/a/g;Z)Lcom/android/a/i;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/a/k;->GS:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/a/k;->GS:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/android/a/j;->ga()Lcom/android/a/j;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/a/l;->k(Ljava/lang/Object;Z)Lcom/android/a/e;

    move-result-object v0

    check-cast v0, Lcom/android/a/i;

    goto :goto_0
.end method

.method private a(Lcom/android/a/i;)V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/a/k;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/a/l;->b(Lcom/android/a/e;)V

    .line 115
    iget-object v0, p0, Lcom/android/a/k;->fK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 116
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private gb()Lcom/android/a/i;
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/a/k;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :goto_0
    :try_start_0
    invoke-super {p0}, Lcom/android/a/l;->gd()Lcom/android/a/e;

    move-result-object v0

    check-cast v0, Lcom/android/a/i;

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/android/a/k;->GR:Z

    if-eqz v2, :cond_0

    .line 91
    const-string v0, "sleep"

    invoke-static {v0}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/android/a/k;->fK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/android/a/a/a;->endSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final synthetic M(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/android/a/g;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/a/k;->a(Lcom/android/a/g;Z)Lcom/android/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic N(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/android/a/i;

    invoke-direct {p0, p1}, Lcom/android/a/k;->a(Lcom/android/a/i;)V

    return-void
.end method

.method protected final synthetic a(Lcom/android/a/e;)I
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/android/a/i;

    invoke-virtual {p1}, Lcom/android/a/i;->getByteCount()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/android/a/e;)Lcom/android/a/e;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/android/a/g;

    check-cast p2, Lcom/android/a/i;

    invoke-direct {p0, p1, p2}, Lcom/android/a/k;->a(Lcom/android/a/g;Lcom/android/a/i;)Lcom/android/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/android/a/e;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/android/a/i;

    invoke-direct {p0, p1}, Lcom/android/a/k;->a(Lcom/android/a/i;)V

    return-void
.end method

.method public final synthetic gd()Lcom/android/a/e;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/a/k;->gb()Lcom/android/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic k(Ljava/lang/Object;Z)Lcom/android/a/e;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/android/a/g;

    invoke-direct {p0, p1, p2}, Lcom/android/a/k;->a(Lcom/android/a/g;Z)Lcom/android/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/a/k;->gb()Lcom/android/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/android/a/g;

    check-cast p2, Lcom/android/a/i;

    invoke-direct {p0, p1, p2}, Lcom/android/a/k;->a(Lcom/android/a/g;Lcom/android/a/i;)Lcom/android/a/i;

    move-result-object v0

    return-object v0
.end method
