.class public Lcom/google/android/gms/audiomodem/DecodedToken;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/audiomodem/DecodedToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final btV:I

.field private final bwI:[B

.field private final bwJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/audiomodem/a;

    invoke-direct {v0}, Lcom/google/android/gms/audiomodem/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/audiomodem/DecodedToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/audiomodem/DecodedToken;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/audiomodem/DecodedToken;->bwI:[B

    iput p3, p0, Lcom/google/android/gms/audiomodem/DecodedToken;->bwJ:I

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DecodedToken;->btV:I

    return v0
.end method

.method public final Ju()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/audiomodem/DecodedToken;->bwI:[B

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getRank()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DecodedToken;->bwJ:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/audiomodem/a;->a(Lcom/google/android/gms/audiomodem/DecodedToken;Landroid/os/Parcel;)V

    return-void
.end method
