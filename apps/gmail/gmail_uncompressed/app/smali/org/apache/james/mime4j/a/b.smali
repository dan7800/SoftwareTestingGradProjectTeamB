.class public final Lorg/apache/james/mime4j/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cAW:I

.field private cDY:Lorg/apache/james/mime4j/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/a/b;->cAW:I

    .line 30
    new-instance v0, Lorg/apache/james/mime4j/a/e;

    invoke-direct {v0}, Lorg/apache/james/mime4j/a/e;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/a/b;->cDY:Lorg/apache/james/mime4j/a/e;

    .line 31
    return-void
.end method


# virtual methods
.method public final CW()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/james/mime4j/a/b;->cDY:Lorg/apache/james/mime4j/a/e;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/a/e;->size()I

    move-result v0

    return v0
.end method

.method public final aaG()B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/james/mime4j/a/b;->cDY:Lorg/apache/james/mime4j/a/e;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/a/e;->aaH()B

    move-result v0

    return v0
.end method

.method public final c(B)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/james/mime4j/a/b;->cDY:Lorg/apache/james/mime4j/a/e;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/a/e;->e(B)Z

    .line 40
    return-void
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lorg/apache/james/mime4j/a/b;->cAW:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 52
    new-instance v0, Lorg/apache/james/mime4j/a/e;

    iget v1, p0, Lorg/apache/james/mime4j/a/b;->cAW:I

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/a/e;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/a/b;->cDY:Lorg/apache/james/mime4j/a/e;

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/a/e;

    invoke-direct {v0}, Lorg/apache/james/mime4j/a/e;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/a/b;->cDY:Lorg/apache/james/mime4j/a/e;

    goto :goto_0
.end method
