.class public Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/global/k;


# instance fields
.field public acw:Ljava/lang/String;

.field final btV:I

.field public ckr:Ljava/lang/String;

.field public flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/global/k;

    invoke-direct {v0}, Lcom/google/android/gms/search/global/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->CREATOR:Lcom/google/android/gms/search/global/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->btV:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->acw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->ckr:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->flags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->CREATOR:Lcom/google/android/gms/search/global/k;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->CREATOR:Lcom/google/android/gms/search/global/k;

    invoke-static {p0, p1}, Lcom/google/android/gms/search/global/k;->a(Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;Landroid/os/Parcel;)V

    return-void
.end method
