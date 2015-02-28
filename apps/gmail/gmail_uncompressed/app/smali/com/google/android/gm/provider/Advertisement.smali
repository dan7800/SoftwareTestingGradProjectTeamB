.class public Lcom/google/android/gm/provider/Advertisement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/mail/ui/ch;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/google/android/gm/provider/Advertisement;",
            ">;"
        }
    .end annotation
.end field

.field public static final aqh:Lcom/android/mail/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/c/a",
            "<",
            "Lcom/google/android/gm/provider/Advertisement;",
            ">;"
        }
    .end annotation
.end field

.field private static final mW:Ljava/lang/String;


# instance fields
.field public azc:Z

.field public final bcd:Ljava/lang/String;

.field public final bce:Ljava/lang/String;

.field public final bcf:Ljava/lang/String;

.field public final bcg:Ljava/lang/String;

.field public final bch:Ljava/lang/String;

.field public final bci:Ljava/lang/String;

.field public final bcj:Landroid/graphics/Bitmap;

.field public final bck:Ljava/lang/String;

.field public final bcl:J

.field public final bcm:I

.field public final bcn:Ljava/lang/String;

.field public bco:I

.field public final bcp:Ljava/lang/String;

.field public final bcq:Ljava/lang/String;

.field public final bcr:Ljava/lang/String;

.field public bcs:I

.field public final bct:Ljava/lang/String;

.field public final bcu:Ljava/lang/String;

.field public final bcv:Ljava/lang/String;

.field public final bcw:Ljava/lang/String;

.field public final bcx:Ljava/lang/String;

.field public final bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

.field public final bcz:Ljava/lang/String;

