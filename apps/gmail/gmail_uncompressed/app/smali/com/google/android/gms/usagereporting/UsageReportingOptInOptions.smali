.class public Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/usagereporting/a;


# instance fields
.field final btV:I

.field ckI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/usagereporting/a;

    invoke-direct {v0}, Lcom/google/android/gms/usagereporting/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->CREATOR:Lcom/google/android/gms/usagereporting/a;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->btV:I

    iput p2, p0, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->ckI:I

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

    invoke-static {p0, p1}, Lcom/google/android/gms/usagereporting/a;->a(Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;Landroid/os/Parcel;)V

    return-void
.end method