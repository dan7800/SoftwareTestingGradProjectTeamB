.class final Lcom/google/common/collect/aC;
.super Lcom/google/common/collect/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/h",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic cCf:Lcom/google/common/collect/RegularImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableList;II)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/common/collect/aC;->cCf:Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/h;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/common/collect/aC;->cCf:Lcom/google/common/collect/RegularImmutableList;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableList;->a(Lcom/google/common/collect/RegularImmutableList;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/aC;->cCf:Lcom/google/common/collect/RegularImmutableList;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableList;->b(Lcom/google/common/collect/RegularImmutableList;)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
