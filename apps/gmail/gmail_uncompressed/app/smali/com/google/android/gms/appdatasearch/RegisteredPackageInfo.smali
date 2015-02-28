.class public Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/p;


# instance fields
.field final btV:I

.field public final bvX:J

.field public final bvY:Z

.field public final bvZ:J

.field public final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/p;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/p;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->packageName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->bvX:J

    iput-boolean p5, p0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->bvY:Z

    iput-wide p6, p0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->bvZ:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/p;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/p;

    invoke-static {p0, p1}, Lcom/google/android/gms/appdatasearch/p;->a(Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;Landroid/os/Parcel;)V

    return-void
.end method
