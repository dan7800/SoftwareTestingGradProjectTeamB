.class public abstract enum Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/collect/SortedLists$KeyPresentBehavior;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cCA:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum cCB:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

.field private static final synthetic cCC:[Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum cCx:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum cCy:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum cCz:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$1;

    const-string v1, "ANY_PRESENT"

    invoke-direct {v0, v1}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->cCx:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 63
    new-instance v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$2;

    const-string v1, "LAST_PRESENT"

    invoke-direct {v0, v1}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->cCy:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 87
    new-instance v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$3;

    const-string v1, "FIRST_PRESENT"

    invoke-direct {v0, v1}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->cCz:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 113
    new-instance v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$4;

    const-string v1, "FIRST_AFTER"

    invoke-direct {v0, v1}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->cCA:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 124
    new-instance v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$5;

    const-string v1, "LAST_BEFORE"

    invoke-direct {v0, v1}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->cCB:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->cCx:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->cCy:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->cCz:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->cCA:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->cCB:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->cCC:[Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->cCC:[Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    invoke-virtual {v0}, [Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;",
            "Ljava/util/List",
            "<+TE;>;I)I"
        }
    .end annotation
.end method
