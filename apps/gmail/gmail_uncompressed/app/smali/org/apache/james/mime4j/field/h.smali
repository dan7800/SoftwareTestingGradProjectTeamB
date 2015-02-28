.class public Lorg/apache/james/mime4j/field/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/james/mime4j/field/l;


# static fields
.field private static cDh:Lorg/apache/james/mime4j/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lorg/apache/james/mime4j/f;

    invoke-direct {v0}, Lorg/apache/james/mime4j/f;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/h;->cDh:Lorg/apache/james/mime4j/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/k;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 56
    .line 59
    invoke-static {p2}, Lcom/android/mail/utils/E;->cy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    :try_start_0
    invoke-static {v2}, Lorg/apache/james/mime4j/field/datetime/a;->ia(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/a;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 70
    :goto_0
    new-instance v0, Lorg/apache/james/mime4j/field/g;

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lorg/apache/james/mime4j/field/datetime/parser/ParseException;)V

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    sget-object v1, Lorg/apache/james/mime4j/field/h;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isDebugEnabled()Z

    move-object v4, v5

    move-object v5, v0

    .line 66
    goto :goto_0
.end method
