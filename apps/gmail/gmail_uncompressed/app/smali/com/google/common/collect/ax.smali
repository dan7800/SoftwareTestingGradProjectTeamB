.class final Lcom/google/common/collect/ax;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TV;>;",
        "Lcom/google/common/collect/ar",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final cBT:Lcom/google/common/collect/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/af;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1743
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1744
    iput-object p3, p0, Lcom/google/common/collect/ax;->cBT:Lcom/google/common/collect/af;

    .line 1745
    return-void
.end method


# virtual methods
.method public final ZR()Lcom/google/common/collect/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/google/common/collect/ax;->cBT:Lcom/google/common/collect/af;

    return-object v0
.end method

.method public final ZS()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1754
    invoke-virtual {p0}, Lcom/google/common/collect/ax;->clear()V

    .line 1755
    return-void
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/af;)Lcom/google/common/collect/ar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/ar",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1760
    new-instance v0, Lcom/google/common/collect/ax;

    invoke-virtual {p0}, Lcom/google/common/collect/ax;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/google/common/collect/ax;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/af;)V

    return-object v0
.end method
