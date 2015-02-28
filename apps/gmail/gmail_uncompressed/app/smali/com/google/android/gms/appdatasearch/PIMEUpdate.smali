.class public Lcom/google/android/gms/appdatasearch/PIMEUpdate;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/N;


# instance fields
.field public final account:Landroid/accounts/Account;

.field final btV:I

.field final buQ:[B

.field final buR:[B

.field public final buS:I

.field public final buT:Ljava/lang/String;

.field public final buU:Ljava/lang/String;

.field public final buV:Z

.field final buW:Landroid/os/Bundle;

.field public final buX:J

.field public final buY:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/N;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/N;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->CREATOR:Lcom/google/android/gms/appdatasearch/N;

    return-void
.end method

.method constructor <init>(I[B[BILjava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;JJLandroid/accounts/Account;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->buQ:[B

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->buR:[B

    iput p4, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->buS:I

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->buT:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->buU:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->buV:Z

    iput-object p8, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->buW:Landroid/os/Bundle;

    iput-wide p9, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->buX:J

    iput-wide p11, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->buY:J

    iput-object p13, p0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->account:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->CREATOR:Lcom/google/android/gms/appdatasearch/N;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PIMEUpdate;->CREATOR:Lcom/google/android/gms/appdatasearch/N;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/N;->a(Lcom/google/android/gms/appdatasearch/PIMEUpdate;Landroid/os/Parcel;I)V

    return-void
.end method
