.class public Lcom/google/android/gms/appdatasearch/DocumentResults;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/C;


# instance fields
.field final btV:I

.field final buk:Landroid/os/Bundle;

.field final bul:Landroid/os/Bundle;

.field final bum:Landroid/os/Bundle;

.field final mErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/C;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/C;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/DocumentResults;->CREATOR:Lcom/google/android/gms/appdatasearch/C;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/DocumentResults;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/DocumentResults;->mErrorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/DocumentResults;->buk:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/DocumentResults;->bul:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/DocumentResults;->bum:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentResults;->CREATOR:Lcom/google/android/gms/appdatasearch/C;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentResults;->CREATOR:Lcom/google/android/gms/appdatasearch/C;

    invoke-static {p0, p1}, Lcom/google/android/gms/appdatasearch/C;->a(Lcom/google/android/gms/appdatasearch/DocumentResults;Landroid/os/Parcel;)V

    return-void
.end method
