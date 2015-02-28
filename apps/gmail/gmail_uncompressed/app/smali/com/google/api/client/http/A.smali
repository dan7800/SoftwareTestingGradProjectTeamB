.class public abstract Lcom/google/api/client/http/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final cwd:Ljava/util/logging/Logger;

.field private static final cxD:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const-class v0, Lcom/google/api/client/http/A;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/A;->cwd:Ljava/util/logging/Logger;

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GET"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "POST"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PUT"

    aput-object v2, v0, v1

    .line 90
    sput-object v0, Lcom/google/api/client/http/A;->cxD:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final XS()Lcom/google/api/client/http/u;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/A;->a(Lcom/google/api/client/http/v;)Lcom/google/api/client/http/u;

    move-result-object v0

    return-object v0
.end method

.method final XT()Lcom/google/api/client/http/t;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/google/api/client/http/t;

    invoke-direct {v0, p0}, Lcom/google/api/client/http/t;-><init>(Lcom/google/api/client/http/A;)V

    return-object v0
.end method

.method public final a(Lcom/google/api/client/http/v;)Lcom/google/api/client/http/u;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/google/api/client/http/u;

    invoke-direct {v0, p0, p1}, Lcom/google/api/client/http/u;-><init>(Lcom/google/api/client/http/A;Lcom/google/api/client/http/v;)V

    return-object v0
.end method

.method protected abstract az(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/D;
.end method

.method public hs(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/google/api/client/http/A;->cxD:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
