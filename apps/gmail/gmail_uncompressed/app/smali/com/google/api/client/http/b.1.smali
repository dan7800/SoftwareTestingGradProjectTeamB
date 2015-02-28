.class public abstract Lcom/google/api/client/http/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/k;


# instance fields
.field private cwF:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/b;->cwF:Z

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/b;->hc(Ljava/lang/String;)Lcom/google/api/client/http/b;

    .line 59
    return-void
.end method


# virtual methods
.method public final Xl()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/api/client/http/b;->cwF:Z

    return v0
.end method

.method public cn(Z)Lcom/google/api/client/http/b;
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/google/api/client/http/b;->cwF:Z

    .line 108
    return-object p0
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/api/client/http/b;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hc(Ljava/lang/String;)Lcom/google/api/client/http/b;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/api/client/http/b;->type:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/api/client/http/b;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/api/client/http/b;->cwF:Z

    invoke-static {v0, p1, v1}, Lcom/google/api/client/util/w;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 73
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 74
    return-void
.end method
