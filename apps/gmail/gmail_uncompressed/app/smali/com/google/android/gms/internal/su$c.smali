.class public Lcom/google/android/gms/internal/su$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/t;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/dl;


# instance fields
.field public bZM:[Lcom/google/android/gms/internal/su$a;

.field public bZN:J

.field public bZO:J

.field public bZP:J

.field final btV:I

.field public buu:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/su$c;->CREATOR:Lcom/google/android/gms/internal/dl;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/su$c;->btV:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/internal/su$a;JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/su$c;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/internal/su$c;->buu:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/internal/su$c;->bZM:[Lcom/google/android/gms/internal/su$a;

    iput-wide p4, p0, Lcom/google/android/gms/internal/su$c;->bZN:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/su$c;->bZO:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/su$c;->bZP:J

    return-void
.end method


# virtual methods
.method public final Jk()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/su$c;->buu:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/su$c;->CREATOR:Lcom/google/android/gms/internal/dl;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/su$c;->CREATOR:Lcom/google/android/gms/internal/dl;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/dl;->a(Lcom/google/android/gms/internal/su$c;Landroid/os/Parcel;I)V

    return-void
.end method
