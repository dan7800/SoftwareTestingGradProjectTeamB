.class public final Lcom/google/android/gms/internal/mr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/mr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bUD:Lcom/google/android/gms/internal/mt;

.field private final bUE:Lcom/google/android/gms/location/copresence/Message;

.field private final bUF:Lcom/google/android/gms/location/copresence/AccessPolicy;

.field private final btV:I

.field private final bzz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aN;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aN;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/mt;Lcom/google/android/gms/location/copresence/Message;Lcom/google/android/gms/location/copresence/AccessPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mr;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mr;->bzz:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mr;->bUD:Lcom/google/android/gms/internal/mt;

    iput-object p4, p0, Lcom/google/android/gms/internal/mr;->bUE:Lcom/google/android/gms/location/copresence/Message;

    iput-object p5, p0, Lcom/google/android/gms/internal/mr;->bUF:Lcom/google/android/gms/location/copresence/AccessPolicy;

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mr;->btV:I

    return v0
.end method

.method final Ri()Lcom/google/android/gms/internal/mt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mr;->bUD:Lcom/google/android/gms/internal/mt;

    return-object v0
.end method

.method public final Rj()Lcom/google/android/gms/location/copresence/Message;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mr;->bUE:Lcom/google/android/gms/location/copresence/Message;

    return-object v0
.end method

.method public final Rk()Lcom/google/android/gms/location/copresence/AccessPolicy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mr;->bUF:Lcom/google/android/gms/location/copresence/AccessPolicy;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mr;->bzz:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PublishOperation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mr;->bUE:Lcom/google/android/gms/location/copresence/Message;

    invoke-virtual {v1}, Lcom/google/android/gms/location/copresence/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/aN;->a(Lcom/google/android/gms/internal/mr;Landroid/os/Parcel;I)V

    return-void
.end method
