.class final Lcom/google/common/collect/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic cAN:Lcom/google/common/base/b;

.field final synthetic cAS:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/b;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/google/common/collect/O;->cAS:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/common/collect/O;->cAN:Lcom/google/common/base/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/common/collect/O;->cAS:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 811
    iget-object v0, p0, Lcom/google/common/collect/O;->cAS:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 812
    iget-object v1, p0, Lcom/google/common/collect/O;->cAN:Lcom/google/common/base/b;

    invoke-interface {v1, v0}, Lcom/google/common/base/b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/google/common/collect/O;->cAS:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 817
    return-void
.end method
