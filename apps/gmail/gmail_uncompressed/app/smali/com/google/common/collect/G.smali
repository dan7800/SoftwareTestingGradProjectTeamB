.class final Lcom/google/common/collect/G;
.super Lcom/google/common/collect/H;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/H",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic cAM:Ljava/lang/Iterable;

.field final synthetic cAN:Lcom/google/common/base/b;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/b;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/google/common/collect/G;->cAM:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/G;->cAN:Lcom/google/common/base/b;

    invoke-direct {p0}, Lcom/google/common/collect/H;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/common/collect/G;->cAM:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/G;->cAN:Lcom/google/common/base/b;

    invoke-static {v0, v1}, Lcom/google/common/collect/I;->a(Ljava/util/Iterator;Lcom/google/common/base/b;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
