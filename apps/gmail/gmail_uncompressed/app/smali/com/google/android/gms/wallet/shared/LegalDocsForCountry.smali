.class public final Lcom/google/android/gms/wallet/shared/LegalDocsForCountry;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/shared/LegalDocsForCountry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final btV:I

.field final cmr:Ljava/lang/String;

.field final cms:Ljava/lang/String;

.field final cmt:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/shared/d;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/shared/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/shared/LegalDocsForCountry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/shared/LegalDocsForCountry;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/shared/LegalDocsForCountry;->cmr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/shared/LegalDocsForCountry;->cms:Ljava/lang/String;

    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/wallet/shared/LegalDocsForCountry;->cmt:[Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array p4, v0, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/wallet/shared/d;->a(Lcom/google/android/gms/wallet/shared/LegalDocsForCountry;Landroid/os/Parcel;)V

    return-void
.end method
