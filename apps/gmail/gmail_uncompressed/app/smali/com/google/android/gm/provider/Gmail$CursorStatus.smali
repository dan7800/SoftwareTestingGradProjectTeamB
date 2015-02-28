.class public final enum Lcom/google/android/gm/provider/Gmail$CursorStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/provider/Gmail$CursorStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum beA:Lcom/google/android/gm/provider/Gmail$CursorStatus;

.field public static final enum beB:Lcom/google/android/gm/provider/Gmail$CursorStatus;

.field public static final enum beC:Lcom/google/android/gm/provider/Gmail$CursorStatus;

.field public static final enum beD:Lcom/google/android/gm/provider/Gmail$CursorStatus;

.field private static final synthetic beE:[Lcom/google/android/gm/provider/Gmail$CursorStatus;

.field public static final enum bez:Lcom/google/android/gm/provider/Gmail$CursorStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2952
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;->bez:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .line 2953
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gm/provider/Gmail$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beA:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .line 2954
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gm/provider/Gmail$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beB:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .line 2955
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gm/provider/Gmail$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beC:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .line 2956
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;

    const-string v1, "SEARCHING"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gm/provider/Gmail$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beD:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .line 2951
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gm/provider/Gmail$CursorStatus;

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->bez:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beA:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beB:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beC:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beD:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beE:[Lcom/google/android/gm/provider/Gmail$CursorStatus;

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
    .line 2951
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$CursorStatus;
    .locals 1

    .prologue
    .line 2951
    const-class v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gm/provider/Gmail$CursorStatus;
    .locals 1

    .prologue
    .line 2951
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beE:[Lcom/google/android/gm/provider/Gmail$CursorStatus;

    invoke-virtual {v0}, [Lcom/google/android/gm/provider/Gmail$CursorStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/provider/Gmail$CursorStatus;

    return-object v0
.end method
