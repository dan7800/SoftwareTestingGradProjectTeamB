.class public final Lcom/google/android/gms/googlehelp/GoogleHelp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/googlehelp/GoogleHelp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field alt:Ljava/lang/String;

.field bQA:Ljava/lang/String;

.field bQB:Landroid/accounts/Account;

.field bQC:Landroid/os/Bundle;

.field bQD:Z

.field bQE:Z

.field bQF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bQG:Ljava/lang/String;

.field bQH:Landroid/os/Bundle;

.field bQI:Landroid/graphics/Bitmap;

.field bQJ:[B

.field bQK:I

.field bQL:I

.field bQM:Z

.field bQN:Ljava/lang/String;

.field bQO:Ljava/lang/String;

.field bQP:Landroid/net/Uri;

.field bQQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field bQR:I

.field bQS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/googlehelp/OfflineSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/googlehelp/b;

    invoke-direct {v0}, Lcom/google/android/gms/googlehelp/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/googlehelp/GoogleHelp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;ZZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Bitmap;[BIIZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/graphics/Bitmap;",
            "[BIIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/googlehelp/OfflineSuggestion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQA:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQB:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQC:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQD:Z

    iput-boolean p6, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQE:Z

    iput-object p7, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQF:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alt:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQG:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQH:Landroid/os/Bundle;

    iput-object p11, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQI:Landroid/graphics/Bitmap;

    iput-object p12, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQJ:[B

    iput p13, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQK:I

    iput p14, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQL:I

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQM:Z

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQN:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQO:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQP:Landroid/net/Uri;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQQ:Ljava/util/List;

    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQR:I

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQS:Ljava/util/List;

    return-void
.end method

.method public static gi(Ljava/lang/String;)Lcom/google/android/gms/googlehelp/GoogleHelp;
    .locals 22

    new-instance v0, Lcom/google/android/gms/googlehelp/GoogleHelp;

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v21}, Lcom/google/android/gms/googlehelp/GoogleHelp;-><init>(ILjava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;ZZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Bitmap;[BIIZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;ILjava/util/List;)V

    return-object v0
.end method

.method public static j(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final L(Landroid/net/Uri;)Lcom/google/android/gms/googlehelp/GoogleHelp;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQP:Landroid/net/Uri;

    return-object p0
.end method

.method public final QA()Landroid/content/Intent;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.googlehelp.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_GOOGLE_HELP"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final QB()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQP:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(ILjava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/googlehelp/GoogleHelp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQQ:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final d(Landroid/accounts/Account;)Lcom/google/android/gms/googlehelp/GoogleHelp;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQB:Landroid/accounts/Account;

    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h(Landroid/graphics/Bitmap;)Lcom/google/android/gms/googlehelp/GoogleHelp;
    .locals 11

    const/high16 v10, 0x40000

    const/4 v1, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iput-object v3, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQI:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQJ:[B

    :goto_0
    return-object p0

    :cond_0
    move v0, v1

    :goto_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x3c

    invoke-virtual {p1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    array-length v5, v4

    if-gt v5, v10, :cond_1

    iput-object v4, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQJ:[B

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQK:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQL:I

    move-object v0, v3

    move-object v1, p0

    :goto_2
    iput-object v0, v1, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQI:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    array-length v4, v4

    if-le v4, v10, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v0, v4

    int-to-double v4, v0

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v6, v4

    double-to-int v0, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double v4, v6, v4

    double-to-int v4, v4

    invoke-static {p1, v0, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "GOOGLEHELP_GoogleHelp"

    const-string v4, "The bytes of the compressed jpeg is too large."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQJ:[B

    if-nez p1, :cond_3

    move-object v0, v3

    move-object v1, p0

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v1, v3

    int-to-double v4, v1

    const-wide/high16 v6, 0x4110000000000000L    # 262144.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v6, v4

    double-to-int v1, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v6, v3

    div-double v4, v6, v4

    double-to-int v3, v4

    invoke-static {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, p0

    goto :goto_2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/googlehelp/b;->a(Lcom/google/android/gms/googlehelp/GoogleHelp;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final z(Landroid/os/Bundle;)Lcom/google/android/gms/googlehelp/GoogleHelp;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->bQH:Landroid/os/Bundle;

    return-object p0
.end method
