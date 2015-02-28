.class public abstract Lcom/google/api/client/http/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/k;


# instance fields
.field private cwD:Lcom/google/api/client/http/s;

.field private cwE:J


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/s;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/a;->cwE:J

    .line 56
    iput-object p1, p0, Lcom/google/api/client/http/a;->cwD:Lcom/google/api/client/http/s;

    .line 57
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/api/client/http/a;-><init>(Lcom/google/api/client/http/s;)V

    .line 49
    return-void

    .line 48
    :cond_0
    new-instance v0, Lcom/google/api/client/http/s;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/s;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/api/client/http/k;)J
    .locals 2

    .prologue
    .line 136
    invoke-interface {p0}, Lcom/google/api/client/http/k;->Xk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-wide/16 v0, -0x1

    .line 139
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lcom/google/api/client/util/w;->b(Lcom/google/api/client/util/K;)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public final Xi()Lcom/google/api/client/http/s;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/api/client/http/a;->cwD:Lcom/google/api/client/http/s;

    return-object v0
.end method

.method protected final Xj()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/api/client/http/a;->cwD:Lcom/google/api/client/http/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/http/a;->cwD:Lcom/google/api/client/http/s;

    invoke-virtual {v0}, Lcom/google/api/client/http/s;->Xx()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/api/client/util/j;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/client/http/a;->cwD:Lcom/google/api/client/http/s;

    invoke-virtual {v0}, Lcom/google/api/client/http/s;->Xx()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public Xk()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public final getLength()J
    .locals 4

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/api/client/http/a;->cwE:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 65
    invoke-static {p0}, Lcom/google/api/client/http/a;->a(Lcom/google/api/client/http/k;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/http/a;->cwE:J

    .line 67
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/http/a;->cwE:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/client/http/a;->cwD:Lcom/google/api/client/http/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/a;->cwD:Lcom/google/api/client/http/s;

    invoke-virtual {v0}, Lcom/google/api/client/http/s;->Xn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
