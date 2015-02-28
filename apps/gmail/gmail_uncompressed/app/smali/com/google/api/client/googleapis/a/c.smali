.class public abstract Lcom/google/api/client/googleapis/a/c;
.super Lcom/google/api/client/util/GenericData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/util/GenericData;"
    }
.end annotation


# instance fields
.field private cvW:Z

.field private cwe:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

.field private final cwq:Lcom/google/api/client/googleapis/a/a;

.field private final cwr:Ljava/lang/String;

.field private final cws:Ljava/lang/String;

.field private final cwt:Lcom/google/api/client/http/k;

.field private cwu:Lcom/google/api/client/http/o;

.field private cwv:Lcom/google/api/client/http/o;

.field private cww:I

.field private cwx:Ljava/lang/String;

.field private cwy:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/client/googleapis/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/k;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/a/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/api/client/http/k;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 68
    new-instance v0, Lcom/google/api/client/http/o;

    invoke-direct {v0}, Lcom/google/api/client/http/o;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/c;->cwu:Lcom/google/api/client/http/o;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/googleapis/a/c;->cww:I

    .line 103
    invoke-static {p5}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/c;->cwy:Ljava/lang/Class;

    .line 104
    invoke-static {p1}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/a/a;

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/c;->cwq:Lcom/google/api/client/googleapis/a/a;

    .line 105
    invoke-static {p2}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/c;->cwr:Ljava/lang/String;

    .line 106
    invoke-static {p3}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/c;->cws:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lcom/google/api/client/googleapis/a/c;->cwt:Lcom/google/api/client/http/k;

    .line 109
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/a/a;->WZ()Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/google/api/client/googleapis/a/c;->cwu:Lcom/google/api/client/http/o;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/o;->hm(Ljava/lang/String;)Lcom/google/api/client/http/o;

    .line 113
    :cond_0
    return-void
.end method

.method private Xd()Lcom/google/api/client/http/j;
    .locals 3

    .prologue
    .line 256
    new-instance v0, Lcom/google/api/client/http/j;

    iget-object v1, p0, Lcom/google/api/client/googleapis/a/c;->cwq:Lcom/google/api/client/googleapis/a/a;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/a/a;->WY()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/a/c;->cws:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/google/api/client/http/UriTemplate;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public Xc()Lcom/google/api/client/googleapis/a/a;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/c;->cwq:Lcom/google/api/client/googleapis/a/a;

    return-object v0
.end method

.method public final Xe()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 460
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/c;->cwe:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/api/client/googleapis/a/c;->cwe:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/H;->cp(Z)V

    invoke-static {v1}, Lcom/google/api/client/util/H;->cp(Z)V

    iget-object v0, p0, Lcom/google/api/client/googleapis/a/c;->cwr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/a/c;->Xc()Lcom/google/api/client/googleapis/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/a/a;->Xa()Lcom/google/api/client/http/u;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/c;->Xd()Lcom/google/api/client/http/j;

    move-result-object v2

    iget-object v3, p0, Lcom/google/api/client/googleapis/a/c;->cwt:Lcom/google/api/client/http/k;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/api/client/http/u;->a(Ljava/lang/String;Lcom/google/api/client/http/j;Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;

    move-result-object v0

    new-instance v1, Lcom/google/api/client/googleapis/b;

    invoke-direct {v1}, Lcom/google/api/client/googleapis/b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/api/client/googleapis/b;->b(Lcom/google/api/client/http/t;)V

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/a/c;->Xc()Lcom/google/api/client/googleapis/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/a/a;->Xb()Lcom/google/api/client/util/F;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/t;->a(Lcom/google/api/client/util/F;)Lcom/google/api/client/http/t;

    iget-object v1, p0, Lcom/google/api/client/googleapis/a/c;->cwt:Lcom/google/api/client/http/k;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/api/client/googleapis/a/c;->cwr:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/api/client/googleapis/a/c;->cwr:Ljava/lang/String;

    const-string v2, "PUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/api/client/googleapis/a/c;->cwr:Ljava/lang/String;

    const-string v2, "PATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/google/api/client/http/e;

    invoke-direct {v1}, Lcom/google/api/client/http/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/t;->b(Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;

    :cond_1
    invoke-virtual {v0}, Lcom/google/api/client/http/t;->XD()Lcom/google/api/client/http/o;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/a/c;->cwu:Lcom/google/api/client/http/o;

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/o;->putAll(Ljava/util/Map;)V

    iget-boolean v1, p0, Lcom/google/api/client/googleapis/a/c;->cvW:Z

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/api/client/http/h;

    invoke-direct {v1}, Lcom/google/api/client/http/h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/t;->a(Lcom/google/api/client/http/l;)Lcom/google/api/client/http/t;

    :cond_2
    invoke-virtual {v0}, Lcom/google/api/client/http/t;->XH()Lcom/google/api/client/http/y;

    move-result-object v1

    new-instance v2, Lcom/google/api/client/googleapis/a/d;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/api/client/googleapis/a/d;-><init>(Lcom/google/api/client/googleapis/a/c;Lcom/google/api/client/http/y;Lcom/google/api/client/http/t;)V

    invoke-virtual {v0, v2}, Lcom/google/api/client/http/t;->a(Lcom/google/api/client/http/y;)Lcom/google/api/client/http/t;

    invoke-virtual {v0}, Lcom/google/api/client/http/t;->XN()Lcom/google/api/client/http/w;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Lcom/google/api/client/http/w;->XD()Lcom/google/api/client/http/o;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/googleapis/a/c;->cwv:Lcom/google/api/client/http/o;

    invoke-virtual {v0}, Lcom/google/api/client/http/w;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/google/api/client/googleapis/a/c;->cww:I

    invoke-virtual {v0}, Lcom/google/api/client/http/w;->KB()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/googleapis/a/c;->cwx:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/api/client/googleapis/a/c;->cwy:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/w;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/c;->Xd()Lcom/google/api/client/http/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/a/c;->Xc()Lcom/google/api/client/googleapis/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/a/a;->Xa()Lcom/google/api/client/http/u;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/a/c;->cwr:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/api/client/googleapis/a/c;->cwt:Lcom/google/api/client/http/k;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/api/client/http/u;->a(Ljava/lang/String;Lcom/google/api/client/http/j;Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/t;->XL()Z

    move-result v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/a/c;->cwe:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    iget-object v3, p0, Lcom/google/api/client/googleapis/a/c;->cwu:Lcom/google/api/client/http/o;

    invoke-virtual {v2, v3}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->a(Lcom/google/api/client/http/o;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/api/client/googleapis/a/c;->cvW:Z

    invoke-virtual {v2, v3}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cm(Z)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->a(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/w;->XP()Lcom/google/api/client/http/t;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/a/c;->Xc()Lcom/google/api/client/googleapis/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/a/a;->Xb()Lcom/google/api/client/util/F;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/t;->a(Lcom/google/api/client/util/F;)Lcom/google/api/client/http/t;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/api/client/http/w;->XO()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/a/c;->a(Lcom/google/api/client/http/w;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method protected a(Lcom/google/api/client/http/w;)Ljava/io/IOException;
    .locals 1

    .prologue
    .line 447
    new-instance v0, Lcom/google/api/client/http/HttpResponseException;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/w;)V

    return-object v0
.end method

.method public synthetic i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/a/c;->k(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/a/c;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/googleapis/a/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 583
    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/a/c;

    return-object v0
.end method
