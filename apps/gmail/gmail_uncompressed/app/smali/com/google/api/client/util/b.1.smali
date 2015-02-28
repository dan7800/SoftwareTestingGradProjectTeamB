.class final Lcom/google/api/client/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic cyt:Lcom/google/api/client/util/a;

.field private index:I


# direct methods
.method constructor <init>(Lcom/google/api/client/util/a;I)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/api/client/util/b;->cyt:Lcom/google/api/client/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput p2, p0, Lcom/google/api/client/util/b;->index:I

    .line 403
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 424
    if-ne p0, p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_2

    move v0, v1

    .line 428
    goto :goto_0

    .line 430
    :cond_2
    check-cast p1, Ljava/util/Map$Entry;

    .line 431
    invoke-virtual {p0}, Lcom/google/api/client/util/b;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/api/client/util/G;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/api/client/util/b;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/api/client/util/G;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/api/client/util/b;->cyt:Lcom/google/api/client/util/a;

    iget v1, p0, Lcom/google/api/client/util/b;->index:I

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/a;->fe(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/api/client/util/b;->cyt:Lcom/google/api/client/util/a;

    iget v1, p0, Lcom/google/api/client/util/b;->index:I

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/a;->az(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/google/api/client/util/b;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/api/client/util/b;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/api/client/util/b;->cyt:Lcom/google/api/client/util/a;

    iget v1, p0, Lcom/google/api/client/util/b;->index:I

    invoke-virtual {v0, v1, p1}, Lcom/google/api/client/util/a;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
