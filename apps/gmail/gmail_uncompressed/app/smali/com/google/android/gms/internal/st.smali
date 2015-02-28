.class public Lcom/google/android/gms/internal/st;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/Time;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/st;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bZH:Ljava/lang/Integer;

.field private final bZI:Ljava/lang/Integer;

.field private final bZJ:Ljava/lang/Integer;

.field public final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/di;

    invoke-direct {v0}, Lcom/google/android/gms/internal/di;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/st;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/st;->bZH:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/st;->bZI:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/st;->bZJ:Ljava/lang/Integer;

    iput p1, p0, Lcom/google/android/gms/internal/st;->btV:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/Time;)V
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Time;->SI()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Time;->SJ()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Time;->SK()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/st;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/st;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final synthetic KN()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final SI()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/st;->bZH:Ljava/lang/Integer;

    return-object v0
.end method

.method public final SJ()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/st;->bZI:Ljava/lang/Integer;

    return-object v0
.end method

.method public final SK()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/st;->bZJ:Ljava/lang/Integer;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/di;->a(Lcom/google/android/gms/internal/st;Landroid/os/Parcel;)V

    return-void
.end method
