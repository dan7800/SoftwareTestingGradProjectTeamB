.class public Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/x;


# instance fields
.field bxQ:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field byo:Ljava/lang/String;

.field byp:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/x;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->version:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/AppDescription;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->bxQ:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->byo:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->byp:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/x;->a(Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;Landroid/os/Parcel;I)V

    return-void
.end method
