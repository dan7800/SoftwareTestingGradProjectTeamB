.class public Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/c;


# instance fields
.field bxS:Ljava/lang/String;

.field byq:Ljava/lang/String;

.field bzS:Landroid/graphics/Bitmap;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/c;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->bxS:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->byq:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->bzS:Landroid/graphics/Bitmap;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/c;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;Landroid/os/Parcel;I)V

    return-void
.end method
