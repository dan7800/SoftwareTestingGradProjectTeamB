.class public final Lcom/google/android/gms/internal/dw;
.super Ljava/lang/Object;


# static fields
.field public static final cad:[I

.field public static final cae:[J

.field public static final caf:[F

.field public static final cag:[D

.field public static final cah:[Z

.field public static final cai:[Ljava/lang/String;

.field public static final caj:[[B

.field public static final cak:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/dw;->cad:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/dw;->cae:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/dw;->caf:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/dw;->cag:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/dw;->cah:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/dw;->cai:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/dw;->caj:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/dw;->cak:[B

    return-void
.end method

.method static ac(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static eN(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
