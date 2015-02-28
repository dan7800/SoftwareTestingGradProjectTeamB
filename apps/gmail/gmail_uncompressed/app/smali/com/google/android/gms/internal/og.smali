.class public Lcom/google/android/gms/internal/og;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/og;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bVG:Z

.field private final bVH:Z

.field private final bVI:Z

.field private final bVJ:Z

.field private final bVK:Z

.field private final btV:I

.field private final bxh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/og;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/og;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/internal/og;->bxh:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/og;->bVG:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/og;->bVH:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/og;->bVI:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/og;->bVJ:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/og;->bVK:Z

    return-void
.end method


# virtual methods
.method public final FP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/og;->bxh:Ljava/lang/String;

    return-object v0
.end method

.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/og;->btV:I

    return v0
.end method

.method public final RL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/og;->bVG:Z

    return v0
.end method

.method public final RM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/og;->bVH:Z

    return v0
.end method

.method public final RN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/og;->bVI:Z

    return v0
.end method

.method public final RO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/og;->bVJ:Z

    return v0
.end method

.method public final RP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/og;->bVK:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/bb;->a(Lcom/google/android/gms/internal/og;Landroid/os/Parcel;)V

    return-void
.end method
