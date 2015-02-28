.class public Lcom/google/android/gms/appdatasearch/StorageStats;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/u;


# instance fields
.field final btV:I

.field public final bwu:[Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;

.field public final bwv:J

.field public final bww:J

.field public final bwx:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/u;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/StorageStats;->CREATOR:Lcom/google/android/gms/appdatasearch/u;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;JJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/StorageStats;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/StorageStats;->bwu:[Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;

    iput-wide p3, p0, Lcom/google/android/gms/appdatasearch/StorageStats;->bwv:J

    iput-wide p5, p0, Lcom/google/android/gms/appdatasearch/StorageStats;->bww:J

    iput-wide p7, p0, Lcom/google/android/gms/appdatasearch/StorageStats;->bwx:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/StorageStats;->CREATOR:Lcom/google/android/gms/appdatasearch/u;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/StorageStats;->CREATOR:Lcom/google/android/gms/appdatasearch/u;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/u;->a(Lcom/google/android/gms/appdatasearch/StorageStats;Landroid/os/Parcel;I)V

    return-void
.end method
