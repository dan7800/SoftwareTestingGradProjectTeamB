.class final Lcom/google/common/collect/ap;
.super Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/ar",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final cBY:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1819
    iput-object p1, p0, Lcom/google/common/collect/ap;->cBY:Ljava/lang/Object;

    .line 1820
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
    .line 1829
    const/4 v0, 0x0

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
    .line 1848
    return-void
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/af;)Lcom/google/common/collect/ar;
    .locals 0
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
    .line 1834
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/google/common/collect/ap;->cBY:Ljava/lang/Object;

    return-object v0
.end method
