.class public final Lorg/apache/james/mime4j/field/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/james/mime4j/field/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/k;
    .locals 2

    .prologue
    .line 45
    invoke-static {p2}, Lorg/apache/james/mime4j/a/c;->hV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Lorg/apache/james/mime4j/field/q;

    invoke-direct {v1, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
