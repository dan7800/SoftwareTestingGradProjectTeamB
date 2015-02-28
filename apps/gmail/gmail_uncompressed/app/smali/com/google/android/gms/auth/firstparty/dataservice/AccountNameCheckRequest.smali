.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/c;


# instance fields
.field bxN:Ljava/lang/String;

.field bxO:Ljava/lang/String;

.field bxP:Ljava/lang/String;

.field bxQ:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field bxR:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->version:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->bxN:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->bxO:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->bxP:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->bxQ:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->bxR:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/c;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;Landroid/os/Parcel;I)V

    return-void
.end method
