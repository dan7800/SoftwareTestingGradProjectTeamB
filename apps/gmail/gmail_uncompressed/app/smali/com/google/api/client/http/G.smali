.class public final Lcom/google/api/client/http/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cwQ:Lcom/google/api/client/http/l;

.field cxe:Lcom/google/api/client/http/o;

.field cxk:Lcom/google/api/client/http/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/G;-><init>(Lcom/google/api/client/http/k;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/k;)V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/http/G;-><init>(Lcom/google/api/client/http/k;B)V

    .line 229
    return-void
.end method

.method private constructor <init>(Lcom/google/api/client/http/k;B)V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/G;->cxe:Lcom/google/api/client/http/o;

    .line 237
    iput-object p1, p0, Lcom/google/api/client/http/G;->cxk:Lcom/google/api/client/http/k;

    .line 238
    return-void
.end method
