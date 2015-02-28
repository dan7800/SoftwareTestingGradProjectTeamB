.class final Lorg/owasp/html/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/owasp/html/N;


# instance fields
.field private final cIn:Lorg/owasp/html/N;

.field cIo:Ljava/lang/String;

.field cIp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/owasp/html/N;)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/owasp/html/C;->cIp:Ljava/util/Set;

    .line 144
    iput-object p1, p0, Lorg/owasp/html/C;->cIn:Lorg/owasp/html/N;

    .line 145
    return-void
.end method


# virtual methods
.method public final abZ()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/owasp/html/C;->cIn:Lorg/owasp/html/N;

    invoke-interface {v0}, Lorg/owasp/html/N;->abZ()V

    .line 149
    return-void
.end method

.method public final aca()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/owasp/html/C;->cIn:Lorg/owasp/html/N;

    invoke-interface {v0}, Lorg/owasp/html/N;->aca()V

    .line 153
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
    .line 156
    iget-object v0, p0, Lorg/owasp/html/C;->cIo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/owasp/html/C;->cIo:Ljava/lang/String;

    .line 159
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 160
    iget-object v2, p0, Lorg/owasp/html/C;->cIp:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lorg/owasp/html/C;->cIn:Lorg/owasp/html/N;

    invoke-interface {v0, p1, p2}, Lorg/owasp/html/N;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 163
    return-void
.end method

.method public final io(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/owasp/html/C;->cIn:Lorg/owasp/html/N;

    invoke-interface {v0, p1}, Lorg/owasp/html/N;->io(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public final ip(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/owasp/html/C;->cIn:Lorg/owasp/html/N;

    invoke-interface {v0, p1}, Lorg/owasp/html/N;->ip(Ljava/lang/String;)V

    .line 167
    return-void
.end method
