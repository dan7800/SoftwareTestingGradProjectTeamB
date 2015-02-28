.class public final enum Lcom/android/ex/photo/util/ImageUtils$ImageSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/photo/util/ImageUtils$ImageSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aiB:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

.field public static final enum aiC:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

.field public static final enum aiD:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

.field private static final synthetic aiE:[Lcom/android/ex/photo/util/ImageUtils$ImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    const-string v1, "EXTRA_SMALL"

    invoke-direct {v0, v1, v2}, Lcom/android/ex/photo/util/ImageUtils$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->aiB:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    .line 58
    new-instance v0, Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/photo/util/ImageUtils$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->aiC:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    .line 59
    new-instance v0, Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/photo/util/ImageUtils$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->aiD:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    sget-object v1, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->aiB:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->aiC:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->aiD:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->aiE:[Lcom/android/ex/photo/util/ImageUtils$ImageSize;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/photo/util/ImageUtils$ImageSize;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/photo/util/ImageUtils$ImageSize;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->aiE:[Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    invoke-virtual {v0}, [Lcom/android/ex/photo/util/ImageUtils$ImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    return-object v0
.end method
