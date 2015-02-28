.class public Lcom/google/android/gms/appdatasearch/NativeApiInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/M;


# instance fields
.field final btV:I

.field public final buO:Ljava/lang/String;

.field public final buP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/M;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/M;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/NativeApiInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/M;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/NativeApiInfo;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/NativeApiInfo;->buO:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/NativeApiInfo;->buP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/NativeApiInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/M;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/NativeApiInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/M;

    invoke-static {p0, p1}, Lcom/google/android/gms/appdatasearch/M;->a(Lcom/google/android/gms/appdatasearch/NativeApiInfo;Landroid/os/Parcel;)V

    return-void
.end method
