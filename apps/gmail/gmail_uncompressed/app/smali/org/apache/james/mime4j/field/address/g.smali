.class public Lorg/apache/james/mime4j/field/address/g;
.super Lorg/apache/james/mime4j/field/address/a;
.source "SourceFile"


# instance fields
.field private cEv:Lorg/apache/james/mime4j/field/address/e;

.field private cEw:Ljava/lang/String;

.field private domain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/field/address/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/a;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/g;->cEv:Lorg/apache/james/mime4j/field/address/e;

    .line 51
    iput-object p2, p0, Lorg/apache/james/mime4j/field/address/g;->cEw:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lorg/apache/james/mime4j/field/address/g;->domain:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public final aaM()Lorg/apache/james/mime4j/field/address/e;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/g;->cEv:Lorg/apache/james/mime4j/field/address/e;

    return-object v0
.end method

.method public cr(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/g;->cEv:Lorg/apache/james/mime4j/field/address/e;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/g;->cEw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/g;->domain:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/g;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/g;->cEv:Lorg/apache/james/mime4j/field/address/e;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/e;->aaL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "@"

    goto :goto_1
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/g;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/g;->cEw:Ljava/lang/String;

    return-object v0
.end method

.method protected final o(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 114
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/g;->cr(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
