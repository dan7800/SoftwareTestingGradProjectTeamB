.class final enum Lcom/google/common/collect/GenericMapMaker$NullListener;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/Q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/collect/GenericMapMaker$NullListener;",
        ">;",
        "Lcom/google/common/collect/Q",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cAt:Lcom/google/common/collect/GenericMapMaker$NullListener;

.field private static final synthetic cAu:[Lcom/google/common/collect/GenericMapMaker$NullListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/google/common/collect/GenericMapMaker$NullListener;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/common/collect/GenericMapMaker$NullListener;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/GenericMapMaker$NullListener;->cAt:Lcom/google/common/collect/GenericMapMaker$NullListener;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/collect/GenericMapMaker$NullListener;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/common/collect/GenericMapMaker$NullListener;->cAt:Lcom/google/common/collect/GenericMapMaker$NullListener;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/collect/GenericMapMaker$NullListener;->cAu:[Lcom/google/common/collect/GenericMapMaker$NullListener;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/GenericMapMaker$NullListener;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/common/collect/GenericMapMaker$NullListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/GenericMapMaker$NullListener;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/GenericMapMaker$NullListener;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/common/collect/GenericMapMaker$NullListener;->cAu:[Lcom/google/common/collect/GenericMapMaker$NullListener;

    invoke-virtual {v0}, [Lcom/google/common/collect/GenericMapMaker$NullListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/GenericMapMaker$NullListener;

    return-object v0
.end method
