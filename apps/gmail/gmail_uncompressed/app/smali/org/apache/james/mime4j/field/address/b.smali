.class public final Lorg/apache/james/mime4j/field/address/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cEr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/james/mime4j/field/address/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/b;->cEr:Ljava/util/ArrayList;

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/b;->cEr:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private fL(I)Lorg/apache/james/mime4j/field/address/a;
    .locals 1

    .prologue
    .line 59
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/b;->cEr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/b;->cEr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/a;

    return-object v0
.end method

.method public static hX(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/b;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/Reader;)V

    .line 113
    invoke-static {}, Lorg/apache/james/mime4j/field/address/c;->aaJ()Lorg/apache/james/mime4j/field/address/c;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaN()Lorg/apache/james/mime4j/field/address/parser/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/c;->a(Lorg/apache/james/mime4j/field/address/parser/c;)Lorg/apache/james/mime4j/field/address/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final aaI()Lorg/apache/james/mime4j/field/address/h;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    move v0, v1

    .line 72
    :goto_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/b;->cEr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 73
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/b;->fL(I)Lorg/apache/james/mime4j/field/address/a;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/james/mime4j/field/address/g;

    if-nez v3, :cond_0

    move v0, v2

    .line 79
    :goto_1
    if-nez v0, :cond_1

    .line 80
    new-instance v0, Lorg/apache/james/mime4j/field/address/h;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/b;->cEr:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/address/h;-><init>(Ljava/util/ArrayList;Z)V

    .line 90
    :goto_2
    return-object v0

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 83
    :goto_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/b;->cEr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 84
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/b;->fL(I)Lorg/apache/james/mime4j/field/address/a;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/a;->n(Ljava/util/ArrayList;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 90
    :cond_2
    new-instance v0, Lorg/apache/james/mime4j/field/address/h;

    invoke-direct {v0, v2, v1}, Lorg/apache/james/mime4j/field/address/h;-><init>(Ljava/util/ArrayList;Z)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method
