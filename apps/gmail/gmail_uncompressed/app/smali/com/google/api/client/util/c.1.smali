.class final Lcom/google/api/client/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic cyt:Lcom/google/api/client/util/a;

.field private cyu:Z

.field private cyv:I


# direct methods
.method constructor <init>(Lcom/google/api/client/util/a;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/api/client/util/c;->cyt:Lcom/google/api/client/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 375
    iget v0, p0, Lcom/google/api/client/util/c;->cyv:I

    iget-object v1, p0, Lcom/google/api/client/util/c;->cyt:Lcom/google/api/client/util/a;

    iget v1, v1, Lcom/google/api/client/util/a;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 369
    iget v0, p0, Lcom/google/api/client/util/c;->cyv:I

    iget-object v1, p0, Lcom/google/api/client/util/c;->cyt:Lcom/google/api/client/util/a;

    iget v1, v1, Lcom/google/api/client/util/a;->size:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v1, p0, Lcom/google/api/client/util/c;->cyv:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/api/client/util/c;->cyv:I

    new-instance v1, Lcom/google/api/client/util/b;

    iget-object v2, p0, Lcom/google/api/client/util/c;->cyt:Lcom/google/api/client/util/a;

    invoke-direct {v1, v2, v0}, Lcom/google/api/client/util/b;-><init>(Lcom/google/api/client/util/a;I)V

    return-object v1
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 388
    iget v0, p0, Lcom/google/api/client/util/c;->cyv:I

    add-int/lit8 v0, v0, -0x1

    .line 389
    iget-boolean v1, p0, Lcom/google/api/client/util/c;->cyu:Z

    if-nez v1, :cond_0

    if-gez v0, :cond_1

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/google/api/client/util/c;->cyt:Lcom/google/api/client/util/a;

    invoke-virtual {v1, v0}, Lcom/google/api/client/util/a;->remove(I)Ljava/lang/Object;

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/util/c;->cyu:Z

    .line 394
    return-void
.end method
