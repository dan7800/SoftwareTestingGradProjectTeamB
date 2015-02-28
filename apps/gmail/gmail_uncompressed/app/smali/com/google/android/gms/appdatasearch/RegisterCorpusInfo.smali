.class public Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/U;


# instance fields
.field public final account:Landroid/accounts/Account;

.field final btV:I

.field public final buf:Ljava/lang/String;

.field public final bvA:Z

.field public final bvB:Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;

.field public final bvx:Landroid/net/Uri;

.field public final bvy:[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

.field public final bvz:Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;

.field public final name:Ljava/lang/String;

.field public final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/U;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/U;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/U;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;ZLandroid/accounts/Account;Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->version:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->bvx:Landroid/net/Uri;

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->bvy:[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    iput-object p6, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->bvz:Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;

    iput-boolean p7, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->bvA:Z

    iput-object p8, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->account:Landroid/accounts/Account;

    iput-object p9, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->bvB:Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;

    iput-object p10, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->buf:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;ZLandroid/accounts/Account;Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;ZLandroid/accounts/Account;Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/U;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->bvx:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->bvx:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->bvy:[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    iget-object v2, p1, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->bvy:[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/U;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/U;->a(Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;Landroid/os/Parcel;I)V

    return-void
.end method
