.class public final Lcom/google/api/client/http/b/a;
.super Lcom/google/api/client/http/a;
.source "SourceFile"


# instance fields
.field private final cxZ:Lcom/google/api/client/json/d;

.field private cya:Ljava/lang/String;

.field private final data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/d;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/api/client/json/c;->MEDIA_TYPE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/a;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/d;

    iput-object v0, p0, Lcom/google/api/client/http/b/a;->cxZ:Lcom/google/api/client/json/d;

    .line 69
    invoke-static {p2}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/b/a;->data:Ljava/lang/Object;

    .line 70
    return-void
.end method


# virtual methods
.method public final hu(Ljava/lang/String;)Lcom/google/api/client/http/b/a;
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/api/client/http/b/a;->cya:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/api/client/http/b/a;->cxZ:Lcom/google/api/client/json/d;

    invoke-virtual {p0}, Lcom/google/api/client/http/b/a;->Xj()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/api/client/json/d;->a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/e;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/google/api/client/http/b/a;->cya:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/google/api/client/json/e;->WD()V

    .line 76
    iget-object v1, p0, Lcom/google/api/client/http/b/a;->cya:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/e;->gT(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/http/b/a;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/e;->ao(Ljava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lcom/google/api/client/http/b/a;->cya:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/google/api/client/json/e;->WA()V

    .line 82
    :cond_1
    invoke-virtual {v0}, Lcom/google/api/client/json/e;->flush()V

    .line 83
    return-void
.end method
