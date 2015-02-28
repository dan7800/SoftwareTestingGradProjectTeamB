.class public final Lcom/google/api/client/http/F;
.super Lcom/google/api/client/http/a;
.source "SourceFile"


# instance fields
.field private cxJ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/api/client/http/G;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/google/api/client/http/s;

    const-string v1, "multipart/related"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/s;-><init>(Ljava/lang/String;)V

    const-string v1, "boundary"

    const-string v2, "__END_OF_PART__"

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/s;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/s;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/a;-><init>(Lcom/google/api/client/http/s;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/F;->cxJ:Ljava/util/ArrayList;

    .line 59
    return-void
.end method


# virtual methods
.method public final E(Ljava/util/Collection;)Lcom/google/api/client/http/F;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/api/client/http/k;",
            ">;)",
            "Lcom/google/api/client/http/F;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/api/client/http/F;->cxJ:Ljava/util/ArrayList;

    .line 174
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/k;

    .line 175
    new-instance v2, Lcom/google/api/client/http/G;

    invoke-direct {v2, v0}, Lcom/google/api/client/http/G;-><init>(Lcom/google/api/client/http/k;)V

    iget-object v0, p0, Lcom/google/api/client/http/F;->cxJ:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_0
    return-object p0
.end method

.method public final Xk()Z
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/api/client/http/F;->cxJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/G;

    .line 119
    iget-object v0, v0, Lcom/google/api/client/http/G;->cxk:Lcom/google/api/client/http/k;

    invoke-interface {v0}, Lcom/google/api/client/http/k;->Xk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 62
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lcom/google/api/client/http/F;->Xj()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {v5, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/api/client/http/F;->Xi()Lcom/google/api/client/http/s;

    move-result-object v0

    const-string v2, "boundary"

    invoke-virtual {v0, v2}, Lcom/google/api/client/http/s;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    iget-object v0, p0, Lcom/google/api/client/http/F;->cxJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/G;

    .line 65
    new-instance v2, Lcom/google/api/client/http/o;

    invoke-direct {v2}, Lcom/google/api/client/http/o;-><init>()V

    invoke-virtual {v2}, Lcom/google/api/client/http/o;->Xp()Lcom/google/api/client/http/o;

    move-result-object v8

    .line 66
    iget-object v2, v0, Lcom/google/api/client/http/G;->cxe:Lcom/google/api/client/http/o;

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, v0, Lcom/google/api/client/http/G;->cxe:Lcom/google/api/client/http/o;

    invoke-virtual {v8, v2}, Lcom/google/api/client/http/o;->b(Lcom/google/api/client/http/o;)V

    .line 69
    :cond_1
    invoke-virtual {v8, v1}, Lcom/google/api/client/http/o;->hi(Ljava/lang/String;)Lcom/google/api/client/http/o;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/o;->hm(Ljava/lang/String;)Lcom/google/api/client/http/o;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/o;->hk(Ljava/lang/String;)Lcom/google/api/client/http/o;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/o;->d(Ljava/lang/Long;)Lcom/google/api/client/http/o;

    move-result-object v2

    const-string v3, "Content-Transfer-Encoding"

    invoke-virtual {v2, v3, v1}, Lcom/google/api/client/http/o;->m(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/o;

    .line 75
    iget-object v4, v0, Lcom/google/api/client/http/G;->cxk:Lcom/google/api/client/http/k;

    .line 77
    if-eqz v4, :cond_5

    .line 78
    const-string v2, "Content-Transfer-Encoding"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "binary"

    aput-object v10, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/google/api/client/http/o;->m(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/o;

    .line 79
    invoke-interface {v4}, Lcom/google/api/client/http/k;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/api/client/http/o;->hk(Ljava/lang/String;)Lcom/google/api/client/http/o;

    .line 80
    iget-object v2, v0, Lcom/google/api/client/http/G;->cwQ:Lcom/google/api/client/http/l;

    .line 82
    if-nez v2, :cond_3

    .line 83
    invoke-interface {v4}, Lcom/google/api/client/http/k;->getLength()J

    move-result-wide v2

    move-object v0, v4

    .line 90
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v4, v2, v10

    if-eqz v4, :cond_2

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/api/client/http/o;->d(Ljava/lang/Long;)Lcom/google/api/client/http/o;

    .line 95
    :cond_2
    :goto_2
    const-string v2, "--"

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 97
    const-string v2, "\r\n"

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 99
    invoke-static {v8, v5}, Lcom/google/api/client/http/o;->a(Lcom/google/api/client/http/o;Ljava/io/Writer;)V

    .line 101
    if-eqz v0, :cond_0

    .line 102
    const-string v2, "\r\n"

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    .line 104
    invoke-interface {v0, p1}, Lcom/google/api/client/util/K;->writeTo(Ljava/io/OutputStream;)V

    .line 105
    const-string v0, "\r\n"

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :cond_3
    invoke-interface {v2}, Lcom/google/api/client/http/l;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/api/client/http/o;->hi(Ljava/lang/String;)Lcom/google/api/client/http/o;

    .line 87
    new-instance v0, Lcom/google/api/client/http/m;

    invoke-direct {v0, v4, v2}, Lcom/google/api/client/http/m;-><init>(Lcom/google/api/client/util/K;Lcom/google/api/client/http/l;)V

    .line 88
    invoke-static {v4}, Lcom/google/api/client/http/a;->a(Lcom/google/api/client/http/k;)J

    move-result-wide v2

    goto :goto_1

    .line 109
    :cond_4
    const-string v0, "--"

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 111
    const-string v0, "--"

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 112
    const-string v0, "\r\n"

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    .line 114
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method
