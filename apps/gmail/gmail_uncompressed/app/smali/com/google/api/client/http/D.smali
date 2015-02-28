.class public abstract Lcom/google/api/client/http/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ayL:Ljava/lang/String;

.field private cxH:J

.field private cxI:Lcom/google/api/client/util/K;

.field private cxz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/D;->cxH:J

    return-void
.end method


# virtual methods
.method public final XV()Lcom/google/api/client/util/K;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/api/client/http/D;->cxI:Lcom/google/api/client/util/K;

    return-object v0
.end method

.method public abstract Xw()Lcom/google/api/client/http/E;
.end method

.method public final a(Lcom/google/api/client/util/K;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/api/client/http/D;->cxI:Lcom/google/api/client/util/K;

    .line 134
    return-void
.end method

.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public aj(II)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/client/http/D;->cxz:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/google/api/client/http/D;->cxH:J

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/api/client/http/D;->ayL:Ljava/lang/String;

    return-object v0
.end method

.method public final setContentEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/api/client/http/D;->cxz:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public final setContentLength(J)V
    .locals 1

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/google/api/client/http/D;->cxH:J

    .line 76
    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/api/client/http/D;->ayL:Ljava/lang/String;

    .line 114
    return-void
.end method
