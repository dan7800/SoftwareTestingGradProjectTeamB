.class public Lcom/google/android/gms/auth/AccountChangeEventsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/b;


# instance fields
.field final bxf:I

.field bxh:Ljava/lang/String;

.field bxj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->CREATOR:Lcom/google/android/gms/auth/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->bxf:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->bxf:I

    iput p2, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->bxj:I

    iput-object p3, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->bxh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final eq(I)Lcom/google/android/gms/auth/AccountChangeEventsRequest;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->bxj:I

    return-object p0
.end method

.method public final fJ(Ljava/lang/String;)Lcom/google/android/gms/auth/AccountChangeEventsRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->bxh:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/b;->a(Lcom/google/android/gms/auth/AccountChangeEventsRequest;Landroid/os/Parcel;)V

    return-void
.end method
