.class public final Lcom/google/android/gms/internal/or;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bx;


# instance fields
.field private final bVQ:Ljava/lang/String;

.field private final btV:I

.field private final bxh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/or;->CREATOR:Lcom/google/android/gms/internal/bx;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/or;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/internal/or;->bxh:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/or;->bVQ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final FP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/or;->bxh:Ljava/lang/String;

    return-object v0
.end method

.method public final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/or;->btV:I

    return v0
.end method

.method public final RR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/or;->bVQ:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/bx;->a(Lcom/google/android/gms/internal/or;Landroid/os/Parcel;)V

    return-void
.end method