.class final Lcom/google/common/collect/am;
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


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/af;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1113
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/al;-><init>(Ljava/lang/Object;ILcom/google/common/collect/af;)V

    .line 1118
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->ZO()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/am;->cBB:Lcom/google/common/collect/af;

    .line 1131
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->ZO()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/am;->cBC:Lcom/google/common/collect/af;

    .line 1114
    return-void
.end method


# virtual methods
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
    .line 1123
    iget-object v0, p0, Lcom/google/common/collect/am;->cBB:Lcom/google/common/collect/af;

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
    .line 1136
    iget-object v0, p0, Lcom/google/common/collect/am;->cBC:Lcom/google/common/collect/af;

    return-object v0
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
    .line 1128
    iput-object p1, p0, Lcom/google/common/collect/am;->cBB:Lcom/google/common/collect/af;

    .line 1129
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
    .line 1141
    iput-object p1, p0, Lcom/google/common/collect/am;->cBC:Lcom/google/common/collect/af;

    .line 1142
    return-void
.end method
