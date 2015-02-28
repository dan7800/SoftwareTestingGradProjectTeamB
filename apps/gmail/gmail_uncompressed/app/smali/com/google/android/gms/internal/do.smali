.class public final Lcom/google/android/gms/internal/do;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/h;


# instance fields
.field public final bRP:Ljava/lang/String;

.field public final bRQ:Ljava/lang/String;

.field public final bRR:Ljava/lang/String;

.field public final bRS:Ljava/lang/String;

.field public final bzq:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/do;->CREATOR:Lcom/google/android/gms/internal/h;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/do;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/do;->bRP:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/do;->bzq:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/do;->mimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/do;->packageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/do;->bRQ:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/do;->bRR:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/do;->bRS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/h;->a(Lcom/google/android/gms/internal/do;Landroid/os/Parcel;)V

    return-void
.end method
