.class final Lorg/apache/james/mime4j/field/datetime/parser/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private IH:I

.field private cGr:Ljava/lang/String;

.field private month:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/b;->cGr:Ljava/lang/String;

    .line 106
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/b;->month:I

    .line 107
    iput p3, p0, Lorg/apache/james/mime4j/field/datetime/parser/b;->IH:I

    .line 108
    return-void
.end method


# virtual methods
.method public final abu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/b;->cGr:Ljava/lang/String;

    return-object v0
.end method

.method public final getDay()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/b;->IH:I

    return v0
.end method

.method public final getMonth()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/b;->month:I

    return v0
.end method
