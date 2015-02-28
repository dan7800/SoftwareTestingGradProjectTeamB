.class public Lcom/google/android/gms/people/model/AccountMetadata;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/model/f;


# instance fields
.field final btV:I

.field public cjM:Z

.field public cjN:Z

.field public cjO:Z

.field public cjP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/model/f;

    invoke-direct {v0}, Lcom/google/android/gms/people/model/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/model/AccountMetadata;->CREATOR:Lcom/google/android/gms/people/model/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/people/model/AccountMetadata;->btV:I

    return-void
.end method

.method constructor <init>(IZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/people/model/AccountMetadata;->btV:I

    iput-boolean p2, p0, Lcom/google/android/gms/people/model/AccountMetadata;->cjM:Z

    iput-boolean p3, p0, Lcom/google/android/gms/people/model/AccountMetadata;->cjN:Z

    iput-boolean p4, p0, Lcom/google/android/gms/people/model/AccountMetadata;->cjO:Z

    iput-boolean p5, p0, Lcom/google/android/gms/people/model/AccountMetadata;->cjP:Z

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

    invoke-static {p0, p1}, Lcom/google/android/gms/people/model/f;->a(Lcom/google/android/gms/people/model/AccountMetadata;Landroid/os/Parcel;)V

    return-void
.end method
