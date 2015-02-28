.class public final Lorg/apache/james/mime4j/field/o;
.super Lorg/apache/james/mime4j/field/k;
.source "SourceFile"


# instance fields
.field private cEg:Lorg/apache/james/mime4j/field/address/parser/ParseException;

.field private cEq:Lorg/apache/james/mime4j/field/address/h;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/field/address/h;Lorg/apache/james/mime4j/field/address/parser/ParseException;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p4, p0, Lorg/apache/james/mime4j/field/o;->cEq:Lorg/apache/james/mime4j/field/address/h;

    .line 38
    iput-object p5, p0, Lorg/apache/james/mime4j/field/o;->cEg:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .line 39
    return-void
.end method
