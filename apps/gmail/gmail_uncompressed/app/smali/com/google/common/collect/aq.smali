.class final Lcom/google/common/collect/aq;
.super Lcom/google/common/collect/ac;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MapMakerInternalMap",
        "<TK;TV;>.com/google/common/collect/ac;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic cBz:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3761
    iput-object p1, p0, Lcom/google/common/collect/aq;->cBz:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ac;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3765
    invoke-virtual {p0}, Lcom/google/common/collect/aq;->aad()Lcom/google/common/collect/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ay;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
