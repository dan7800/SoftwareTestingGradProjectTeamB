.class public Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/d;


# instance fields
.field public final byO:Ljava/lang/String;

.field public final byQ:Ljava/lang/String;

.field public final byR:Ljava/lang/String;

.field public final length:I

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/d;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->byO:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->byQ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->byR:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->length:I

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

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/d;->a(Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;Landroid/os/Parcel;)V

    return-void
.end method
