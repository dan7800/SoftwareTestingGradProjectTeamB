.class public final Lorg/apache/james/mime4j/field/address/f;
.super Lorg/apache/james/mime4j/field/address/a;
.source "SourceFile"


# instance fields
.field private cEq:Lorg/apache/james/mime4j/field/address/h;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/h;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/a;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/f;->name:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/apache/james/mime4j/field/address/f;->cEq:Lorg/apache/james/mime4j/field/address/h;

    .line 40
    return-void
.end method


# virtual methods
.method protected final o(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/james/mime4j/field/address/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/f;->cEq:Lorg/apache/james/mime4j/field/address/h;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/h;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/f;->cEq:Lorg/apache/james/mime4j/field/address/h;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/h;->fM(I)Lorg/apache/james/mime4j/field/address/g;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/f;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/f;->cEq:Lorg/apache/james/mime4j/field/address/h;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/h;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 62
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/f;->cEq:Lorg/apache/james/mime4j/field/address/h;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/address/h;->fM(I)Lorg/apache/james/mime4j/field/address/g;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/g;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/f;->cEq:Lorg/apache/james/mime4j/field/address/h;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/h;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 64
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
