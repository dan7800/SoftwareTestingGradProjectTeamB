.class public final Lorg/apache/james/mime4j/field/address/i;
.super Lorg/apache/james/mime4j/field/address/g;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/g;)V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/address/g;->aaM()Lorg/apache/james/mime4j/field/address/e;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/address/g;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/address/g;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/james/mime4j/field/address/g;-><init>(Lorg/apache/james/mime4j/field/address/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/i;->name:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public final cr(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/i;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/apache/james/mime4j/field/address/g;->cr(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/i;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
