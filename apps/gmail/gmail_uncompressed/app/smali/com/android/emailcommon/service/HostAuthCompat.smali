.class public Lcom/android/emailcommon/service/HostAuthCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/service/HostAuthCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private GZ:Ljava/lang/String;

.field private NS:Ljava/lang/String;

.field private Qd:Ljava/lang/String;

.field private Qi:Ljava/lang/String;

.field private Qj:Ljava/lang/String;

.field private WA:Ljava/lang/String;

.field private XR:J

.field private Zh:Ljava/lang/String;

.field private Zi:I

.field private Zj:Ljava/lang/String;

.field private Zk:Ljava/lang/String;

.field private Zl:[B

.field private dM:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/android/emailcommon/service/o;

    invoke-direct {v0}, Lcom/android/emailcommon/service/o;-><init>()V

    sput-object v0, Lcom/android/emailcommon/service/HostAuthCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zh:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->WA:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zi:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->dM:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zj:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Qd:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->GZ:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zk:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zl:[B

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->NS:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Qi:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Qj:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->XR:J

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zh:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->WA:Ljava/lang/String;

    .line 34
    iget v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    iput v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zi:I

    .line 35
    iget v0, p1, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    iput v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->dM:I

    .line 36
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zj:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Qd:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->GZ:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zk:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Zl:[B

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zl:[B

    .line 41
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Credential;->NS:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->NS:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Credential;->Qi:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Qi:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Credential;->Qj:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Qj:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Credential;->XR:J

    iput-wide v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->XR:J

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public final lY()Lcom/android/emailcommon/provider/HostAuth;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zh:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->WA:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    .line 53
    iget v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zi:I

    iput v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    .line 54
    iget v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->dM:I

    iput v1, v0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    .line 55
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zj:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zj:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Qd:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->GZ:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zk:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zl:[B

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zl:[B

    .line 60
    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->NS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/android/emailcommon/provider/Credential;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/Credential;-><init>()V

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    .line 62
    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    iget-object v2, p0, Lcom/android/emailcommon/service/HostAuthCompat;->NS:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/emailcommon/provider/Credential;->NS:Ljava/lang/String;

    .line 63
    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    iget-object v2, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Qi:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/emailcommon/provider/Credential;->Qi:Ljava/lang/String;

    .line 64
    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    iget-object v2, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Qj:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/emailcommon/provider/Credential;->Qj:Ljava/lang/String;

    .line 65
    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->Zn:Lcom/android/emailcommon/provider/Credential;

    iget-wide v2, p0, Lcom/android/emailcommon/service/HostAuthCompat;->XR:J

    iput-wide v2, v1, Lcom/android/emailcommon/provider/Credential;->XR:J

    .line 67
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[protocol "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->WA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->dM:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Qd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->GZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Zl:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 91
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->NS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Qi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->Qj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-wide v0, p0, Lcom/android/emailcommon/service/HostAuthCompat;->XR:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    return-void
.end method
