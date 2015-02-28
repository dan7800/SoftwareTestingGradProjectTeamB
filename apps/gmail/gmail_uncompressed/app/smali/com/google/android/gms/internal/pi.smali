.class public Lcom/google/android/gms/internal/pi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bM;


# instance fields
.field private final bVW:I

.field private final bVX:I

.field private final bVY:Z

.field private final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bM;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bM;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pi;->CREATOR:Lcom/google/android/gms/internal/bM;

    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/pi;->btV:I

    iput p2, p0, Lcom/google/android/gms/internal/pi;->bVW:I

    iput p3, p0, Lcom/google/android/gms/internal/pi;->bVX:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/pi;->bVY:Z

    return-void
.end method

.method public static a(Lcom/google/android/gms/people/k;)Lcom/google/android/gms/internal/pi;
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/people/k;->cgA:Lcom/google/android/gms/people/k;

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/pi;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/people/k;->cgB:I

    iget v3, p0, Lcom/google/android/gms/people/k;->cgC:I

    iget-boolean v4, p0, Lcom/google/android/gms/people/k;->cgD:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/pi;-><init>(IIIZ)V

    return-object v0
.end method


# virtual methods
.method public final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/pi;->btV:I

    return v0
.end method

.method public final RX()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/pi;->bVW:I

    return v0
.end method

.method public final RY()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/pi;->bVX:I

    return v0
.end method

.method public final RZ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pi;->bVY:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/E;->ad(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "imageSize"

    iget v2, p0, Lcom/google/android/gms/internal/pi;->bVW:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "avatarOptions"

    iget v2, p0, Lcom/google/android/gms/internal/pi;->bVX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "useLargePictureForCp2Images"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/pi;->bVY:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/F;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/bM;->a(Lcom/google/android/gms/internal/pi;Landroid/os/Parcel;)V

    return-void
.end method
