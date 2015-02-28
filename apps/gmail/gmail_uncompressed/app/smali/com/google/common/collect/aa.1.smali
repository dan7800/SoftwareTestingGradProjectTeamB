.class final Lcom/google/common/collect/aa;
.super Lcom/google/common/collect/T;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/T",
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

.field final synthetic cBG:Lcom/google/common/collect/Z;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Z;)V
    .locals 0

    .prologue
    .line 3285
    iput-object p1, p0, Lcom/google/common/collect/aa;->cBG:Lcom/google/common/collect/Z;

    invoke-direct {p0}, Lcom/google/common/collect/T;-><init>()V

    .line 3295
    iput-object p0, p0, Lcom/google/common/collect/aa;->cBE:Lcom/google/common/collect/af;

    .line 3307
    iput-object p0, p0, Lcom/google/common/collect/aa;->cBF:Lcom/google/common/collect/af;

    return-void
.end method


# virtual methods
.method public final Rs()J
    .locals 2

    .prologue
    .line 3289
    const-wide v0, 0x7fffffffffffffffL

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
    .line 3299
    iget-object v0, p0, Lcom/google/common/collect/aa;->cBE:Lcom/google/common/collect/af;

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
    .line 3311
    iget-object v0, p0, Lcom/google/common/collect/aa;->cBF:Lcom/google/common/collect/af;

    return-object v0
.end method

.method public final bf(J)V
    .locals 0

    .prologue
    .line 3293
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
    .line 3304
    iput-object p1, p0, Lcom/google/common/collect/aa;->cBE:Lcom/google/common/collect/af;

    .line 3305
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
    .line 3316
    iput-object p1, p0, Lcom/google/common/collect/aa;->cBF:Lcom/google/common/collect/af;

    .line 3317
    return-void
.end method
