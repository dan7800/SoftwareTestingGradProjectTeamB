.class final Lcom/google/common/collect/L;
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
.field final synthetic JJ:I

.field final synthetic cAQ:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I[Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1072
    iput-object p2, p0, Lcom/google/common/collect/L;->cAQ:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/collect/L;->JJ:I

    invoke-direct {p0, p1}, Lcom/google/common/collect/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/google/common/collect/L;->cAQ:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/L;->JJ:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
