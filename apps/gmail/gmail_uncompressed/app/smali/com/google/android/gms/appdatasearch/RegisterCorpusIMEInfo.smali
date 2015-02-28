.class public Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/T;


# instance fields
.field final btV:I

.field public final buS:I

.field public final bvs:[Ljava/lang/String;

.field public final bvt:Ljava/lang/String;

.field public final bvu:Ljava/lang/String;

.field public final bvv:[Ljava/lang/String;

.field public final bvw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/T;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/T;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/T;

    return-void
.end method

.method constructor <init>(II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->btV:I

    iput p2, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->buS:I

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->bvs:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->bvt:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->bvu:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->bvv:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->bvw:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;-><init>(II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/T;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/T;

    invoke-static {p0, p1}, Lcom/google/android/gms/appdatasearch/T;->a(Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;Landroid/os/Parcel;)V

    return-void
.end method
