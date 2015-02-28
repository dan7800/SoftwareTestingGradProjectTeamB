.class final Lorg/apache/james/mime4j/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/james/mime4j/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private cGA:Ljava/lang/String;

.field private cGB:Ljava/lang/String;

.field private cGC:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    iput-object v0, p0, Lorg/apache/james/mime4j/b/b;->cGA:Ljava/lang/String;

    .line 799
    iput-object v0, p0, Lorg/apache/james/mime4j/b/b;->cGB:Ljava/lang/String;

    .line 800
    iput-object v0, p0, Lorg/apache/james/mime4j/b/b;->cGC:[Ljava/lang/String;

    .line 803
    iput-object p1, p0, Lorg/apache/james/mime4j/b/b;->cGA:Ljava/lang/String;

    .line 804
    iput-object p2, p0, Lorg/apache/james/mime4j/b/b;->cGB:Ljava/lang/String;

    .line 805
    iput-object p3, p0, Lorg/apache/james/mime4j/b/b;->cGC:[Ljava/lang/String;

    .line 806
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 797
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lorg/apache/james/mime4j/b/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lorg/apache/james/mime4j/b/b;->cGA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lorg/apache/james/mime4j/b/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lorg/apache/james/mime4j/b/b;->cGB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lorg/apache/james/mime4j/b/b;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lorg/apache/james/mime4j/b/b;->cGC:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 797
    check-cast p1, Lorg/apache/james/mime4j/b/b;

    iget-object v0, p0, Lorg/apache/james/mime4j/b/b;->cGA:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/james/mime4j/b/b;->cGA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
