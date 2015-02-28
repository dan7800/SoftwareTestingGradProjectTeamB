.class final Lcom/google/common/collect/av;
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
    .line 1579
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/at;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/af;)V

    .line 1584
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/av;->time:J

    .line 1596
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->ZO()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/av;->cBE:Lcom/google/common/collect/af;

    .line 1609
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->ZO()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/av;->cBF:Lcom/google/common/collect/af;

    .line 1580
    return-void
.end method


# virtual methods
.method public final Rs()J
    .locals 2

    .prologue
    .line 1588
    iget-wide v0, p0, Lcom/google/common/collect/av;->time:J

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
    .line 1601
    iget-object v0, p0, Lcom/google/common/collect/av;->cBE:Lcom/google/common/collect/af;

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
    .line 1614
    iget-object v0, p0, Lcom/google/common/collect/av;->cBF:Lcom/google/common/collect/af;

    return-object v0
.end method

.method public final bf(J)V
    .locals 1

    .prologue
    .line 1593
    iput-wide p1, p0, Lcom/google/common/collect/av;->time:J

    .line 1594
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
    .line 1606
    iput-object p1, p0, Lcom/google/common/collect/av;->cBE:Lcom/google/common/collect/af;

    .line 1607
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
    .line 1619
    iput-object p1, p0, Lcom/google/common/collect/av;->cBF:Lcom/google/common/collect/af;

    .line 1620
    return-void
.end method
