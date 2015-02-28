.class final Lorg/apache/james/mime4j/field/address/d;
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
        "Lorg/apache/james/mime4j/field/address/parser/r;",
        ">;"
    }
.end annotation


# instance fields
.field private cEt:Lorg/apache/james/mime4j/field/address/parser/t;

.field private index:I

.field private len:I


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/t;)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/d;->cEt:Lorg/apache/james/mime4j/field/address/parser/t;

    .line 222
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/parser/t;->abm()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/d;->len:I

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/d;->index:I

    .line 224
    return-void
.end method


# virtual methods
.method public final aaK()Lorg/apache/james/mime4j/field/address/parser/r;
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/d;->cEt:Lorg/apache/james/mime4j/field/address/parser/t;

    iget v1, p0, Lorg/apache/james/mime4j/field/address/d;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/d;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/t;->fZ(I)Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lorg/apache/james/mime4j/field/address/d;->index:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/d;->len:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/d;->aaK()Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
