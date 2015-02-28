.class public final Lorg/apache/james/mime4j/field/a;
.super Lorg/apache/james/mime4j/field/k;
.source "SourceFile"


# instance fields
.field private cEf:Lorg/apache/james/mime4j/field/address/b;

.field private cEg:Lorg/apache/james/mime4j/field/address/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/field/address/b;Lorg/apache/james/mime4j/field/address/parser/ParseException;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p4, p0, Lorg/apache/james/mime4j/field/a;->cEf:Lorg/apache/james/mime4j/field/address/b;

    .line 36
    iput-object p5, p0, Lorg/apache/james/mime4j/field/a;->cEg:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .line 37
    return-void
.end method
