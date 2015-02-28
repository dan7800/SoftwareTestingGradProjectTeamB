.class final Lorg/apache/james/mime4j/field/address/parser/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cFA:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/apache/james/mime4j/field/address/parser/r;",
            ">;"
        }
    .end annotation
.end field

.field private cFB:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cFC:I

.field private cFD:I

.field private cFE:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFA:Ljava/util/Stack;

    .line 15
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFB:Ljava/util/Stack;

    .line 16
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFC:I

    .line 17
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFD:I

    .line 18
    return-void
.end method

.method private abe()Lorg/apache/james/mime4j/field/address/parser/r;
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFC:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFC:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFD:I

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFB:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFD:I

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFA:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/r;

    return-object v0
.end method


# virtual methods
.method final abd()Lorg/apache/james/mime4j/field/address/parser/r;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFA:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/r;

    return-object v0
.end method

.method final abf()V
    .locals 2

    .prologue
    .line 70
    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFC:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFD:I

    if-le v0, v1, :cond_0

    .line 71
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/q;->abe()Lorg/apache/james/mime4j/field/address/parser/r;

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFB:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFD:I

    .line 74
    return-void
.end method

.method final abg()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFB:Ljava/util/Stack;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFD:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFC:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFD:I

    .line 80
    return-void
.end method

.method final c(Lorg/apache/james/mime4j/field/address/parser/r;)V
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFC:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFD:I

    sub-int v1, v0, v1

    .line 109
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFB:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFD:I

    move v0, v1

    .line 110
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/q;->abe()Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    .line 112
    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/field/address/parser/r;->d(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 113
    invoke-interface {p1, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/r;->a(Lorg/apache/james/mime4j/field/address/parser/r;I)V

    move v0, v1

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFA:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFC:I

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/q;->cFE:Z

    .line 118
    return-void
.end method
