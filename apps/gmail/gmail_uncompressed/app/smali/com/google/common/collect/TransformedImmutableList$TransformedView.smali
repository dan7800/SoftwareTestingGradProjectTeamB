.class Lcom/google/common/collect/TransformedImmutableList$TransformedView;
.super Lcom/google/common/collect/TransformedImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedImmutableList",
        "<TD;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TransformedImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TransformedImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/common/collect/TransformedImmutableList$TransformedView;->this$0:Lcom/google/common/collect/TransformedImmutableList;

    .line 37
    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedImmutableList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 38
    return-void
.end method


# virtual methods
.method final aI(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/common/collect/TransformedImmutableList$TransformedView;->this$0:Lcom/google/common/collect/TransformedImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TransformedImmutableList;->aI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/common/collect/TransformedImmutableList;->fi(I)Lcom/google/common/collect/aK;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/TransformedImmutableList;->al(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
