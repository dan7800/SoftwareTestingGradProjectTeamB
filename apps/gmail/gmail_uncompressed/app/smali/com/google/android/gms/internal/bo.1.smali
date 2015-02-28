.class public final Lcom/google/android/gms/internal/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/e;


# instance fields
.field public final Tt:Ljava/lang/String;

.field public final bRD:I

.field public final bRE:I

.field public final bRF:I

.field public final bRG:I

.field public final bRH:I

.field public final bRI:I

.field public final bRJ:I

.field public final bRK:Ljava/lang/String;

.field public final bRL:I

.field public final bRM:Ljava/lang/String;

.field public final bRN:I

.field public final bRO:I

.field public final backgroundColor:I

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/internal/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bo;->CREATOR:Lcom/google/android/gms/internal/e;

    return-void
.end method

.method constructor <init>(IIIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bo;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/bo;->bRD:I

    iput p3, p0, Lcom/google/android/gms/internal/bo;->backgroundColor:I

    iput p4, p0, Lcom/google/android/gms/internal/bo;->bRE:I

    iput p5, p0, Lcom/google/android/gms/internal/bo;->bRF:I

    iput p6, p0, Lcom/google/android/gms/internal/bo;->bRG:I

    iput p7, p0, Lcom/google/android/gms/internal/bo;->bRH:I

    iput p8, p0, Lcom/google/android/gms/internal/bo;->bRI:I

    iput p9, p0, Lcom/google/android/gms/internal/bo;->bRJ:I

    iput-object p10, p0, Lcom/google/android/gms/internal/bo;->bRK:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/internal/bo;->bRL:I

    iput-object p12, p0, Lcom/google/android/gms/internal/bo;->bRM:Ljava/lang/String;

    iput p13, p0, Lcom/google/android/gms/internal/bo;->bRN:I

    iput p14, p0, Lcom/google/android/gms/internal/bo;->bRO:I

    iput-object p15, p0, Lcom/google/android/gms/internal/bo;->Tt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/e;->a(Lcom/google/android/gms/internal/bo;Landroid/os/Parcel;)V

    return-void
.end method
