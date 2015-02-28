.class public Lcom/google/android/gms/internal/mt;
.super Lcom/google/android/gms/location/copresence/a;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/mt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bUG:Z

.field private final bUH:Z

.field private final bUI:I

.field private final bUJ:Z

.field private final bUK:Z

.field private final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aO;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aO;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZZIZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/copresence/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mt;->btV:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mt;->bUG:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/mt;->bUH:Z

    iput p4, p0, Lcom/google/android/gms/internal/mt;->bUI:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/mt;->bUJ:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/mt;->bUK:Z

    return-void
.end method

.method public constructor <init>(ZZIZZ)V
    .locals 7

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/mt;-><init>(IZZIZZ)V

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mt;->btV:I

    return v0
.end method

.method public final Rl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mt;->bUH:Z

    return v0
.end method

.method public final Rm()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mt;->bUI:I

    return v0
.end method

.method public final Rn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mt;->bUJ:Z

    return v0
.end method

.method public final Ro()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mt;->bUK:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/mt;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mt;->bUG:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/mt;->bUG:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mt;->bUH:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/mt;->bUH:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/mt;->bUI:I

    iget v3, p1, Lcom/google/android/gms/internal/mt;->bUI:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mt;->bUJ:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/mt;->bUJ:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mt;->bUK:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/mt;->bUK:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mt;->bUG:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mt;->bUH:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mt;->bUG:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/aO;->a(Lcom/google/android/gms/internal/mt;Landroid/os/Parcel;)V

    return-void
.end method
