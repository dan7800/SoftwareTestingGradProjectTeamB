.class public final Lcom/android/emailcommon/provider/Policy;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/h;


# static fields
.field public static CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Policy;",
            ">;"
        }
    .end annotation
.end field

.field public static final XO:[Ljava/lang/String;

.field public static final aah:Lcom/android/emailcommon/provider/Policy;

.field private static final aai:[Ljava/lang/String;


# instance fields
.field public ZL:I

.field public ZM:I

.field public ZN:I

.field public ZO:I

.field public ZP:I

.field public ZQ:I

.field public ZR:I

.field public ZS:Z

.field public ZT:Z

.field public ZU:Z

.field public ZV:Z

.field public ZW:Z

.field public ZX:Z

.field public ZY:Z

.field public ZZ:I

.field public aaa:I

.field public aab:I

.field public aac:I

.field public aad:I

.field public aae:Z

.field public aaf:Ljava/lang/String;

.field public aag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "passwordMode"

    aput-object v1, v0, v4

    const-string v1, "passwordMinLength"

    aput-object v1, v0, v5

    const-string v1, "passwordExpirationDays"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "passwordHistory"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "passwordComplexChars"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "passwordMaxFails"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "maxScreenLockTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "requireRemoteWipe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "requireEncryption"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "requireEncryptionExternal"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "requireManualSyncRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dontAllowCamera"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dontAllowAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dontAllowHtml"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "maxAttachmentSize"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "maxTextTruncationSize"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "maxHTMLTruncationSize"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "maxEmailLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "maxCalendarLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "passwordRecoveryEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "protocolPoliciesEnforced"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "protocolPoliciesUnsupported"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->XO:[Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->aah:Lcom/android/emailcommon/provider/Policy;

    .line 124
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "size"

    aput-object v1, v0, v4

    const-string v1, "flags"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->aai:[Ljava/lang/String;

    .line 456
    new-instance v0, Lcom/android/emailcommon/provider/p;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/p;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 131
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->XU:Landroid/net/Uri;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZL:I

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZS:Z

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 502
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 503
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->XU:Landroid/net/Uri;

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/Policy;->Ln:J

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZL:I

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZM:I

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZN:I

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZP:I

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZO:I

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZR:I

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZS:Z

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZT:Z

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZU:Z

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZV:Z

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZW:Z

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZX:Z

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZY:Z

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZZ:I

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->aaa:I

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->aab:I

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->aac:I

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->aad:I

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    :goto_7
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->aae:Z

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->aaf:Ljava/lang/String;

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->aag:Ljava/lang/String;

    .line 527
    return-void

    :cond_0
    move v0, v2

    .line 512
    goto :goto_0

    :cond_1
    move v0, v2

    .line 513
    goto :goto_1

    :cond_2
    move v0, v2

    .line 514
    goto :goto_2

    :cond_3
    move v0, v2

    .line 515
    goto :goto_3

    :cond_4
    move v0, v2

    .line 516
    goto :goto_4

    :cond_5
    move v0, v2

    .line 517
    goto :goto_5

    :cond_6
    move v0, v2

    .line 518
    goto :goto_6

    :cond_7
    move v1, v2

    .line 524
    goto :goto_7
.end method

.method public static a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->aai:[Ljava/lang/String;

    const-string v3, "accountKey=?"

    new-array v4, v7, [Ljava/lang/String;

    iget-wide v8, p1, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 197
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 200
    :try_start_0
    iget-boolean v1, p2, Lcom/android/emailcommon/provider/Policy;->ZX:Z

    if-eqz v1, :cond_1

    move v1, v6

    .line 202
    :cond_0
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 203
    const/4 v2, 0x2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 204
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 205
    and-int/lit16 v3, v8, 0x200

    if-eqz v3, :cond_3

    move v3, v7

    .line 206
    :goto_1
    if-le v2, v1, :cond_4

    move v2, v7

    .line 207
    :goto_2
    if-eq v2, v3, :cond_0

    .line 208
    if-eqz v2, :cond_5

    .line 209
    or-int/lit16 v2, v8, 0x200

    .line 213
    :goto_3
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 214
    const-string v3, "flags"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v5, v3, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    .line 200
    :cond_1
    :try_start_1
    iget v1, p2, Lcom/android/emailcommon/provider/Policy;->ZZ:I

    if-lez v1, :cond_2

    iget v1, p2, Lcom/android/emailcommon/provider/Policy;->ZZ:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const v1, 0x7fffffff

    goto :goto_0

    :cond_3
    move v3, v6

    .line 205
    goto :goto_1

    :cond_4
    move v2, v6

    .line 206
    goto :goto_2

    .line 211
    :cond_5
    and-int/lit16 v2, v8, -0x201

    goto :goto_3

    .line 220
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 221
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    return-void
.end method

.method public static b(Landroid/content/Context;JLandroid/database/ContentObserver;)Lcom/android/emailcommon/provider/Policy;
    .locals 7

    .prologue
    .line 143
    const-class v1, Lcom/android/emailcommon/provider/Policy;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Policy;->XO:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/provider/EmailContent;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;JLandroid/database/ContentObserver;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method public static lU()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/policy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    .line 48
    return-void
.end method

.method public static y(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/Policy;->b(Landroid/content/Context;JLandroid/database/ContentObserver;)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    return-object v0
.end method

.method public static z(Landroid/content/Context;J)J
    .locals 9

    .prologue
    .line 153
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->XT:[Ljava/lang/String;

    const-string v3, "policyKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/b/s;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final ac(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Policy;->normalize()V

    .line 180
    invoke-super {p0, p1}, Lcom/android/emailcommon/provider/EmailContent;->ac(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 309
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->XU:Landroid/net/Uri;

    .line 310
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/Policy;->Ln:J

    .line 311
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZL:I

    .line 312
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZM:I

    .line 313
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZN:I

    .line 314
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZP:I

    .line 315
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZO:I

    .line 316
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    .line 317
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZR:I

    .line 318
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZS:Z

    .line 319
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZT:Z

    .line 320
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZU:Z

    .line 322
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZV:Z

    .line 324
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZW:Z

    .line 325
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZX:Z

    .line 326
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZY:Z

    .line 327
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->ZZ:I

    .line 328
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->aaa:I

    .line 329
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->aab:I

    .line 330
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->aac:I

    .line 331
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->aad:I

    .line 332
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_7

    :goto_7
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->aae:Z

    .line 333
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->aaf:Ljava/lang/String;

    .line 334
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->aag:Ljava/lang/String;

    .line 336
    return-void

    :cond_0
    move v0, v2

    .line 318
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 319
    goto :goto_1

    :cond_2
    move v0, v2

    .line 320
    goto :goto_2

    :cond_3
    move v0, v2

    .line 322
    goto :goto_3

    :cond_4
    move v0, v2

    .line 324
    goto :goto_4

    :cond_5
    move v0, v2

    .line 325
    goto :goto_5

    :cond_6
    move v0, v2

    .line 326
    goto :goto_6

    :cond_7
    move v1, v2

    .line 332
    goto :goto_7
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 251
    instance-of v1, p1, Lcom/android/emailcommon/provider/Policy;

    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    check-cast p1, Lcom/android/emailcommon/provider/Policy;

    .line 254
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->ZT:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->ZT:Z

    if-ne v1, v2, :cond_0

    .line 255
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->ZU:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->ZU:Z

    if-ne v1, v2, :cond_0

    .line 256
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->ZS:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->ZS:Z

    if-ne v1, v2, :cond_0

    .line 257
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZR:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->ZR:I

    if-ne v1, v2, :cond_0

    .line 258
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    if-ne v1, v2, :cond_0

    .line 259
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZO:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->ZO:I

    if-ne v1, v2, :cond_0

    .line 260
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZP:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->ZP:I

    if-ne v1, v2, :cond_0

    .line 261
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZN:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->ZN:I

    if-ne v1, v2, :cond_0

    .line 262
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZM:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->ZM:I

    if-ne v1, v2, :cond_0

    .line 263
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZL:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->ZL:I

    if-ne v1, v2, :cond_0

    .line 264
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->ZW:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->ZW:Z

    if-ne v1, v2, :cond_0

    .line 268
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->ZV:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->ZV:Z

    if-ne v1, v2, :cond_0

    .line 271
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->ZX:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->ZX:Z

    if-ne v1, v2, :cond_0

    .line 272
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->ZY:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->ZY:Z

    if-ne v1, v2, :cond_0

    .line 273
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZZ:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->ZZ:I

    if-ne v1, v2, :cond_0

    .line 274
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->aaa:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->aaa:I

    if-ne v1, v2, :cond_0

    .line 275
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->aab:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->aab:I

    if-ne v1, v2, :cond_0

    .line 276
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->aac:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->aac:I

    if-ne v1, v2, :cond_0

    .line 277
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->aad:I

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->aad:I

    if-ne v1, v2, :cond_0

    .line 278
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->aae:Z

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->aae:Z

    if-ne v1, v2, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/emailcommon/provider/Policy;->aaf:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Policy;->aaf:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/emailcommon/b/r;->v(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/emailcommon/provider/Policy;->aag:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Policy;->aag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/emailcommon/b/r;->v(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZT:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 294
    :goto_0
    iget-boolean v3, p0, Lcom/android/emailcommon/provider/Policy;->ZU:Z

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 295
    iget-boolean v3, p0, Lcom/android/emailcommon/provider/Policy;->ZS:Z

    if-eqz v3, :cond_2

    :goto_2
    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 296
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZR:I

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 297
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    .line 298
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZO:I

    shl-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 299
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZP:I

    shl-int/lit8 v1, v1, 0xf

    add-int/2addr v0, v1

    .line 300
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZN:I

    shl-int/lit8 v1, v1, 0x12

    add-int/2addr v0, v1

    .line 301
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZM:I

    shl-int/lit8 v1, v1, 0x16

    add-int/2addr v0, v1

    .line 302
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->ZL:I

    shl-int/lit8 v1, v1, 0x1a

    add-int/2addr v0, v1

    .line 304
    return v0

    :cond_0
    move v0, v2

    .line 293
    goto :goto_0

    :cond_1
    move v3, v2

    .line 294
    goto :goto_1

    :cond_2
    move v1, v2

    .line 295
    goto :goto_2
.end method

.method public final lB()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 340
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 341
    const-string v1, "passwordMode"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    const-string v1, "passwordMinLength"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    const-string v1, "passwordMaxFails"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    const-string v1, "passwordHistory"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZP:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    const-string v1, "passwordExpirationDays"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    const-string v1, "passwordComplexChars"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string v1, "maxScreenLockTime"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    const-string v1, "requireRemoteWipe"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->ZS:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 349
    const-string v1, "requireEncryption"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->ZT:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 350
    const-string v1, "requireEncryptionExternal"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->ZU:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 351
    const-string v1, "requireManualSyncRoaming"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->ZV:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 352
    const-string v1, "dontAllowCamera"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->ZW:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 353
    const-string v1, "dontAllowAttachments"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->ZX:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 354
    const-string v1, "dontAllowHtml"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->ZY:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 355
    const-string v1, "maxAttachmentSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    const-string v1, "maxTextTruncationSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->aaa:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string v1, "maxHTMLTruncationSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->aab:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string v1, "maxEmailLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->aac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    const-string v1, "maxCalendarLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->aad:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    const-string v1, "passwordRecoveryEnabled"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->aae:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 361
    const-string v1, "protocolPoliciesEnforced"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Policy;->aaf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "protocolPoliciesUnsupported"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Policy;->aag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-object v0
.end method

.method public final lV()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZL:I

    packed-switch v0, :pswitch_data_0

    .line 380
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 372
    :pswitch_0
    const/high16 v0, 0x20000

    goto :goto_0

    .line 374
    :pswitch_1
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    if-nez v0, :cond_0

    .line 375
    const/high16 v0, 0x50000

    goto :goto_0

    .line 377
    :cond_0
    const/high16 v0, 0x60000

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final lW()J
    .locals 4

    .prologue
    .line 388
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZO:I

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 392
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 393
    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    .line 395
    :cond_0
    return-wide v0
.end method

.method protected final lu()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public final normalize()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 229
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZL:I

    if-nez v0, :cond_1

    .line 230
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->ZN:I

    .line 231
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->ZR:I

    .line 232
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->ZM:I

    .line 233
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    .line 234
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->ZP:I

    .line 235
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->ZO:I

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZL:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZL:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_2
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZL:I

    if-ne v0, v3, :cond_0

    .line 244
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->aah:Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/provider/Policy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const-string v0, "No policies]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 411
    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZL:I

    if-nez v0, :cond_7

    .line 412
    const-string v0, "Pwd none "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :goto_1
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZT:Z

    if-eqz v0, :cond_1

    .line 423
    const-string v0, "encrypt "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_1
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZU:Z

    if-eqz v0, :cond_2

    .line 426
    const-string v0, "encryptsd "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_2
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZW:Z

    if-eqz v0, :cond_3

    .line 429
    const-string v0, "nocamera "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_3
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZX:Z

    if-eqz v0, :cond_4

    .line 432
    const-string v0, "noatts "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_4
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZV:Z

    if-eqz v0, :cond_5

    .line 435
    const-string v0, "nopushroam "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_5
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZZ:I

    if-lez v0, :cond_6

    .line 438
    const-string v0, "attmax"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZZ:I

    invoke-static {v1, v0, v2}, Lcom/android/emailcommon/provider/Policy;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 440
    :cond_6
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 414
    :cond_7
    const-string v2, "Pwd strong"

    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZL:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v2, v0}, Lcom/android/emailcommon/provider/Policy;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 415
    const-string v0, "len"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZM:I

    invoke-static {v1, v0, v2}, Lcom/android/emailcommon/provider/Policy;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 416
    const-string v0, "cmpx"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    invoke-static {v1, v0, v2}, Lcom/android/emailcommon/provider/Policy;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 417
    const-string v0, "expy"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZO:I

    invoke-static {v1, v0, v2}, Lcom/android/emailcommon/provider/Policy;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 418
    const-string v0, "hist"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZP:I

    invoke-static {v1, v0, v2}, Lcom/android/emailcommon/provider/Policy;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 419
    const-string v0, "fail"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZN:I

    invoke-static {v1, v0, v2}, Lcom/android/emailcommon/provider/Policy;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 420
    const-string v0, "idle"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->ZR:I

    invoke-static {v1, v0, v2}, Lcom/android/emailcommon/provider/Policy;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_1

    .line 414
    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 474
    iget-wide v4, p0, Lcom/android/emailcommon/provider/Policy;->Ln:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 475
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZL:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZM:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZN:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZP:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZO:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZR:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZS:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZT:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZU:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZV:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZW:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZX:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->ZY:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->ZZ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->aaa:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->aab:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->aac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->aad:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->aae:Z

    if-eqz v0, :cond_7

    :goto_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget-object v0, p0, Lcom/android/emailcommon/provider/Policy;->aaf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/android/emailcommon/provider/Policy;->aag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    return-void

    :cond_0
    move v0, v2

    .line 482
    goto :goto_0

    :cond_1
    move v0, v2

    .line 483
    goto :goto_1

    :cond_2
    move v0, v2

    .line 484
    goto :goto_2

    :cond_3
    move v0, v2

    .line 485
    goto :goto_3

    :cond_4
    move v0, v2

    .line 486
    goto :goto_4

    :cond_5
    move v0, v2

    .line 487
    goto :goto_5

    :cond_6
    move v0, v2

    .line 488
    goto :goto_6

    :cond_7
    move v1, v2

    .line 494
    goto :goto_7
.end method
