.class public Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
.super Lcom/google/api/client/http/HttpResponseException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x5aff10c793dbb70L


# instance fields
.field private final transient cvB:Lcom/google/api/client/googleapis/json/a;


# direct methods
.method private constructor <init>(Lcom/google/api/client/http/x;Lcom/google/api/client/googleapis/json/a;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/x;)V

    .line 68
    iput-object p2, p0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->cvB:Lcom/google/api/client/googleapis/json/a;

    .line 69
    return-void
.end method

.method public static a(Lcom/google/api/client/json/d;Lcom/google/api/client/http/w;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 93
    new-instance v4, Lcom/google/api/client/http/x;

    invoke-virtual {p1}, Lcom/google/api/client/http/w;->getStatusCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/api/client/http/w;->KB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/api/client/http/w;->XD()Lcom/google/api/client/http/o;

    move-result-object v3

    invoke-direct {v4, v0, v2, v3}, Lcom/google/api/client/http/x;-><init>(ILjava/lang/String;Lcom/google/api/client/http/o;)V

    .line 96
    invoke-static {p0}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/http/w;->XO()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/api/client/json/c;->MEDIA_TYPE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/api/client/http/w;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/api/client/http/s;->ay(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/api/client/http/w;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    if-eqz v0, :cond_7

    .line 105
    :try_start_1
    invoke-virtual {p1}, Lcom/google/api/client/http/w;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/d;->g(Ljava/io/InputStream;)Lcom/google/api/client/json/h;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 106
    :try_start_2
    invoke-virtual {v3}, Lcom/google/api/client/json/h;->WG()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    .line 109
    invoke-virtual {v3}, Lcom/google/api/client/json/h;->WQ()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 112
    :cond_0
    if-eqz v0, :cond_9

    .line 114
    const-string v0, "error"

    invoke-virtual {v3, v0}, Lcom/google/api/client/json/h;->hv(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3}, Lcom/google/api/client/json/h;->WG()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/google/api/client/json/JsonToken;->cyi:Lcom/google/api/client/json/JsonToken;

    if-eq v0, v2, :cond_9

    .line 116
    const-class v0, Lcom/google/api/client/googleapis/json/a;

    invoke-virtual {v3, v0}, Lcom/google/api/client/json/h;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/json/a;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    :try_start_3
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/a;->Yc()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 124
    :goto_0
    if-nez v3, :cond_3

    .line 125
    :try_start_4
    invoke-virtual {p1}, Lcom/google/api/client/http/w;->ignore()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 138
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->c(Lcom/google/api/client/http/w;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    invoke-static {v0}, Lcom/google/api/client/util/M;->gK(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 140
    sget-object v3, Lcom/google/api/client/util/L;->czG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v4, v0}, Lcom/google/api/client/http/x;->hr(Ljava/lang/String;)Lcom/google/api/client/http/x;

    .line 143
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/api/client/http/x;->hq(Ljava/lang/String;)Lcom/google/api/client/http/x;

    .line 145
    new-instance v0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    invoke-direct {v0, v4, v1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;-><init>(Lcom/google/api/client/http/x;Lcom/google/api/client/googleapis/json/a;)V

    return-object v0

    .line 126
    :cond_3
    if-nez v1, :cond_1

    .line 127
    :try_start_5
    invoke-virtual {v3}, Lcom/google/api/client/json/h;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 133
    :catch_0
    move-exception v2

    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 120
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    move-object v0, v1

    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 124
    if-nez v3, :cond_4

    .line 125
    :try_start_7
    invoke-virtual {p1}, Lcom/google/api/client/http/w;->ignore()V

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 126
    :cond_4
    if-nez v0, :cond_8

    .line 127
    invoke-virtual {v3}, Lcom/google/api/client/json/h;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v2, v1

    :goto_4
    if-nez v3, :cond_6

    .line 125
    :try_start_8
    invoke-virtual {p1}, Lcom/google/api/client/http/w;->ignore()V

    .line 127
    :cond_5
    :goto_5
    throw v0

    .line 133
    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_2

    .line 126
    :cond_6
    if-nez v2, :cond_5

    .line 127
    invoke-virtual {v3}, Lcom/google/api/client/json/h;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    .line 131
    :cond_7
    :try_start_9
    invoke-virtual {p1}, Lcom/google/api/client/http/w;->XQ()Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    move-result-object v0

    goto :goto_1

    .line 133
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 124
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_4

    .line 120
    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catch_6
    move-exception v2

    goto :goto_3

    :cond_8
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method
