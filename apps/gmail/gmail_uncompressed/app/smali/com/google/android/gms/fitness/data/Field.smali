.class public final Lcom/google/android/gms/fitness/data/Field;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final bLA:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLB:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLC:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLD:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLE:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLF:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLG:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLH:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLI:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLJ:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLK:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLL:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLM:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLN:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLO:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLP:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLQ:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLR:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLS:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLT:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLU:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLV:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLW:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLX:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLY:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLZ:Lcom/google/android/gms/fitness/data/Field;

.field public static final bLz:Lcom/google/android/gms/fitness/data/Field;

.field public static final bMa:Lcom/google/android/gms/fitness/data/Field;

.field public static final bMb:Lcom/google/android/gms/fitness/data/Field;


# instance fields
.field private final bMc:I

.field private final btV:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "activity"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->ge(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLz:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "confidence"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLA:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "steps"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->ge(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLB:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "duration"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->ge(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLC:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "bpm"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLD:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "latitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLE:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "longitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLF:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "accuracy"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLG:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "altitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLH:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "distance"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLI:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "height"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLJ:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "weight"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLK:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "speed"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLL:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "rpm"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLM:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "revolutions"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->ge(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLN:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "calories"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLO:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "watts"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLP:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "num_segments"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->ge(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLQ:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "average"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLR:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "max"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLS:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "min"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLT:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "low_latitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLU:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "low_longitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLV:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "high_latitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLW:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "high_longitude"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLX:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "edge_type"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->ge(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLY:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "x"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bLZ:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "y"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bMa:Lcom/google/android/gms/fitness/data/Field;

    const-string v0, "z"

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Field;->gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->bMb:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/i;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Field;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/fitness/data/Field;->bMc:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/fitness/data/Field;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method private static ge(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static gf(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Field;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->btV:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/Field;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Field;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/Field;->bMc:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Field;->bMc:I

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final getFormat()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->bMc:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const-string v1, "%s(%s)"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    aput-object v3, v2, v0

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->bMc:I

    if-ne v0, v4, :cond_0

    const-string v0, "i"

    :goto_0
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "f"

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/data/i;->a(Lcom/google/android/gms/fitness/data/Field;Landroid/os/Parcel;)V

    return-void
.end method
