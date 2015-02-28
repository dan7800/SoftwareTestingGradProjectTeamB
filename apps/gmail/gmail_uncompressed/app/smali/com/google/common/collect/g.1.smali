.class final Lcom/google/common/collect/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic cAd:Ljava/util/Iterator;

.field cAj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic cAk:Lcom/google/common/collect/f;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/common/collect/g;->cAk:Lcom/google/common/collect/f;

    iput-object p2, p0, Lcom/google/common/collect/g;->cAd:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/common/collect/g;->cAd:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/common/collect/g;->cAd:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/g;->cAj:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/common/collect/g;->cAd:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 251
    iget-object v0, p0, Lcom/google/common/collect/g;->cAk:Lcom/google/common/collect/f;

    iget-object v0, v0, Lcom/google/common/collect/f;->cAb:Lcom/google/common/collect/AbstractBiMap;

    iget-object v1, p0, Lcom/google/common/collect/g;->cAj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractBiMap;->b(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)V

    .line 252
    return-void
.end method
