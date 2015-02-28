.class final Lcom/google/api/client/util/Q;
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
.field final synthetic czI:Lcom/google/api/client/util/P;

.field index:I

.field final length:I


# direct methods
.method constructor <init>(Lcom/google/api/client/util/P;)V
    .locals 1

    .prologue
    .line 364
    iput-object p1, p0, Lcom/google/api/client/util/Q;->czI:Lcom/google/api/client/util/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iget-object v0, p0, Lcom/google/api/client/util/Q;->czI:Lcom/google/api/client/util/P;

    iget-object v0, v0, Lcom/google/api/client/util/P;->czH:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/api/client/util/Q;->length:I

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/client/util/Q;->index:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 370
    iget v0, p0, Lcom/google/api/client/util/Q;->index:I

    iget v1, p0, Lcom/google/api/client/util/Q;->length:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/google/api/client/util/Q;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/util/Q;->czI:Lcom/google/api/client/util/P;

    iget-object v0, v0, Lcom/google/api/client/util/P;->czH:Ljava/lang/Object;

    iget v1, p0, Lcom/google/api/client/util/Q;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/api/client/util/Q;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 381
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
