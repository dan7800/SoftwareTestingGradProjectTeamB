.class public final Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field account:Landroid/accounts/Account;

.field private final btV:I

.field bzP:Ljava/lang/String;

.field clb:I

.field clc:Ljava/lang/String;

.field cld:I

.field cle:Z

.field clf:Z

.field clg:Z

.field clh:Z

.field cli:[Lcom/google/android/gms/wallet/CountrySpecification;

.field clj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/g;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->btV:I

    return-void
.end method

.method constructor <init>(IILandroid/accounts/Account;Ljava/lang/String;IZZZLjava/lang/String;Z[Lcom/google/android/gms/wallet/CountrySpecification;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "IZZZ",
            "Ljava/lang/String;",
            "Z[",
            "Lcom/google/android/gms/wallet/CountrySpecification;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->btV:I

    iput p2, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->clb:I

    iput-object p3, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->account:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->clc:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->cld:I

    iput-boolean p6, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->cle:Z

    iput-boolean p7, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->clf:Z

    iput-boolean p8, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->clg:Z

    iput-object p9, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->bzP:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->clh:Z

    iput-object p11, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->cli:[Lcom/google/android/gms/wallet/CountrySpecification;

    iput-object p12, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->clj:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->btV:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/g;->a(Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;Landroid/os/Parcel;I)V

    return-void
.end method
