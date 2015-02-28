.class public final Lorg/apache/james/mime4j/field/e;
.super Lorg/apache/james/mime4j/field/k;
.source "SourceFile"


# instance fields
.field private cDk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cEh:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

.field private mimeType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/field/e;->mimeType:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/e;->cDk:Ljava/util/Map;

    .line 77
    iput-object p4, p0, Lorg/apache/james/mime4j/field/e;->mimeType:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lorg/apache/james/mime4j/field/e;->cDk:Ljava/util/Map;

    .line 79
    iput-object p6, p0, Lorg/apache/james/mime4j/field/e;->cEh:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    .line 80
    return-void
.end method
