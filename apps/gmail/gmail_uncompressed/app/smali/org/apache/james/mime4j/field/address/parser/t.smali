.class public Lorg/apache/james/mime4j/field/address/parser/t;
.super Lorg/apache/james/mime4j/field/address/parser/p;
.source "SourceFile"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/r;


# instance fields
.field protected cFT:Lorg/apache/james/mime4j/field/address/parser/r;

.field protected cFU:[Lorg/apache/james/mime4j/field/address/parser/r;

.field protected id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/p;-><init>()V

    .line 12
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/t;->id:I

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/james/mime4j/field/address/parser/r;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/t;->cFU:[Lorg/apache/james/mime4j/field/address/parser/r;

    if-nez v0, :cond_1

    .line 31
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [Lorg/apache/james/mime4j/field/address/parser/r;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/t;->cFU:[Lorg/apache/james/mime4j/field/address/parser/r;

    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/t;->cFU:[Lorg/apache/james/mime4j/field/address/parser/r;

    aput-object p1, v0, p2

    .line 38
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/t;->cFU:[Lorg/apache/james/mime4j/field/address/parser/r;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    .line 33
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [Lorg/apache/james/mime4j/field/address/parser/r;

    .line 34
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/t;->cFU:[Lorg/apache/james/mime4j/field/address/parser/r;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/t;->cFU:[Lorg/apache/james/mime4j/field/address/parser/r;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/t;->cFU:[Lorg/apache/james/mime4j/field/address/parser/r;

    goto :goto_0
.end method

.method public final abm()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/t;->cFU:[Lorg/apache/james/mime4j/field/address/parser/r;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/t;->cFU:[Lorg/apache/james/mime4j/field/address/parser/r;

    array-length v0, v0

    goto :goto_0
.end method

.method public final d(Lorg/apache/james/mime4j/field/address/parser/r;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/t;->cFT:Lorg/apache/james/mime4j/field/address/parser/r;

    return-void
.end method

.method public final fZ(I)Lorg/apache/james/mime4j/field/address/parser/r;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/t;->cFU:[Lorg/apache/james/mime4j/field/address/parser/r;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/o;->cFx:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/t;->id:I

    aget-object v0, v0, v1

    return-object v0
.end method
