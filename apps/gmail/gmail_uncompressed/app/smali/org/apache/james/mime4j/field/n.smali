.class public Lorg/apache/james/mime4j/field/n;
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
    .line 50
    new-instance v0, Lorg/apache/james/mime4j/f;

    invoke-direct {v0}, Lorg/apache/james/mime4j/f;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/n;->cDh:Lorg/apache/james/mime4j/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/k;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 53
    .line 56
    :try_start_0
    invoke-static {p2}, Lorg/apache/james/mime4j/field/address/b;->hX(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/b;->aaI()Lorg/apache/james/mime4j/field/address/h;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/h;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/address/h;->fM(I)Lorg/apache/james/mime4j/field/address/g;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    move-object v5, v1

    move-object v4, v0

    .line 67
    :goto_1
    new-instance v0, Lorg/apache/james/mime4j/field/m;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/field/address/g;Lorg/apache/james/mime4j/field/address/parser/ParseException;)V

    return-object v0

    .line 61
    :catch_0
    move-exception v5

    .line 62
    sget-object v0, Lorg/apache/james/mime4j/field/n;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isDebugEnabled()Z

    move-object v4, v1

    .line 63
    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
