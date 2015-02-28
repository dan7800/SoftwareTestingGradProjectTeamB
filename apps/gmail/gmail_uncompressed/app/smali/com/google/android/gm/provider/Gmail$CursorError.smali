.class public final enum Lcom/google/android/gm/provider/Gmail$CursorError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/provider/Gmail$CursorError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ber:Lcom/google/android/gm/provider/Gmail$CursorError;

.field public static final enum bes:Lcom/google/android/gm/provider/Gmail$CursorError;

.field public static final enum bet:Lcom/google/android/gm/provider/Gmail$CursorError;

.field public static final enum beu:Lcom/google/android/gm/provider/Gmail$CursorError;

.field public static final enum bev:Lcom/google/android/gm/provider/Gmail$CursorError;

.field public static final enum bew:Lcom/google/android/gm/provider/Gmail$CursorError;

.field public static final enum bex:Lcom/google/android/gm/provider/Gmail$CursorError;

.field private static final synthetic bey:[Lcom/google/android/gm/provider/Gmail$CursorError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2960
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gm/provider/Gmail$CursorError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->ber:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 2961
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    const-string v1, "IO_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gm/provider/Gmail$CursorError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bes:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 2962
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    const-string v1, "AUTH_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gm/provider/Gmail$CursorError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bet:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 2963
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    const-string v1, "PARSE_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gm/provider/Gmail$CursorError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->beu:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 2964
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    const-string v1, "DB_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/google/android/gm/provider/Gmail$CursorError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bev:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 2965
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    const-string v1, "SECURITY_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail$CursorError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bew:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 2966
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail$CursorError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bex:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 2959
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/gm/provider/Gmail$CursorError;

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->ber:Lcom/google/android/gm/provider/Gmail$CursorError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->bes:Lcom/google/android/gm/provider/Gmail$CursorError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->bet:Lcom/google/android/gm/provider/Gmail$CursorError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->beu:Lcom/google/android/gm/provider/Gmail$CursorError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->bev:Lcom/google/android/gm/provider/Gmail$CursorError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gm/provider/Gmail$CursorError;->bew:Lcom/google/android/gm/provider/Gmail$CursorError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gm/provider/Gmail$CursorError;->bex:Lcom/google/android/gm/provider/Gmail$CursorError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bey:[Lcom/google/android/gm/provider/Gmail$CursorError;

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
    .line 2959
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$CursorError;
    .locals 1

    .prologue
    .line 2959
    const-class v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gm/provider/Gmail$CursorError;
    .locals 1

    .prologue
    .line 2959
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bey:[Lcom/google/android/gm/provider/Gmail$CursorError;

    invoke-virtual {v0}, [Lcom/google/android/gm/provider/Gmail$CursorError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/provider/Gmail$CursorError;

    return-object v0
.end method
