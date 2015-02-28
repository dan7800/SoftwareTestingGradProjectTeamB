.class final Lcom/google/common/collect/M;
.super Lcom/google/common/collect/aJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/aJ",
        "<TT;>;"
    }
.end annotation


# instance fields
.field cAR:Z

.field final synthetic czH:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/google/common/collect/M;->czH:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/aJ;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 1091
    iget-boolean v0, p0, Lcom/google/common/collect/M;->cAR:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1095
    iget-boolean v0, p0, Lcom/google/common/collect/M;->cAR:Z

    if-eqz v0, :cond_0

    .line 1096
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1098
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/M;->cAR:Z

    .line 1099
    iget-object v0, p0, Lcom/google/common/collect/M;->czH:Ljava/lang/Object;

    return-object v0
.end method
