.class public Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bcA:Z

.field public final bcB:Z

.field public final bcC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 441
    new-instance v0, Lcom/google/android/gm/provider/d;

    invoke-direct {v0}, Lcom/google/android/gm/provider/d;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcA:Z

    .line 461
    iput-boolean v1, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcB:Z

    .line 462
    iput-boolean v1, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcC:Z

    .line 463
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    const-string v0, "report_ad_server"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcA:Z

    .line 468
    const-string v0, "report_bow"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcB:Z

    .line 470
    const-string v0, "send_body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcC:Z

    .line 472
    return-void

    :cond_0
    move v0, v2

    .line 466
    goto :goto_0

    :cond_1
    move v0, v2

    .line 468
    goto :goto_1

    :cond_2
    move v1, v2

    .line 470
    goto :goto_2
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcA:Z

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcB:Z

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcC:Z

    .line 494
    return-void

    :cond_0
    move v0, v2

    .line 491
    goto :goto_0

    :cond_1
    move v0, v2

    .line 492
    goto :goto_1

    :cond_2
    move v1, v2

    .line 493
    goto :goto_2
.end method

.method public constructor <init>(Lcom/google/common/a/a/a;)V
    .locals 6

    .prologue
    const/16 v3, 0x13

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    invoke-virtual {p1, v3}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    invoke-virtual {p1, v3}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v3

    .line 477
    invoke-virtual {v3, v1}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v1}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcA:Z

    .line 479
    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v4}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcB:Z

    .line 481
    invoke-virtual {v3, v5}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v5}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcC:Z

    .line 488
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 477
    goto :goto_0

    :cond_1
    move v0, v2

    .line 479
    goto :goto_1

    :cond_2
    move v1, v2

    .line 481
    goto :goto_2

    .line 484
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcA:Z

    .line 485
    iput-boolean v2, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcB:Z

    .line 486
    iput-boolean v2, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcC:Z

    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    const-string v1, ", reportToAdServer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcA:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 507
    const-string v1, ", reportToBow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 508
    const-string v1, ", sendAdBody: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 498
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcA:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcB:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcC:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    return-void

    :cond_0
    move v0, v2

    .line 498
    goto :goto_0

    :cond_1
    move v0, v2

    .line 499
    goto :goto_1

    :cond_2
    move v1, v2

    .line 500
    goto :goto_2
.end method
