.class public Lcom/google/android/gms/internal/mp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/mp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bUA:Lcom/google/android/gms/internal/mx;

.field public final bUB:Lcom/google/android/gms/internal/mv;

.field public final bUC:Lcom/google/android/gms/internal/mz;

.field public final bUy:I

.field public final bUz:Lcom/google/android/gms/internal/mr;

.field private final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aM;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aM;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/internal/mr;Lcom/google/android/gms/internal/mx;Lcom/google/android/gms/internal/mv;Lcom/google/android/gms/internal/mz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mp;->btV:I

    iput p2, p0, Lcom/google/android/gms/internal/mp;->bUy:I

    iput-object p3, p0, Lcom/google/android/gms/internal/mp;->bUz:Lcom/google/android/gms/internal/mr;

    iput-object p4, p0, Lcom/google/android/gms/internal/mp;->bUA:Lcom/google/android/gms/internal/mx;

    iput-object p5, p0, Lcom/google/android/gms/internal/mp;->bUB:Lcom/google/android/gms/internal/mv;

    iput-object p6, p0, Lcom/google/android/gms/internal/mp;->bUC:Lcom/google/android/gms/internal/mz;

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mp;->btV:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/aM;->a(Lcom/google/android/gms/internal/mp;Landroid/os/Parcel;I)V

    return-void
.end method
