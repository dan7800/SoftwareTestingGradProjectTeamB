.class public final Lorg/apache/james/mime4j/field/g;
.super Lorg/apache/james/mime4j/field/k;
.source "SourceFile"


# instance fields
.field private cEi:Ljava/util/Date;

.field private cEj:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lorg/apache/james/mime4j/field/datetime/parser/ParseException;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p4, p0, Lorg/apache/james/mime4j/field/g;->cEi:Ljava/util/Date;

    .line 41
    iput-object p5, p0, Lorg/apache/james/mime4j/field/g;->cEj:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    .line 42
    return-void
.end method


# virtual methods
.method public final getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/james/mime4j/field/g;->cEi:Ljava/util/Date;

    return-object v0
.end method
