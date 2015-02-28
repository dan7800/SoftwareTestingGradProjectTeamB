.class abstract Lcom/a/a/e;
.super Ljava/nio/charset/Charset;
.source "SourceFile"


# static fields
.field private static final aRJ:Ljava/util/List;


# instance fields
.field final aRK:Z

.field aRL:Lcom/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US-ASCII"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ISO-8859-1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UTF-8"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UTF-16"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UTF-16LE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UTF-16BE"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/a/a/e;->aRJ:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/a/a/a;

    invoke-direct {v0, p3}, Lcom/a/a/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/e;->aRL:Lcom/a/a/a;

    .line 67
    iput-boolean p4, p0, Lcom/a/a/e;->aRK:Z

    .line 68
    return-void
.end method


# virtual methods
.method abstract Br()B
.end method

.method abstract Bs()B
.end method

.method public contains(Ljava/nio/charset/Charset;)Z
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/a/a/e;->aRJ:Ljava/util/List;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract e(C)Z
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/a/a/f;

    iget-object v1, p0, Lcom/a/a/e;->aRL:Lcom/a/a/a;

    iget-boolean v2, p0, Lcom/a/a/e;->aRK:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/a/a/f;-><init>(Lcom/a/a/e;Lcom/a/a/a;Z)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lcom/a/a/g;

    iget-object v1, p0, Lcom/a/a/e;->aRL:Lcom/a/a/a;

    iget-boolean v2, p0, Lcom/a/a/e;->aRK:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/a/a/g;-><init>(Lcom/a/a/e;Lcom/a/a/a;Z)V

    return-object v0
.end method
