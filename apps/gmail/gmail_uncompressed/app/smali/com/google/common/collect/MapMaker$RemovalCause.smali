.class abstract enum Lcom/google/common/collect/MapMaker$RemovalCause;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/collect/MapMaker$RemovalCause;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cAY:Lcom/google/common/collect/MapMaker$RemovalCause;

.field public static final enum cAZ:Lcom/google/common/collect/MapMaker$RemovalCause;

.field public static final enum cBa:Lcom/google/common/collect/MapMaker$RemovalCause;

.field public static final enum cBb:Lcom/google/common/collect/MapMaker$RemovalCause;

.field public static final enum cBc:Lcom/google/common/collect/MapMaker$RemovalCause;

.field private static final synthetic cBd:[Lcom/google/common/collect/MapMaker$RemovalCause;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 777
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$1;

    const-string v1, "EXPLICIT"

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMaker$RemovalCause$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->cAY:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 790
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$2;

    const-string v1, "REPLACED"

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMaker$RemovalCause$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->cAZ:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 802
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$3;

    const-string v1, "COLLECTED"

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMaker$RemovalCause$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->cBa:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 813
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$4;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMaker$RemovalCause$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->cBb:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 824
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$5;

    const-string v1, "SIZE"

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMaker$RemovalCause$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->cBc:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 772
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/collect/MapMaker$RemovalCause;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->cAY:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->cAZ:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->cBa:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->cBb:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->cBc:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->cBd:[Lcom/google/common/collect/MapMaker$RemovalCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 772
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 772
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMaker$RemovalCause;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/MapMaker$RemovalCause;
    .locals 1

    .prologue
    .line 772
    const-class v0, Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$RemovalCause;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/MapMaker$RemovalCause;
    .locals 1

    .prologue
    .line 772
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->cBd:[Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {v0}, [Lcom/google/common/collect/MapMaker$RemovalCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/MapMaker$RemovalCause;

    return-object v0
.end method
