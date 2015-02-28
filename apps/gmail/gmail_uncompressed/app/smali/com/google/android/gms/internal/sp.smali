.class public Lcom/google/android/gms/internal/sp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/TaskId;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/sp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bZD:Ljava/lang/Long;

.field private final bZE:Ljava/lang/String;

.field private final bZF:Ljava/lang/String;

.field public final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/sp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/sp;->bZD:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/internal/sp;->bZE:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/sp;->bZF:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/internal/sp;->btV:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/TaskId;)V
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/TaskId;->SE()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/TaskId;->SF()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/TaskId;->SG()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/sp;-><init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/sp;-><init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic KN()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final SE()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sp;->bZD:Ljava/lang/Long;

    return-object v0
.end method

.method public final SF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sp;->bZE:Ljava/lang/String;

    return-object v0
.end method

.method public final SG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sp;->bZF:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/sp;Landroid/os/Parcel;)V

    return-void
.end method
