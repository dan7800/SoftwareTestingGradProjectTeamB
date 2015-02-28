.class final Lorg/owasp/html/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/owasp/html/M;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/owasp/html/M;"
    }
.end annotation


# instance fields
.field final cIh:Lorg/owasp/html/C;

.field cIk:Lorg/owasp/html/N;

.field final cIl:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final cIm:Lorg/owasp/html/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/owasp/html/z",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/owasp/html/C;Lorg/owasp/html/z;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/owasp/html/C;",
            "Lorg/owasp/html/z",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/owasp/html/B;->cIh:Lorg/owasp/html/C;

    .line 87
    iput-object p3, p0, Lorg/owasp/html/B;->cIl:Ljava/lang/Object;

    .line 88
    iput-object p2, p0, Lorg/owasp/html/B;->cIm:Lorg/owasp/html/z;

    .line 89
    return-void
.end method


# virtual methods
.method public final abZ()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/owasp/html/B;->cIk:Lorg/owasp/html/N;

    invoke-interface {v0}, Lorg/owasp/html/N;->abZ()V

    .line 93
    return-void
.end method

.method public final aca()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/owasp/html/B;->cIk:Lorg/owasp/html/N;

    invoke-interface {v0}, Lorg/owasp/html/N;->aca()V

    .line 97
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/owasp/html/B;->cIh:Lorg/owasp/html/C;

    iput-object p1, v0, Lorg/owasp/html/C;->cIo:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lorg/owasp/html/B;->cIh:Lorg/owasp/html/C;

    iget-object v0, v0, Lorg/owasp/html/C;->cIp:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 102
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 103
    iget-object v2, p0, Lorg/owasp/html/B;->cIh:Lorg/owasp/html/C;

    iget-object v2, v2, Lorg/owasp/html/C;->cIp:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/B;->cIk:Lorg/owasp/html/N;

    invoke-interface {v0, p1, p2}, Lorg/owasp/html/N;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 110
    iget-object v0, p0, Lorg/owasp/html/B;->cIh:Lorg/owasp/html/C;

    iget-object v1, v0, Lorg/owasp/html/C;->cIo:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lorg/owasp/html/B;->cIh:Lorg/owasp/html/C;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/owasp/html/C;->cIo:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lorg/owasp/html/B;->cIh:Lorg/owasp/html/C;

    iget-object v0, v0, Lorg/owasp/html/C;->cIp:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 113
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    iget-object v2, p0, Lorg/owasp/html/B;->cIh:Lorg/owasp/html/C;

    iget-object v2, v2, Lorg/owasp/html/C;->cIp:Ljava/util/Set;

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 117
    :goto_1
    iget-object v2, p0, Lorg/owasp/html/B;->cIh:Lorg/owasp/html/C;

    iget-object v2, v2, Lorg/owasp/html/C;->cIp:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 119
    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lorg/owasp/html/B;->cIm:Lorg/owasp/html/z;

    iget-object v1, p0, Lorg/owasp/html/B;->cIl:Ljava/lang/Object;

    .line 122
    :cond_1
    array-length v0, v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lorg/owasp/html/B;->cIm:Lorg/owasp/html/z;

    iget-object v0, p0, Lorg/owasp/html/B;->cIl:Ljava/lang/Object;

    .line 127
    :cond_2
    return-void

    .line 113
    :cond_3
    invoke-static {}, Lorg/owasp/html/A;->kK()[Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final io(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/owasp/html/B;->cIk:Lorg/owasp/html/N;

    invoke-interface {v0, p1}, Lorg/owasp/html/N;->io(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public final ip(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/owasp/html/B;->cIk:Lorg/owasp/html/N;

    invoke-interface {v0, p1}, Lorg/owasp/html/N;->ip(Ljava/lang/String;)V

    .line 131
    return-void
.end method
