.class final Lcom/google/common/collect/an;
.super Lcom/google/common/collect/al;
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
        "Lcom/google/common/collect/al",
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
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/af;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1066
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/al;-><init>(Ljava/lang/Object;ILcom/google/common/collect/af;)V

    .line 1071
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/an;->time:J

    .line 1083
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->ZO()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/an;->cBE:Lcom/google/common/collect/af;

    .line 1096
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->ZO()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/an;->cBF:Lcom/google/common/collect/af;

    .line 1067
    return-void
.end method


# virtual methods
.method public final Rs()J
    .locals 2

    .prologue
    .line 1075
    iget-wide v0, p0, Lcom/google/common/collect/an;->time:J

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
    .line 1088
    iget-object v0, p0, Lcom/google/common/collect/an;->cBE:Lcom/google/common/collect/af;

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
    .line 1101
    iget-object v0, p0, Lcom/google/common/collect/an;->cBF:Lcom/google/common/collect/af;

    return-object v0
.end method

.method public final bf(J)V
    .locals 1

    .prologue
    .line 1080
    iput-wide p1, p0, Lcom/google/common/collect/an;->time:J

    .line 1081
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
    .line 1093
    iput-object p1, p0, Lcom/google/common/collect/an;->cBE:Lcom/google/common/collect/af;

    .line 1094
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
    .line 1106
    iput-object p1, p0, Lcom/google/common/collect/an;->cBF:Lcom/google/common/collect/af;

    .line 1107
    return-void
.end method
