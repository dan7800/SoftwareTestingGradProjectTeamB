.class final Lcom/google/common/collect/C;
.super Lcom/google/common/collect/aJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/aJ",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic cAK:Lcom/google/common/collect/aJ;

.field final synthetic this$0:Lcom/google/common/collect/ImmutableSortedMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;Lcom/google/common/collect/aJ;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/google/common/collect/C;->this$0:Lcom/google/common/collect/ImmutableSortedMap;

    iput-object p2, p0, Lcom/google/common/collect/C;->cAK:Lcom/google/common/collect/aJ;

    invoke-direct {p0}, Lcom/google/common/collect/aJ;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/common/collect/C;->cAK:Lcom/google/common/collect/aJ;

    invoke-virtual {v0}, Lcom/google/common/collect/aJ;->hasNext()Z

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
    .line 566
    iget-object v0, p0, Lcom/google/common/collect/C;->cAK:Lcom/google/common/collect/aJ;

    invoke-virtual {v0}, Lcom/google/common/collect/aJ;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
