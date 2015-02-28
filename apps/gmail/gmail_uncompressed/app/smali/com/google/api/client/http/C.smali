.class public final Lcom/google/api/client/http/C;
.super Lcom/google/api/client/http/b;
.source "SourceFile"


# instance fields
.field private cxE:J

.field private cxF:Z

.field private final cxG:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/api/client/http/b;-><init>(Ljava/lang/String;)V

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/C;->cxE:J

    .line 68
    invoke-static {p2}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/google/api/client/http/C;->cxG:Ljava/io/InputStream;

    .line 69
    return-void
.end method


# virtual methods
.method public final XU()Lcom/google/api/client/http/C;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/C;->cxF:Z

    .line 91
    return-object p0
.end method

.method public final Xk()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/api/client/http/C;->cxF:Z

    return v0
.end method

.method public final be(J)Lcom/google/api/client/http/C;
    .locals 1

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/google/api/client/http/C;->cxE:J

    .line 120
    return-object p0
.end method

.method public final synthetic cn(Z)Lcom/google/api/client/http/b;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/C;->co(Z)Lcom/google/api/client/http/C;

    move-result-object v0

    return-object v0
.end method

.method public final co(Z)Lcom/google/api/client/http/C;
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->cn(Z)Lcom/google/api/client/http/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/C;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/api/client/http/C;->cxG:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getLength()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/google/api/client/http/C;->cxE:J

    return-wide v0
.end method

.method public final bridge synthetic hc(Ljava/lang/String;)Lcom/google/api/client/http/b;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->hc(Ljava/lang/String;)Lcom/google/api/client/http/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/C;

    return-object v0
.end method
