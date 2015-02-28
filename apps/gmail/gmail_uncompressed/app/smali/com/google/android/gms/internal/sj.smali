.class public Lcom/google/android/gms/internal/sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/DateTime;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/sj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bZf:Ljava/lang/Integer;

.field private final bZg:Ljava/lang/Integer;

.field private final bZh:Ljava/lang/Integer;

.field private final bZi:Lcom/google/android/gms/internal/st;

.field private final bZj:Ljava/lang/Integer;

.field private final bZk:Ljava/lang/Long;

.field public final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/sj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/internal/st;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/sj;->bZf:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/sj;->bZg:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/sj;->bZh:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/google/android/gms/internal/sj;->bZi:Lcom/google/android/gms/internal/st;

    iput-object p6, p0, Lcom/google/android/gms/internal/sj;->bZj:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/google/android/gms/internal/sj;->bZk:Ljava/lang/Long;

    iput p1, p0, Lcom/google/android/gms/internal/sj;->btV:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/DateTime;)V
    .locals 8

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->St()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->Su()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->Sv()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->Sw()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->Sx()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->Sy()Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/sj;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Long;B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/sj;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Long;B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Long;B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/sj;->bZf:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/android/gms/internal/sj;->bZg:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/sj;->bZh:Ljava/lang/Integer;

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/sj;->bZi:Lcom/google/android/gms/internal/st;

    iput-object p5, p0, Lcom/google/android/gms/internal/sj;->bZj:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/google/android/gms/internal/sj;->bZk:Ljava/lang/Long;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/sj;->btV:I

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/st;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/st;-><init>(Lcom/google/android/gms/reminders/model/Time;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic KN()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final St()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sj;->bZf:Ljava/lang/Integer;

    return-object v0
.end method

.method public final Su()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sj;->bZg:Ljava/lang/Integer;

    return-object v0
.end method

.method public final Sv()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sj;->bZh:Ljava/lang/Integer;

    return-object v0
.end method

.method public final Sw()Lcom/google/android/gms/reminders/model/Time;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sj;->bZi:Lcom/google/android/gms/internal/st;

    return-object v0
.end method

.method public final Sx()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sj;->bZj:Ljava/lang/Integer;

    return-object v0
.end method

.method public final Sy()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sj;->bZk:Ljava/lang/Long;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/dd;->a(Lcom/google/android/gms/internal/sj;Landroid/os/Parcel;I)V

    return-void
.end method
