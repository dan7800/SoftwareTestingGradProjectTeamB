.class public abstract Lorg/apache/james/mime4j/field/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cEm:Ljava/util/regex/Pattern;

.field private static final cEn:Lorg/apache/james/mime4j/field/i;


# instance fields
.field private final bck:Ljava/lang/String;

.field private final cEo:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "^([\\x21-\\x39\\x3b-\\x7e]+)[ \t]*:"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/k;->cEm:Ljava/util/regex/Pattern;

    .line 57
    new-instance v0, Lorg/apache/james/mime4j/field/i;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/i;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/k;->cEn:Lorg/apache/james/mime4j/field/i;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/james/mime4j/field/k;->name:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lorg/apache/james/mime4j/field/k;->bck:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lorg/apache/james/mime4j/field/k;->cEo:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static hW(Ljava/lang/String;)Lorg/apache/james/mime4j/field/k;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 90
    const-string v0, "\r|\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    sget-object v1, Lorg/apache/james/mime4j/field/k;->cEm:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid field in string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_1

    .line 103
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_1
    sget-object v1, Lorg/apache/james/mime4j/field/k;->cEn:Lorg/apache/james/mime4j/field/i;

    invoke-virtual {v1, v2, v0, p0}, Lorg/apache/james/mime4j/field/i;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/james/mime4j/field/k;->cEo:Ljava/lang/String;

    return-object v0
.end method
