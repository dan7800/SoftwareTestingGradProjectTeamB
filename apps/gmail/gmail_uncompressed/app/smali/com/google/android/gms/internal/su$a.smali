.class public Lcom/google/android/gms/internal/su$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/dj;


# instance fields
.field public bZK:J

.field public bZL:J

.field final btV:I

.field public bvY:Z

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/su$a;->CREATOR:Lcom/google/android/gms/internal/dj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/su$a;->btV:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/su$a;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/internal/su$a;->packageName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/su$a;->bZK:J

    iput-boolean p5, p0, Lcom/google/android/gms/internal/su$a;->bvY:Z

    iput-wide p6, p0, Lcom/google/android/gms/internal/su$a;->bZL:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/su$a;->CREATOR:Lcom/google/android/gms/internal/dj;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/su$a;->CREATOR:Lcom/google/android/gms/internal/dj;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/dj;->a(Lcom/google/android/gms/internal/su$a;Landroid/os/Parcel;)V

    return-void
.end method
