.class public Lcom/android/mail/providers/Attachment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public static final mW:Ljava/lang/String;


# instance fields
.field private ayL:Ljava/lang/String;

.field private ayM:Ljava/lang/String;

.field public ayN:I

.field public ayO:I

.field public ayP:Landroid/net/Uri;

.field public ayQ:Landroid/net/Uri;

.field public ayR:Landroid/net/Uri;

.field public ayS:Ljava/lang/String;

.field private transient ayT:Landroid/net/Uri;

.field private ayU:Z

.field public flags:I

.field private name:Ljava/lang/String;

.field public partId:Ljava/lang/String;

.field public size:I

.field public state:I

.field public type:I

.field public uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/Attachment;->mW:Ljava/lang/String;

    .line 710
    new-instance v0, Lcom/android/mail/providers/f;

    invoke-direct {v0}, Lcom/android/mail/providers/f;-><init>()V

    sput-object v0, Lcom/android/mail/providers/Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const-string v0, "_display_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 291
    const-string v0, "_size"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->size:I

    .line 292
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Attachment;->bJ(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 293
    const-string v0, "contentType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    .line 294
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    .line 295
    const-string v0, "destination"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->ayN:I

    .line 296
    const-string v0, "downloadedSize"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->ayO:I

    .line 297
    const-string v0, "contentUri"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Attachment;->bJ(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    .line 298
    const-string v0, "thumbnailUri"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Attachment;->bJ(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    .line 299
    const-string v0, "previewIntentUri"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Attachment;->bJ(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    .line 301
    const-string v0, "providerData"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    .line 302
    const-string v0, "supportsDownloadAgain"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/providers/Attachment;->ayU:Z

    .line 303
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->type:I

    .line 304
    const-string v0, "flags"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->flags:I

    .line 305
    const-string v0, "contentId"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/mail/j;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    :try_start_0
    invoke-interface {p2}, Lcom/android/emailcommon/mail/j;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/a/i;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string v2, "name"

    invoke-static {v0, v2}, Lcom/android/emailcommon/a/i;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 243
    invoke-interface {p2}, Lcom/android/emailcommon/mail/j;->kP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/a/i;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string v2, "filename"

    invoke-static {v0, v2}, Lcom/android/emailcommon/a/i;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-interface {p2}, Lcom/android/emailcommon/mail/j;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mail/utils/I;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    .line 249
    invoke-static {p3, p4, p5}, Lcom/android/mail/providers/EmlAttachmentProvider;->c(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 250
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    .line 251
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    .line 253
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/providers/Attachment;->ayU:Z

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->ayN:I

    .line 257
    if-eqz p6, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/mail/providers/Attachment;->type:I

    .line 258
    iput-object p5, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->flags:I

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 263
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/mail/providers/Attachment;->lB()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :try_start_1
    invoke-interface {p2}, Lcom/android/emailcommon/mail/j;->kO()Lcom/android/emailcommon/mail/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/emailcommon/mail/c;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 268
    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    const-string v4, "rwt"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v3

    .line 269
    invoke-static {v0, v3}, Lorg/apache/a/a/a;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v4

    iput v4, p0, Lcom/android/mail/providers/Attachment;->size:I

    .line 270
    iget v4, p0, Lcom/android/mail/providers/Attachment;->size:I

    iput v4, p0, Lcom/android/mail/providers/Attachment;->ayO:I

    .line 271
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 272
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/mail/providers/Attachment;->lB()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 283
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 257
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    sget-object v3, Lcom/android/mail/providers/Attachment;->mW:Ljava/lang/String;

    const-string v4, "Error in writing attachment to cache"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 280
    :catch_1
    move-exception v0

    .line 281
    sget-object v2, Lcom/android/mail/providers/Attachment;->mW:Ljava/lang/String;

    const-string v3, "Error parsing eml attachment"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 275
    :catch_2
    move-exception v0

    .line 276
    :try_start_3
    sget-object v3, Lcom/android/mail/providers/Attachment;->mW:Ljava/lang/String;

    const-string v4, "Error in writing attachment to cache"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string v1, "_display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 197
    const-string v1, "_size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Attachment;->size:I

    .line 198
    const-string v1, "uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 199
    const-string v1, "contentType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    .line 200
    const-string v1, "state"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Attachment;->state:I

    .line 201
    const-string v1, "destination"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Attachment;->ayN:I

    .line 202
    const-string v1, "downloadedSize"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Attachment;->ayO:I

    .line 203
    const-string v1, "contentUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/providers/Attachment;->bJ(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    .line 205
    const-string v1, "thumbnailUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/providers/Attachment;->bJ(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    .line 207
    const-string v1, "previewIntentUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/providers/Attachment;->bJ(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    .line 209
    const-string v1, "providerData"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    .line 210
    const-string v1, "supportsDownloadAgain"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/android/mail/providers/Attachment;->ayU:Z

    .line 212
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->type:I

    .line 213
    const-string v0, "flags"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->flags:I

    goto/16 :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->size:I

    .line 177
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->ayN:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->ayO:I

    .line 182
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    .line 183
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    .line 184
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/providers/Attachment;->ayU:Z

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->type:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->flags:I

    .line 189
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const-string v0, "_display_name"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 218
    const-string v0, "_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->size:I

    .line 219
    const-string v0, "uri"

    invoke-static {p1, v0}, Lcom/android/mail/providers/Attachment;->a(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 220
    const-string v0, "contentType"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    .line 221
    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    .line 222
    const-string v0, "destination"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->ayN:I

    .line 223
    const-string v0, "downloadedSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->ayO:I

    .line 224
    const-string v0, "contentUri"

    invoke-static {p1, v0}, Lcom/android/mail/providers/Attachment;->a(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    .line 225
    const-string v0, "thumbnailUri"

    invoke-static {p1, v0}, Lcom/android/mail/providers/Attachment;->a(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    .line 226
    const-string v0, "previewIntentUri"

    invoke-static {p1, v0}, Lcom/android/mail/providers/Attachment;->a(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    .line 227
    const-string v0, "providerData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    .line 228
    const-string v0, "supportsDownloadAgain"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/providers/Attachment;->ayU:Z

    .line 229
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->type:I

    .line 230
    const-string v0, "flags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->flags:I

    .line 231
    return-void
.end method

.method private static R(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static bJ(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 400
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static bK(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 629
    if-eqz p0, :cond_0

    .line 631
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 633
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 634
    new-instance v3, Lcom/android/mail/providers/Attachment;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/mail/providers/Attachment;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 641
    :cond_0
    return-object v1
.end method

.method public static d(IIIZ)I
    .locals 2

    .prologue
    .line 674
    mul-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p2

    .line 675
    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 677
    if-eqz p3, :cond_0

    .line 679
    or-int/2addr v0, p0

    .line 682
    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    goto :goto_0
.end method

.method private lB()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 313
    new-instance v1, Landroid/content/ContentValues;

    const/16 v0, 0xc

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 315
    const-string v0, "_display_name"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "_size"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    const-string v0, "uri"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "contentType"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "state"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v0, "destination"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->ayN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string v0, "downloadedSize"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->ayO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    const-string v0, "contentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v0, "thumbnailUri"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v2, "previewIntentUri"

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v0, "providerData"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v0, "supportsDownloadAgain"

    iget-boolean v2, p0, Lcom/android/mail/providers/Attachment;->ayU:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 328
    const-string v0, "type"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v0, "flags"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    const-string v0, "contentId"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-object v1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static n(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mail/providers/Attachment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 613
    if-nez p0, :cond_0

    .line 614
    const/4 v0, 0x0

    .line 624
    :goto_0
    return-object v0

    .line 616
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 618
    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 619
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->up()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 621
    :catch_0
    move-exception v0

    .line 622
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 624
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 534
    if-ne p0, p1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 537
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 538
    goto :goto_0

    .line 541
    :cond_3
    check-cast p1, Lcom/android/mail/providers/Attachment;

    .line 543
    iget v2, p0, Lcom/android/mail/providers/Attachment;->ayN:I

    iget v3, p1, Lcom/android/mail/providers/Attachment;->ayN:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 544
    goto :goto_0

    .line 546
    :cond_4
    iget v2, p0, Lcom/android/mail/providers/Attachment;->ayO:I

    iget v3, p1, Lcom/android/mail/providers/Attachment;->ayO:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 547
    goto :goto_0

    .line 549
    :cond_5
    iget v2, p0, Lcom/android/mail/providers/Attachment;->size:I

    iget v3, p1, Lcom/android/mail/providers/Attachment;->size:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 550
    goto :goto_0

    .line 552
    :cond_6
    iget v2, p0, Lcom/android/mail/providers/Attachment;->state:I

    iget v3, p1, Lcom/android/mail/providers/Attachment;->state:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 553
    goto :goto_0

    .line 555
    :cond_7
    iget-boolean v2, p0, Lcom/android/mail/providers/Attachment;->ayU:Z

    iget-boolean v3, p1, Lcom/android/mail/providers/Attachment;->ayU:Z

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 556
    goto :goto_0

    .line 558
    :cond_8
    iget v2, p0, Lcom/android/mail/providers/Attachment;->type:I

    iget v3, p1, Lcom/android/mail/providers/Attachment;->type:I

    if-eq v2, v3, :cond_9

    move v0, v1

    .line 559
    goto :goto_0

    .line 561
    :cond_9
    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 563
    goto :goto_0

    .line 561
    :cond_b
    iget-object v2, p1, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 565
    :cond_c
    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v0, v1

    .line 566
    goto :goto_0

    .line 565
    :cond_e
    iget-object v2, p1, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    if-nez v2, :cond_d

    .line 568
    :cond_f
    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    .line 569
    goto :goto_0

    .line 568
    :cond_11
    iget-object v2, p1, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 571
    :cond_12
    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    .line 572
    goto/16 :goto_0

    .line 571
    :cond_14
    iget-object v2, p1, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 574
    :cond_15
    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    move v0, v1

    .line 576
    goto/16 :goto_0

    .line 574
    :cond_17
    iget-object v2, p1, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    if-nez v2, :cond_16

    .line 578
    :cond_18
    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_19
    move v0, v1

    .line 580
    goto/16 :goto_0

    .line 578
    :cond_1a
    iget-object v2, p1, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    if-nez v2, :cond_19

    .line 582
    :cond_1b
    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1c
    move v0, v1

    .line 584
    goto/16 :goto_0

    .line 582
    :cond_1d
    iget-object v2, p1, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    if-nez v2, :cond_1c

    .line 586
    :cond_1e
    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 587
    goto/16 :goto_0

    .line 586
    :cond_1f
    iget-object v2, p1, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayM:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mail/utils/I;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayM:Ljava/lang/String;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayM:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 595
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 596
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 597
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/android/mail/providers/Attachment;->size:I

    add-int/2addr v0, v2

    .line 598
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 599
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 600
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/android/mail/providers/Attachment;->state:I

    add-int/2addr v0, v2

    .line 601
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/android/mail/providers/Attachment;->ayN:I

    add-int/2addr v0, v2

    .line 602
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/android/mail/providers/Attachment;->ayO:I

    add-int/2addr v0, v2

    .line 603
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 604
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 605
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 606
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/android/mail/providers/Attachment;->type:I

    add-int/2addr v0, v2

    .line 607
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 608
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/mail/providers/Attachment;->ayU:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    .line 609
    return v0

    :cond_1
    move v0, v1

    .line 595
    goto :goto_0

    :cond_2
    move v0, v1

    .line 596
    goto :goto_1

    :cond_3
    move v0, v1

    .line 598
    goto :goto_2

    :cond_4
    move v0, v1

    .line 599
    goto :goto_3

    :cond_5
    move v0, v1

    .line 603
    goto :goto_4

    :cond_6
    move v0, v1

    .line 604
    goto :goto_5

    :cond_7
    move v0, v1

    .line 605
    goto :goto_6

    :cond_8
    move v0, v1

    .line 607
    goto :goto_7
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayM:Ljava/lang/String;

    .line 496
    iput-object p1, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    .line 498
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayM:Ljava/lang/String;

    .line 507
    iput-object p1, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 508
    const/4 v0, 0x1

    .line 510
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setState(I)V
    .locals 1

    .prologue
    .line 517
    iput p1, p0, Lcom/android/mail/providers/Attachment;->state:I

    .line 518
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 519
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->ayO:I

    .line 521
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 377
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->up()Lorg/json/JSONObject;

    move-result-object v1

    .line 379
    const-string v0, "partId"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 383
    :try_start_1
    const-string v0, "providerData"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    :cond_0
    :goto_0
    const/4 v0, 0x4

    :try_start_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    :goto_1
    return-object v0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    sget-object v2, Lcom/android/mail/providers/Attachment;->mW:Ljava/lang/String;

    const-string v3, "JSONException when adding provider data"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 389
    :catch_1
    move-exception v0

    .line 390
    sget-object v1, Lcom/android/mail/providers/Attachment;->mW:Ljava/lang/String;

    const-string v2, "JSONException in toString"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 391
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final uA()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayT:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_0
    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->ayT:Landroid/net/Uri;

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayT:Landroid/net/Uri;

    return-object v0

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final uB()Z
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/android/mail/providers/Attachment;->type:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uC()Ljava/lang/String;
    .locals 6

    .prologue
    .line 648
    const-string v1, "|"

    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/mail/providers/Attachment;->size:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v0, "SERVER_ATTACHMENT"

    :goto_2
    aput-object v0, v2, v3

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v2, v3

    const/4 v0, 0x7

    const-string v3, ""

    aput-object v3, v2, v0

    const/16 v0, 0x8

    iget v3, p0, Lcom/android/mail/providers/Attachment;->type:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    const-string v4, "[|\n]"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "LOCAL_FILE"

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3
.end method

.method public up()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 354
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 356
    const-string v1, "_display_name"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    const-string v1, "_size"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->size:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 358
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/mail/providers/Attachment;->R(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    const-string v1, "contentType"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string v1, "state"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->state:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    const-string v1, "destination"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->ayN:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 362
    const-string v1, "downloadedSize"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->ayO:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 363
    const-string v1, "contentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/mail/providers/Attachment;->R(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v1, "thumbnailUri"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/mail/providers/Attachment;->R(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v1, "previewIntentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/mail/providers/Attachment;->R(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    const-string v1, "providerData"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v1, "supportsDownloadAgain"

    iget-boolean v2, p0, Lcom/android/mail/providers/Attachment;->ayU:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 368
    const-string v1, "type"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 369
    const-string v1, "flags"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->flags:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 371
    return-object v0
.end method

.method public final uq()Z
    .locals 2

    .prologue
    .line 414
    iget v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ur()Z
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->uu()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/I;->cz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final us()Z
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->uq()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ut()Z
    .locals 2

    .prologue
    .line 426
    iget v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final uu()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 430
    iget v1, p0, Lcom/android/mail/providers/Attachment;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/mail/providers/Attachment;->ayN:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final uv()Z
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/I;->cz(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final uw()Z
    .locals 2

    .prologue
    .line 438
    iget v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/mail/providers/Attachment;->size:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/mail/providers/Attachment;->ayO:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/mail/providers/Attachment;->ayO:I

    iget v1, p0, Lcom/android/mail/providers/Attachment;->size:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ux()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 443
    iget v1, p0, Lcom/android/mail/providers/Attachment;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final uy()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 447
    iget v1, p0, Lcom/android/mail/providers/Attachment;->state:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/mail/providers/Attachment;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final uz()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/android/mail/providers/Attachment;->ayU:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget v0, p0, Lcom/android/mail/providers/Attachment;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 340
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v0, p0, Lcom/android/mail/providers/Attachment;->ayN:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v0, p0, Lcom/android/mail/providers/Attachment;->ayO:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 345
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayQ:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 346
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayR:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 347
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-boolean v0, p0, Lcom/android/mail/providers/Attachment;->ayU:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v0, p0, Lcom/android/mail/providers/Attachment;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
