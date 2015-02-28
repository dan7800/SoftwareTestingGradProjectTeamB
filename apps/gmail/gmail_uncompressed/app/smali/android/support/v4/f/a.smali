.class public Landroid/support/v4/f/a;
.super Landroid/support/v4/f/n;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/f/n",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field gE:Landroid/support/v4/f/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/h",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/f/n;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/f/n;-><init>(I)V

    .line 62
    return-void
.end method

.method private aL()Landroid/support/v4/f/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/f/h",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/f/a;->gE:Landroid/support/v4/f/h;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/support/v4/f/b;

    invoke-direct {v0, p0}, Landroid/support/v4/f/b;-><init>(Landroid/support/v4/f/a;)V

    iput-object v0, p0, Landroid/support/v4/f/a;->gE:Landroid/support/v4/f/h;

    .line 120
    :cond_0
    iget-object v0, p0, Landroid/support/v4/f/a;->gE:Landroid/support/v4/f/h;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/support/v4/f/a;->aL()Landroid/support/v4/f/h;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v4/f/h;->gV:Landroid/support/v4/f/j;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v4/f/j;

    invoke-direct {v1, v0}, Landroid/support/v4/f/j;-><init>(Landroid/support/v4/f/h;)V

    iput-object v1, v0, Landroid/support/v4/f/h;->gV:Landroid/support/v4/f/j;

    :cond_0
    iget-object v0, v0, Landroid/support/v4/f/h;->gV:Landroid/support/v4/f/j;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Landroid/support/v4/f/a;->aL()Landroid/support/v4/f/h;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v4/f/h;->gW:Landroid/support/v4/f/k;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v4/f/k;

    invoke-direct {v1, v0}, Landroid/support/v4/f/k;-><init>(Landroid/support/v4/f/h;)V

    iput-object v1, v0, Landroid/support/v4/f/h;->gW:Landroid/support/v4/f/k;

    :cond_0
    iget-object v0, v0, Landroid/support/v4/f/h;->gW:Landroid/support/v4/f/k;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    iget v0, p0, Landroid/support/v4/f/a;->gO:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/f/a;->ensureCapacity(I)V

    .line 140
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {p0, p1}, Landroid/support/v4/f/h;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/support/v4/f/a;->aL()Landroid/support/v4/f/h;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v4/f/h;->gX:Landroid/support/v4/f/m;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v4/f/m;

    invoke-direct {v1, v0}, Landroid/support/v4/f/m;-><init>(Landroid/support/v4/f/h;)V

    iput-object v1, v0, Landroid/support/v4/f/h;->gX:Landroid/support/v4/f/m;

    :cond_0
    iget-object v0, v0, Landroid/support/v4/f/h;->gX:Landroid/support/v4/f/m;

    return-object v0
.end method
