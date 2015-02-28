.class final Lcom/google/common/collect/ab;
.super Lcom/google/common/collect/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/i",
        "<",
        "Lcom/google/common/collect/af",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic cBG:Lcom/google/common/collect/Z;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Z;Lcom/google/common/collect/af;)V
    .locals 0

    .prologue
    .line 3399
    iput-object p1, p0, Lcom/google/common/collect/ab;->cBG:Lcom/google/common/collect/Z;

    invoke-direct {p0, p2}, Lcom/google/common/collect/i;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic aC(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3399
    check-cast p1, Lcom/google/common/collect/af;

    invoke-interface {p1}, Lcom/google/common/collect/af;->ZW()Lcom/google/common/collect/af;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ab;->cBG:Lcom/google/common/collect/Z;

    iget-object v1, v1, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
