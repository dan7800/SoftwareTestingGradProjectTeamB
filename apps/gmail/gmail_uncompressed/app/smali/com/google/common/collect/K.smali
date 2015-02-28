.class final Lcom/google/common/collect/K;
.super Lcom/google/common/collect/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic cAQ:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p2, p0, Lcom/google/common/collect/K;->cAQ:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/common/collect/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/google/common/collect/K;->cAQ:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
