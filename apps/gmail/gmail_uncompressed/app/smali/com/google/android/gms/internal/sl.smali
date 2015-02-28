.class public Lcom/google/android/gms/internal/sl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/Location;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/sl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bZl:Ljava/lang/Double;

.field private final bZm:Ljava/lang/Double;

.field private final bZn:Ljava/lang/Integer;

.field private final bZo:Ljava/lang/Integer;

.field private final bZp:Ljava/lang/String;

.field public final btV:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/de;

    invoke-direct {v0}, Lcom/google/android/gms/internal/de;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/sl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/sl;->bZl:Ljava/lang/Double;

    iput-object p3, p0, Lcom/google/android/gms/internal/sl;->bZm:Ljava/lang/Double;

    iput-object p4, p0, Lcom/google/android/gms/internal/sl;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/sl;->bZn:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/google/android/gms/internal/sl;->bZo:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/google/android/gms/internal/sl;->bZp:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/internal/sl;->btV:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/Location;)V
    .locals 8

    const/4 v1, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->Sz()Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->SA()Ljava/lang/Double;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->SB()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->SC()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->SD()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/sl;-><init>(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/sl;-><init>(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic KN()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final SA()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->bZm:Ljava/lang/Double;

    return-object v0
.end method

.method public final SB()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->bZn:Ljava/lang/Integer;

    return-object v0
.end method

.method public final SC()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->bZo:Ljava/lang/Integer;

    return-object v0
.end method

.method public final SD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->bZp:Ljava/lang/String;

    return-object v0
.end method

.method public final Sz()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->bZl:Ljava/lang/Double;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/sl;Landroid/os/Parcel;)V

    return-void
.end method
