.class public final Lcom/android/mail/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ajO:Landroid/net/Uri;

.field public final ajP:[B

.field public final ajQ:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v0}, Lcom/android/mail/a;-><init>(Landroid/net/Uri;[BLandroid/graphics/Bitmap;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mail/a;-><init>(Landroid/net/Uri;[BLandroid/graphics/Bitmap;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[B)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/a;-><init>(Landroid/net/Uri;[BLandroid/graphics/Bitmap;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;[BLandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/mail/a;->ajO:Landroid/net/Uri;

    .line 42
    iput-object p2, p0, Lcom/android/mail/a;->ajP:[B

    .line 43
    iput-object p3, p0, Lcom/android/mail/a;->ajQ:Landroid/graphics/Bitmap;

    .line 44
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "{photo="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mail/a;->ajQ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/a;->ajQ:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/a;->ajP:[B

    goto :goto_0
.end method
