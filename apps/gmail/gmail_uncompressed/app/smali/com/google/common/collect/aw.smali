.class final Lcom/google/common/collect/aw;
.super Lcom/google/common/collect/at;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/at",
        "<TK;TV;>;",
        "Lcom/google/common/collect/af",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field cBB:Lcom/google/common/collect/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field cBC:Lcom/google/common/collect/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field cBE:Lcom/google/common/collect/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field cBF:Lcom/google/common/collect/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/af;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1663
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/at;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/af;)V

    .line 1668
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/aw;->time:J

    .line 1680
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->ZO()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aw;->cBE:Lcom/google/common/collect/af;

    .line 1693
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->ZO()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aw;->cBF:Lcom/google/common/collect/af;

    .line 1708
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->ZO()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aw;->cBB:Lcom/google/common/collect/af;

    .line 1721
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->ZO()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aw;->cBC:Lcom/google/common/collect/af;

    .line 1664
    return-void
.end method


# virtual methods
.method public final Rs()J
    .locals 2

    .prologue
    .line 1672
    iget-wide v0, p0, Lcom/google/common/collect/aw;->time:J

    return-wide v0
.end method

.method public final ZW()Lcom/google/common/collect/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/common/collect/aw;->cBE:Lcom/google/common/collect/af;

    return-object v0
.end method

.method public final ZX()Lcom/google/common/collect/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/google/common/collect/aw;->cBF:Lcom/google/common/collect/af;

    return-object v0
.end method

.method public final ZY()Lcom/google/common/collect/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/common/collect/aw;->cBB:Lcom/google/common/collect/af;

    return-object v0
.end method

.method public final ZZ()Lcom/google/common/collect/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/google/common/collect/aw;->cBC:Lcom/google/common/collect/af;

    return-object v0
.end method

.method public final bf(J)V
    .locals 1

    .prologue
    .line 1677
    iput-wide p1, p0, Lcom/google/common/collect/aw;->time:J

    .line 1678
    return-void
.end method

.method public final f(Lcom/google/common/collect/af;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/google/common/collect/aw;->cBE:Lcom/google/common/collect/af;

    .line 1691
    return-void
.end method

.method public final g(Lcom/google/common/collect/af;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/google/common/collect/aw;->cBF:Lcom/google/common/collect/af;

    .line 1704
    return-void
.end method

.method public final h(Lcom/google/common/collect/af;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/google/common/collect/aw;->cBB:Lcom/google/common/collect/af;

    .line 1719
    return-void
.end method

.method public final i(Lcom/google/common/collect/af;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1731
    iput-object p1, p0, Lcom/google/common/collect/aw;->cBC:Lcom/google/common/collect/af;

    .line 1732
    return-void
.end method