.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Advertisement;->mW:Ljava/lang/String;

    .line 236
    new-instance v0, Lcom/google/android/gm/provider/b;

    invoke-direct {v0}, Lcom/google/android/gm/provider/b;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/Advertisement;->aqh:Lcom/android/mail/c/a;

    .line 327
    new-instance v0, Lcom/google/android/gm/provider/c;

    invoke-direct {v0}, Lcom/google/android/gm/provider/c;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/Advertisement;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/Advertisement;->id:I

    .line 141
    const-string v1, "event_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    .line 142
    const-string v1, "advertiser_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/Advertisement;->bce:Ljava/lang/String;

    .line 143
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/Advertisement;->bcf:Ljava/lang/String;

    .line 144
    const-string v1, "line1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/Advertisement;->bcg:Ljava/lang/String;

    .line 145
    const-string v1, "visible_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/Advertisement;->bch:Ljava/lang/String;

    .line 146
    const-string v1, "redirect_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/Advertisement;->bci:Ljava/lang/String;

    .line 147
    const-string v1, "advertiser_image_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/provider/Advertisement;->f([B)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/Advertisement;->bcj:Landroid/graphics/Bitmap;

    .line 150
    const-string v1, "body"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 151
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gm/provider/Advertisement;->bck:Ljava/lang/String;

    .line 157
    :goto_0
    const-string v1, "expiration"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcl:J

    .line 158
    const-string v1, "reason"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/Advertisement;->bcm:I

    .line 159
    const-string v1, "apm_extra_targeting_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/Advertisement;->bcn:Ljava/lang/String;

    .line 161
    const-string v1, "starred"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gm/provider/Advertisement;->azc:Z

    .line 162
    const-string v0, "view_status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Advertisement;->bco:I

    .line 163
    const-string v0, "view"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcp:Ljava/lang/String;

    .line 164
    const-string v0, "slot"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcq:Ljava/lang/String;

    .line 165
    const-string v0, "apm_xsrf_token"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcr:Ljava/lang/String;

    .line 166
    const-string v0, "delete_status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcs:I

    .line 167
    const-string v0, "wta_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bct:Ljava/lang/String;

    .line 168
    const-string v0, "view_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcu:Ljava/lang/String;

    .line 169
    const-string v0, "click_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcv:Ljava/lang/String;

    .line 170
    const-string v0, "interaction_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcw:Ljava/lang/String;

    .line 171
    const-string v0, "obfuscated_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcx:Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    invoke-direct {v0, p1}, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    .line 173
    const-string v0, "click_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcz:Ljava/lang/String;

    .line 174
    return-void

    .line 154
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/Advertisement;->bck:Ljava/lang/String;

    goto/16 :goto_0

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Advertisement;->id:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bce:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcf:Ljava/lang/String;

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcg:Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bch:Ljava/lang/String;

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bci:Ljava/lang/String;

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcj:Landroid/graphics/Bitmap;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bck:Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gm/provider/Advertisement;->bcl:J

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcm:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcn:Ljava/lang/String;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/provider/Advertisement;->azc:Z

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Advertisement;->bco:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcp:Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcq:Ljava/lang/String;

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcr:Ljava/lang/String;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcs:I

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bct:Ljava/lang/String;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcu:Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcv:Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcw:Ljava/lang/String;

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcx:Ljava/lang/String;

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 370
    if-nez v0, :cond_1

    .line 371
    sget-object v0, Lcom/google/android/gm/provider/Advertisement;->mW:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "Unexpected null advertisementOptions in Advertisement(Parcel)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 373
    new-instance v0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    invoke-direct {v0}, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    .line 377
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcz:Ljava/lang/String;

    .line 378
    return-void

    :cond_0
    move v0, v2

    .line 358
    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/common/a/a/a;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/provider/Advertisement;->id:I

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    .line 179
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bce:Ljava/lang/String;

    .line 180
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcf:Ljava/lang/String;

    .line 181
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcg:Ljava/lang/String;

    .line 182
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bch:Ljava/lang/String;

    .line 183
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bci:Ljava/lang/String;

    .line 184
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/Advertisement;->f([B)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcj:Landroid/graphics/Bitmap;

    .line 186
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bck:Ljava/lang/String;

    .line 187
    invoke-virtual {p1, v1}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcl:J

    .line 188
    invoke-virtual {p1, v3}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcm:I

    .line 189
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcn:Ljava/lang/String;

    .line 190
    iput-boolean v2, p0, Lcom/google/android/gm/provider/Advertisement;->azc:Z

    .line 191
    iput v2, p0, Lcom/google/android/gm/provider/Advertisement;->bco:I

    .line 192
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcp:Ljava/lang/String;

    .line 193
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcq:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Lcom/google/android/gm/provider/Advertisement;->bcr:Ljava/lang/String;

    .line 195
    iput v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcs:I

    .line 196
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bct:Ljava/lang/String;

    .line 197
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcu:Ljava/lang/String;

    .line 198
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcv:Ljava/lang/String;

    .line 199
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcw:Ljava/lang/String;

    .line 200
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcx:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    invoke-direct {v0, p1}, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;-><init>(Lcom/google/common/a/a/a;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcz:Ljava/lang/String;

    .line 203
    return-void

    .line 187
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 188
    goto :goto_1
.end method

.method private static f([B)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 259
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    const/4 v0, 0x0

    .line 263
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final DL()[B
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcj:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 255
    :goto_0
    return-object v0

    .line 253
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 254
    iget-object v1, p0, Lcom/google/android/gm/provider/Advertisement;->bcj:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 255
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final E(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcz:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ci"

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcz:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 272
    :cond_0
    return-object p1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 290
    iget v0, p0, Lcom/google/android/gm/provider/Advertisement;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    const-string v1, " {Ad eventId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, ", advertiserName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v1, ", line1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, ", visibleUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, ", redirectUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bci:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, ", expiration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcl:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 305
    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, ", apmExtraTargetingData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, ", starred: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gm/provider/Advertisement;->azc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, ", viewStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gm/provider/Advertisement;->bco:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    const-string v1, ", view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, ", slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, ", apmXsrfToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, ", deleteStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, ", wtaData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bct:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v1, ", viewUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, ", clickUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, ", interactionUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, ", obfuscatedData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcx:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, ", advertisementOptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, ", reportToBow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    iget-boolean v2, v2, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, ", sendAdBody: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    iget-boolean v2, v2, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->bcC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 321
    const-string v1, ", clickId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Advertisement;->bcz:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final vE()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public final vF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bck:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 387
    iget v0, p0, Lcom/google/android/gm/provider/Advertisement;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bci:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcj:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 395
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bck:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    iget-wide v4, p0, Lcom/google/android/gm/provider/Advertisement;->bcl:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 397
    iget v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Advertisement;->azc:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget v0, p0, Lcom/google/android/gm/provider/Advertisement;->bco:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 404
    iget v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bct:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    if-nez v0, :cond_1

    .line 411
    sget-object v0, Lcom/google/android/gm/provider/Advertisement;->mW:Ljava/lang/String;

    const-string v1, "unexpected null advertisementOptions object in writeToParcel"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 412
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    :goto_1
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;->writeToParcel(Landroid/os/Parcel;I)V

    .line 418
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    return-void

    :cond_0
    move v0, v2

    .line 399
    goto :goto_0

    .line 414
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget-object v0, p0, Lcom/google/android/gm/provider/Advertisement;->bcy:Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1
.end method
