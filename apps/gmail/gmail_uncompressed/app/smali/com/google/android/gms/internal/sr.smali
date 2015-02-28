.class public Lcom/google/android/gms/internal/sr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/TaskList;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/sr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bZG:Ljava/lang/Integer;

.field public final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/sr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/sr;->bZG:Ljava/lang/Integer;

    iput p1, p0, Lcom/google/android/gms/internal/sr;->btV:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/TaskList;)V
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/TaskList;->SH()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/sr;-><init>(ILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/sr;-><init>(ILjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final synthetic KN()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final SH()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->bZG:Ljava/lang/Integer;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/dh;->a(Lcom/google/android/gms/internal/sr;Landroid/os/Parcel;)V

    return-void
.end method
