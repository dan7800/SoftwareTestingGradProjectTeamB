.class final Lcom/google/api/client/http/i;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field final synthetic cwJ:Lcom/google/api/client/http/h;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/h;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/api/client/http/i;->cwJ:Lcom/google/api/client/http/h;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/http/i;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
