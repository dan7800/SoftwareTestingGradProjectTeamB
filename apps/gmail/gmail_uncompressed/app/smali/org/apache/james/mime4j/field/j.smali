.class public Lorg/apache/james/mime4j/field/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/james/mime4j/field/l;


# instance fields
.field private cEk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/field/l;",
            ">;"
        }
    .end annotation
.end field

.field private cEl:Lorg/apache/james/mime4j/field/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/j;->cEk:Ljava/util/Map;

    .line 24
    new-instance v0, Lorg/apache/james/mime4j/field/r;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/r;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/j;->cEl:Lorg/apache/james/mime4j/field/l;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/apache/james/mime4j/field/l;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lorg/apache/james/mime4j/field/j;->cEk:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/k;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/james/mime4j/field/j;->cEk:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/j;->cEl:Lorg/apache/james/mime4j/field/l;

    .line 45
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/james/mime4j/field/l;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/k;

    move-result-object v0

    return-object v0
.end method
