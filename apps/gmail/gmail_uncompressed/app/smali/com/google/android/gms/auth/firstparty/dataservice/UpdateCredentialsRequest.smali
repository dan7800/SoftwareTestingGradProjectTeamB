.class public Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/i;


# instance fields
.field bxR:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field byn:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/i;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;->version:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;->byn:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;->bxR:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/i;->a(Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
