.class final Lorg/apache/james/mime4j/field/datetime/parser/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cGs:I

.field private hour:I

.field private minute:I

.field private second:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/c;->hour:I

    .line 88
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/c;->minute:I

    .line 89
    iput p3, p0, Lorg/apache/james/mime4j/field/datetime/parser/c;->second:I

    .line 90
    iput p4, p0, Lorg/apache/james/mime4j/field/datetime/parser/c;->cGs:I

    .line 91
    return-void
.end method


# virtual methods
.method public final abv()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/c;->cGs:I

    return v0
.end method

.method public final getHour()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/c;->hour:I

    return v0
.end method

.method public final getMinute()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/c;->minute:I

    return v0
.end method

.method public final getSecond()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/c;->second:I

    return v0
.end method
