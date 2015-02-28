.class public Lcom/google/android/gms/appdatasearch/Section;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/t;


# instance fields
.field final btV:I

.field public final bws:Z

.field public final bwt:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/t;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/Section;->CREATOR:Lcom/google/android/gms/appdatasearch/t;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/Section;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/Section;->name:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/appdatasearch/Section;->bws:Z

    iput p4, p0, Lcom/google/android/gms/appdatasearch/Section;->bwt:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/appdatasearch/Section;-><init>(Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/appdatasearch/Section;-><init>(ILjava/lang/String;ZI)V

    return-void
.end method

.method public static fI(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "semantic:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/Section;->CREATOR:Lcom/google/android/gms/appdatasearch/t;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/Section;->CREATOR:Lcom/google/android/gms/appdatasearch/t;

    invoke-static {p0, p1}, Lcom/google/android/gms/appdatasearch/t;->a(Lcom/google/android/gms/appdatasearch/Section;Landroid/os/Parcel;)V

    return-void
.end method
