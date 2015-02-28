.class public final Lcom/google/api/client/http/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field content:Ljava/lang/String;

.field cxe:Lcom/google/api/client/http/o;

.field message:Ljava/lang/String;

.field statusCode:I

.field statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/api/client/http/o;)V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/H;->cp(Z)V

    iput p1, p0, Lcom/google/api/client/http/x;->statusCode:I

    .line 164
    iput-object p2, p0, Lcom/google/api/client/http/x;->statusMessage:Ljava/lang/String;

    .line 165
    invoke-static {p3}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/o;

    iput-object v0, p0, Lcom/google/api/client/http/x;->cxe:Lcom/google/api/client/http/o;

    .line 166
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/api/client/http/w;)V
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/google/api/client/http/w;->getStatusCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/api/client/http/w;->KB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/client/http/w;->XD()Lcom/google/api/client/http/o;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/http/x;-><init>(ILjava/lang/String;Lcom/google/api/client/http/o;)V

    .line 175
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/http/w;->XQ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/x;->content:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/google/api/client/http/x;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/x;->content:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->c(Lcom/google/api/client/http/w;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/google/api/client/http/x;->content:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 186
    sget-object v1, Lcom/google/api/client/util/L;->czG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/http/x;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/x;->message:Ljava/lang/String;

    .line 189
    return-void

    .line 179
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final hq(Ljava/lang/String;)Lcom/google/api/client/http/x;
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/api/client/http/x;->message:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public final hr(Ljava/lang/String;)Lcom/google/api/client/http/x;
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/api/client/http/x;->content:Ljava/lang/String;

    .line 279
    return-object p0
.end method
