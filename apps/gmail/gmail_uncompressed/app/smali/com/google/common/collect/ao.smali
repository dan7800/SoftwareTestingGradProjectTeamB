.class final Lcom/google/common/collect/ao;
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
    .line 1148
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/al;-><init>(Ljava/lang/Object;ILcom/google/common/collect/af;)V

    .line 1153
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/ao;->time:J

    .line 1165
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->ZO()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ao;->cBE:Lcom/google/common/collect/af;

    .line 1178
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->ZO()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ao;->cBF:Lcom/google/common/collect/af;

    .line 1193
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->ZO()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ao;->cBB:Lcom/google/common/collect/af;

    .line 1206
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->ZO()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ao;->cBC:Lcom/google/common/collect/af;

    .line 1149
    return-void
.end method


# virtual methods
.method public final Rs()J
    .locals 2

    .prologue
    .line 1157
    iget-wide v0, p0, Lcom/google/common/collect/ao;->time:J

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
    .line 1170
    iget-object v0, p0, Lcom/google/common/collect/ao;->cBE:Lcom/google/common/collect/af;

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
    .line 1183
    iget-object v0, p0, Lcom/google/common/collect/ao;->cBF:Lcom/google/common/collect/af;

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
    .line 1198
    iget-object v0, p0, Lcom/google/common/collect/ao;->cBB:Lcom/google/common/collect/af;

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
    .line 1211
    iget-object v0, p0, Lcom/google/common/collect/ao;->cBC:Lcom/google/common/collect/af;

    return-object v0
.end method

.method public final bf(J)V
    .locals 1

    .prologue
    .line 1162
    iput-wide p1, p0, Lcom/google/common/collect/ao;->time:J

    .line 1163
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
    .line 1175
    iput-object p1, p0, Lcom/google/common/collect/ao;->cBE:Lcom/google/common/collect/af;

    .line 1176
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
    .line 1188
    iput-object p1, p0, Lcom/google/common/collect/ao;->cBF:Lcom/google/common/collect/af;

    .line 1189
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
    .line 1203
    iput-object p1, p0, Lcom/google/common/collect/ao;->cBB:Lcom/google/common/collect/af;

    .line 1204
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
    .line 1216
    iput-object p1, p0, Lcom/google/common/collect/ao;->cBC:Lcom/google/common/collect/af;

    .line 1217
    return-void
.end method
