.class public Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/O;


# instance fields
.field final btV:I

.field public final buZ:[B

.field public final bva:[Lcom/google/android/gms/appdatasearch/PIMEUpdate;

.field final mErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/O;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/O;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;->CREATOR:Lcom/google/android/gms/appdatasearch/O;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[B[Lcom/google/android/gms/appdatasearch/PIMEUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;->mErrorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;->buZ:[B

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;->bva:[Lcom/google/android/gms/appdatasearch/PIMEUpdate;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;->CREATOR:Lcom/google/android/gms/appdatasearch/O;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;->CREATOR:Lcom/google/android/gms/appdatasearch/O;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/O;->a(Lcom/google/android/gms/appdatasearch/PIMEUpdateResponse;Landroid/os/Parcel;I)V

    return-void
.end method
