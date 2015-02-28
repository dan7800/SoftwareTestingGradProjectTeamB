.class final Lcom/google/common/collect/X;
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

.field final synthetic cBD:Lcom/google/common/collect/W;


# direct methods
.method constructor <init>(Lcom/google/common/collect/W;)V
    .locals 0

    .prologue
    .line 3157
    iput-object p1, p0, Lcom/google/common/collect/X;->cBD:Lcom/google/common/collect/W;

    invoke-direct {p0}, Lcom/google/common/collect/T;-><init>()V

    .line 3159
    iput-object p0, p0, Lcom/google/common/collect/X;->cBB:Lcom/google/common/collect/af;

    .line 3171
    iput-object p0, p0, Lcom/google/common/collect/X;->cBC:Lcom/google/common/collect/af;

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
    .line 3163
    iget-object v0, p0, Lcom/google/common/collect/X;->cBB:Lcom/google/common/collect/af;

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
    .line 3175
    iget-object v0, p0, Lcom/google/common/collect/X;->cBC:Lcom/google/common/collect/af;

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
    .line 3168
    iput-object p1, p0, Lcom/google/common/collect/X;->cBB:Lcom/google/common/collect/af;

    .line 3169
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
    .line 3180
    iput-object p1, p0, Lcom/google/common/collect/X;->cBC:Lcom/google/common/collect/af;

    .line 3181
    return-void
.end method
