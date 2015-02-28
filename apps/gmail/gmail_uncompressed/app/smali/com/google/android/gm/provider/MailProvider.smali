.class public final Lcom/google/android/gm/provider/MailProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# static fields
.field private static final ajR:Landroid/content/UriMatcher;

.field private static final bkT:Landroid/net/Uri;

.field private static volatile bkU:Lcom/google/android/gm/provider/MailProvider;

.field private static bkY:Z


# instance fields
.field private bkV:Lcom/google/android/gm/provider/f;

.field private bkW:Ljava/lang/String;

.field private bkX:Lcom/google/android/gm/provider/MailEngine;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 73
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 76
    sput-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "accountquery/*"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/conversations"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/conversations/labels"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/conversations/#/labels"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/conversations/#/labels/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/conversations/#/attachments"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/conversations/#/messages"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages/server/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages/#/labels"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages/#/labels/*"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages/labels"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages/#/attachments/*/*/*"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages/#/attachments/*/*/*/download"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/labels/lastTouched"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/labels/*/#"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/labels/*"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/label/#"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/settings"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/unread/*"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/status"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/appdatasearch"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    const-string v0, "content://gmail-ls/accountquery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailProvider;->bkT:Landroid/net/Uri;

    .line 166
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gm/provider/MailProvider;->bkY:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->bkW:Ljava/lang/String;

    .line 168
    return-void
.end method

.method private static F(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 781
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 784
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 792
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gm/provider/z;->j([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 798
    if-nez v0, :cond_0

    .line 799
    const-string v0, "Gmail"

    const-string v2, "Null decrypted bytes returned.  Returning null cursor"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 809
    :goto_0
    return-object v0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    const-string v2, "Gmail"

    const-string v3, "Failure to decrypt account name.  Returning null cursor"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 795
    goto :goto_0

    .line 803
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 805
    new-instance v0, Lcom/android/mail/utils/G;

    sget-object v2, Lcom/google/android/gm/provider/Gmail;->bdW:[Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    .line 807
    new-array v2, v3, [Ljava/lang/String;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static Hg()Lcom/google/android/gm/provider/MailProvider;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->bkU:Lcom/google/android/gm/provider/MailProvider;

    return-object v0
.end method

.method public static Hh()Lcom/google/android/gm/provider/f;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->bkU:Lcom/google/android/gm/provider/MailProvider;

    .line 181
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider;->bkV:Lcom/google/android/gm/provider/f;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gm/provider/MailEngine;JLandroid/content/ContentValues;)J
    .locals 9

    .prologue
    .line 468
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, p3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 469
    const-string v0, "save"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 470
    const-string v0, "save"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 471
    const-string v0, "refMessageId"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 473
    const-string v0, "refMessageId"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 475
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gm/provider/MailEngine;->a(JZJLandroid/content/ContentValues;Landroid/os/Bundle;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lcom/google/android/gm/provider/MailEngine;Landroid/net/Uri;)Lcom/google/android/gm/provider/aZ;
    .locals 6

    .prologue
    .line 707
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 708
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 709
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mail/providers/F;->cg(Ljava/lang/String;)I

    move-result v4

    .line 711
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 713
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->ax(J)Lcom/google/android/gm/provider/bm;

    move-result-object v2

    .line 714
    if-nez v2, :cond_0

    .line 715
    const-string v0, "Gmail"

    const-string v1, "Message not found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 716
    const/4 v0, 0x0

    .line 724
    :goto_0
    return-object v0

    .line 719
    :cond_0
    new-instance v1, Lcom/google/android/gm/provider/aZ;

    invoke-direct {v1}, Lcom/google/android/gm/provider/aZ;-><init>()V

    .line 720
    iput-object v2, v1, Lcom/google/android/gm/provider/aZ;->bkZ:Lcom/google/android/gm/provider/bm;

    .line 721
    iput-object v0, v1, Lcom/google/android/gm/provider/aZ;->partId:Ljava/lang/String;

    .line 722
    iput v4, v1, Lcom/google/android/gm/provider/aZ;->bla:I

    .line 723
    iput-boolean v5, v1, Lcom/google/android/gm/provider/aZ;->blb:Z

    move-object v0, v1

    .line 724
    goto :goto_0
.end method

.method public static eZ(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 769
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/z;->i([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 775
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 777
    sget-object v1, Lcom/google/android/gm/provider/MailProvider;->bkT:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    .line 770
    :catch_0
    move-exception v0

    .line 771
    const-string v1, "Gmail"

    const-string v2, "Failure to encrypt account name.  Returning null Uri"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 772
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->bkW:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->bkW:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->bkX:Lcom/google/android/gm/provider/MailEngine;

    .line 254
    :goto_0
    return-object v0

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must request bound account"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gm/provider/MailEngine;->V(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 481
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 482
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 483
    const-string v1, "suppressUINotifications"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 489
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 490
    packed-switch v3, :pswitch_data_0

    .line 500
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v2

    .line 486
    goto :goto_0

    .line 492
    :pswitch_0
    invoke-virtual {v0, p2, v1}, Lcom/google/android/gm/provider/MailEngine;->b([Landroid/content/ContentValues;Z)V

    .line 497
    :goto_1
    return v2

    .line 496
    :pswitch_1
    invoke-virtual {v0, p2, v1}, Lcom/google/android/gm/provider/MailEngine;->a([Landroid/content/ContentValues;Z)V

    goto :goto_1

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 573
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 574
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    .line 578
    invoke-static {v0}, Lcom/google/android/gm/provider/MailIndexerService;->eY(Ljava/lang/String;)V

    .line 580
    packed-switch v2, :pswitch_data_0

    .line 650
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :pswitch_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selection must be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 588
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 589
    const-string v4, "Gmail"

    const-string v5, "MailProvider.delete(): removing label %s from local message %d"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 591
    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->ef(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 592
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "label is not user-settable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :cond_1
    invoke-virtual {v1, v2, v3, v0, v7}, Lcom/google/android/gm/provider/MailEngine;->a(JLjava/lang/String;Z)V

    move v7, v8

    .line 646
    :cond_2
    :goto_0
    return v7

    .line 600
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 602
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 603
    const-string v0, "maxMessageId"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, p3

    if-eq v0, v8, :cond_4

    .line 604
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selection must be \'maxMessageId\', selection args must contain max message id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_4
    aget-object v0, p3, v7

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 609
    const-string v0, "Gmail"

    const-string v9, "MailProvider.delete(): removing label %s from conversation %d"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v0, v9, v10}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 611
    invoke-static {v6}, Lcom/google/android/gm/provider/Gmail;->ef(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "label is not user-settable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_5
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gm/provider/MailEngine;->a(JJLjava/lang/String;Z)V

    move v7, v8

    .line 616
    goto :goto_0

    .line 619
    :pswitch_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 620
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selection must be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 624
    const-string v0, "Gmail"

    const-string v4, "MailProvider.delete(): removing local message %d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 625
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->aA(J)I

    move-result v7

    goto/16 :goto_0

    .line 629
    :pswitch_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 630
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selection must be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_7
    if-nez p3, :cond_8

    .line 633
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selection Args must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 636
    array-length v2, p3

    :goto_1
    if-ge v7, v2, :cond_9

    aget-object v3, p3, v7

    .line 637
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 639
    :cond_9
    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/MailEngine;->H(Ljava/util/List;)I

    move-result v7

    goto/16 :goto_0

    .line 643
    :pswitch_5
    invoke-static {v1, p1}, Lcom/google/android/gm/provider/MailProvider;->a(Lcom/google/android/gm/provider/MailEngine;Landroid/net/Uri;)Lcom/google/android/gm/provider/aZ;

    move-result-object v6

    .line 644
    if-eqz v6, :cond_2

    .line 645
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->FX()Lcom/google/android/gm/provider/g;

    move-result-object v0

    .line 646
    iget-object v1, v6, Lcom/google/android/gm/provider/aZ;->bkZ:Lcom/google/android/gm/provider/bm;

    iget-wide v1, v1, Lcom/google/android/gm/provider/bm;->bku:J

    iget-object v3, v6, Lcom/google/android/gm/provider/aZ;->bkZ:Lcom/google/android/gm/provider/bm;

    iget-wide v3, v3, Lcom/google/android/gm/provider/bm;->bkt:J

    iget-object v5, v6, Lcom/google/android/gm/provider/aZ;->partId:Ljava/lang/String;

    iget v6, v6, Lcom/google/android/gm/provider/aZ;->bla:I

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gm/provider/g;->c(JJLjava/lang/String;IZ)I

    move-result v7

    goto/16 :goto_0

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 449
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 450
    sparse-switch v0, :sswitch_data_0

    move-object v0, v1

    .line 463
    :goto_0
    return-object v0

    .line 452
    :sswitch_0
    const-string v0, "com.google.android.gm/conversations"

    goto :goto_0

    .line 454
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 457
    invoke-static {v0, p1}, Lcom/google/android/gm/provider/MailProvider;->a(Lcom/google/android/gm/provider/MailEngine;Landroid/net/Uri;)Lcom/google/android/gm/provider/aZ;

    move-result-object v0

    .line 458
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 459
    :cond_0
    iget-object v1, v0, Lcom/google/android/gm/provider/aZ;->bkZ:Lcom/google/android/gm/provider/bm;

    iget-object v0, v0, Lcom/google/android/gm/provider/aZ;->partId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/bm;->ff(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 450
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13

    .prologue
    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v7, 0x1

    .line 506
    const-string v0, "Gmail"

    invoke-static {v0, v10}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const-string v0, "Gmail"

    const-string v1, "MailProvider.insert: %s(%s)"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gm/provider/ad;->A(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    aput-object p2, v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 511
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 513
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 514
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    .line 517
    invoke-static {v0}, Lcom/google/android/gm/provider/MailIndexerService;->eY(Ljava/lang/String;)V

    .line 519
    sparse-switch v2, :sswitch_data_0

    .line 567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :sswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 522
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_1
    const-string v4, "canonicalName"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 526
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "values must have \'canonicalName\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_2
    const-string v4, "canonicalName"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 530
    const-string v5, "Gmail"

    const-string v6, "MailProvider.insert(): adding label %s to local message %d"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v4, v8, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v5, v6, v8}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 532
    invoke-static {v4}, Lcom/google/android/gm/provider/Gmail;->ef(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "label is not user-settable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_3
    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/google/android/gm/provider/MailEngine;->a(JLjava/lang/String;Z)V

    .line 536
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gm/provider/Gmail;->b(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 564
    :goto_0
    return-object v0

    .line 539
    :sswitch_1
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, p2}, Lcom/google/android/gm/provider/MailProvider;->a(Lcom/google/android/gm/provider/MailEngine;JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 540
    const-string v1, "Gmail"

    const-string v4, "MailProvider.insert(): added local message %d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v1, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 541
    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/Gmail;->h(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 544
    :sswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 545
    const-string v4, "canonicalName"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 546
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "values must have \'canonicalName\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_4
    const-string v4, "canonicalName"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 550
    const-string v4, "maxMessageId"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 551
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "values must have \'maxMessageId\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_5
    const-string v4, "maxMessageId"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 555
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-eq v8, v12, :cond_6

    .line 556
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_6
    const-string v8, "Gmail"

    const-string v9, "MailProvider.insert(): adding label %s to conversation %d,maxMessageId %d"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v8, v9, v10}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 560
    invoke-static {v6}, Lcom/google/android/gm/provider/Gmail;->ef(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 561
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "label is not user-settable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_7
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gm/provider/MailEngine;->a(JJLjava/lang/String;Z)V

    .line 564
    invoke-static {v0, v2, v3, v6}, Lcom/google/android/gm/provider/Gmail;->a(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 519
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->bkV:Lcom/google/android/gm/provider/f;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->bkV:Lcom/google/android/gm/provider/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/f;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 213
    :cond_0
    return-void
.end method

.method public final onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 186
    sput-object p0, Lcom/google/android/gm/provider/MailProvider;->bkU:Lcom/google/android/gm/provider/MailProvider;

    .line 188
    sget-boolean v0, Lcom/google/android/gm/provider/MailProvider;->bkY:Z

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/f;->bX(Landroid/content/Context;)Lcom/google/android/gm/provider/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->bkV:Lcom/google/android/gm/provider/f;

    .line 194
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AccountManager Listener"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 196
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 197
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gm/provider/MailProvider;->mHandler:Landroid/os/Handler;

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 200
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gm.intent.ACTION_PROVIDER_CREATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 204
    return v3
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 729
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    const-string v0, "Gmail"

    const-string v1, "MailProvider.openFile: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gm/provider/ad;->A(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 732
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 733
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 734
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 735
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 736
    packed-switch v1, :pswitch_data_0

    .line 756
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported uri in openFile: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :pswitch_0
    invoke-static {v0, p1}, Lcom/google/android/gm/provider/MailProvider;->a(Lcom/google/android/gm/provider/MailEngine;Landroid/net/Uri;)Lcom/google/android/gm/provider/aZ;

    move-result-object v9

    .line 739
    if-nez v9, :cond_1

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 741
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->FX()Lcom/google/android/gm/provider/g;

    move-result-object v1

    iget-object v0, v9, Lcom/google/android/gm/provider/aZ;->bkZ:Lcom/google/android/gm/provider/bm;

    iget-wide v2, v0, Lcom/google/android/gm/provider/bm;->bku:J

    iget-object v0, v9, Lcom/google/android/gm/provider/aZ;->bkZ:Lcom/google/android/gm/provider/bm;

    iget-wide v4, v0, Lcom/google/android/gm/provider/bm;->bkt:J

    iget-object v6, v9, Lcom/google/android/gm/provider/aZ;->partId:Ljava/lang/String;

    iget v7, v9, Lcom/google/android/gm/provider/aZ;->bla:I

    iget-boolean v8, v9, Lcom/google/android/gm/provider/aZ;->blb:Z

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gm/provider/g;->b(JJLjava/lang/String;IZ)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 752
    :goto_0
    return-object v0

    .line 746
    :catch_0
    move-exception v0

    iget-object v0, v9, Lcom/google/android/gm/provider/aZ;->bkZ:Lcom/google/android/gm/provider/bm;

    iget-object v1, v9, Lcom/google/android/gm/provider/aZ;->partId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bm;->ff(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    move-result-object v0

    .line 748
    if-nez v0, :cond_2

    .line 749
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Failed to open local attachment. Attachment not found"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_2
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/uiprovider/GmailAttachment;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .prologue
    .line 260
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "Gmail"

    const-string v1, "MailProvider.query: %s(%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gm/provider/ad;->A(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 265
    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sortOrder must be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 271
    const/16 v0, 0x18

    if-ne v1, v0, :cond_3

    .line 272
    invoke-static {p1}, Lcom/google/android/gm/provider/MailProvider;->F(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 444
    :cond_2
    :goto_0
    return-object v0

    .line 275
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->bkW:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->bkW:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 280
    monitor-enter p0

    :try_start_0
    iput-object v6, p0, Lcom/google/android/gm/provider/MailProvider;->bkW:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/provider/MailProvider;->bkW:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->V(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->bkX:Lcom/google/android/gm/provider/MailEngine;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_4
    invoke-direct {p0, v6}, Lcom/google/android/gm/provider/MailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 286
    const/4 v7, 0x1

    .line 289
    invoke-static {v6}, Lcom/google/android/gm/provider/MailIndexerService;->eY(Ljava/lang/String;)V

    .line 291
    packed-switch v1, :pswitch_data_0

    .line 432
    :pswitch_0
    const/4 v0, 0x0

    move v1, v7

    .line 435
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/google/android/gm/provider/MailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6}, Lcom/google/android/gm/provider/Gmail;->dU(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 293
    :pswitch_1
    invoke-virtual {v0, v6, p4}, Lcom/google/android/gm/provider/MailEngine;->e(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 294
    const/4 v0, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    .line 295
    goto :goto_1

    .line 297
    :pswitch_2
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 298
    :cond_5
    const-string p3, "label:^i"

    .line 300
    :cond_6
    const-string v1, "limit"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_7

    const/4 v1, 0x1

    move v2, v1

    .line 309
    :goto_2
    if-eqz v3, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 312
    :goto_3
    invoke-virtual {v0, p3, p4, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Z)Landroid/database/Cursor;

    move-result-object v0

    move v1, v7

    .line 314
    goto :goto_1

    .line 308
    :cond_7
    const/4 v1, 0x0

    move v2, v1

    goto :goto_2

    .line 309
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 316
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 317
    const-string v1, "1"

    const-string v4, "useCache"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 318
    const-string v1, "1"

    const-string v5, "useMatrixCursor"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object v1, p2

    .line 320
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailEngine;->a([Ljava/lang/String;JZZ)Landroid/database/Cursor;

    move-result-object v0

    move v1, v7

    .line 322
    goto :goto_1

    .line 325
    :pswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 326
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->FX()Lcom/google/android/gm/provider/g;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p2}, Lcom/google/android/gm/provider/g;->b(J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 328
    iget-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v2, v3}, Lcom/google/android/gm/provider/Gmail;->g(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 330
    const/4 v0, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    .line 331
    goto/16 :goto_1

    .line 333
    :pswitch_5
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 334
    invoke-virtual {v0, p2, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->c([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    .line 335
    iget-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {v1, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 336
    const/4 v0, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    .line 337
    goto/16 :goto_1

    .line 340
    :pswitch_6
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 341
    invoke-virtual {v0, p2, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->b([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    move v1, v7

    .line 343
    goto/16 :goto_1

    .line 346
    :pswitch_7
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 347
    invoke-virtual {v0, p2, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->c([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    move v1, v7

    .line 349
    goto/16 :goto_1

    .line 353
    :pswitch_8
    invoke-static {v0, p1}, Lcom/google/android/gm/provider/MailProvider;->a(Lcom/google/android/gm/provider/MailEngine;Landroid/net/Uri;)Lcom/google/android/gm/provider/aZ;

    move-result-object v2

    .line 354
    if-nez v2, :cond_9

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 355
    :cond_9
    iget-object v0, v2, Lcom/google/android/gm/provider/aZ;->bkZ:Lcom/google/android/gm/provider/bm;

    iget-object v1, v2, Lcom/google/android/gm/provider/aZ;->partId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bm;->ff(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    move-result-object v3

    .line 358
    if-eqz p2, :cond_a

    .line 362
    :goto_4
    new-instance v0, Lcom/android/mail/utils/G;

    invoke-direct {v0, p2}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 366
    array-length v5, p2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v5, :cond_d

    aget-object v8, p2, v1

    .line 367
    const-string v9, "_display_name"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 368
    invoke-virtual {v3}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 366
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 358
    :cond_a
    const/4 v0, 0x2

    new-array p2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_display_name"

    aput-object v1, p2, v0

    const/4 v0, 0x1

    const-string v1, "_size"

    aput-object v1, p2, v0

    goto :goto_4

    .line 369
    :cond_b
    const-string v9, "_size"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget v8, v2, Lcom/google/android/gm/provider/aZ;->bla:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 374
    iget v8, v3, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->size:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_6

    .line 376
    :cond_c
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_6

    :cond_d
    move v1, v7

    .line 380
    goto/16 :goto_1

    .line 384
    :pswitch_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    .line 385
    :goto_7
    const-string v2, "before"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    const-string v3, "limit"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    const-string v4, "canonicalName"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 390
    invoke-virtual {v0, p2}, Lcom/google/android/gm/provider/MailEngine;->B([Ljava/lang/String;)Lcom/google/android/gm/provider/aa;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gm/provider/aa;->F(Ljava/util/List;)Lcom/google/android/gm/provider/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/aa;->bU(Z)Lcom/google/android/gm/provider/aa;

    move-result-object v0

    .line 394
    if-eqz v2, :cond_e

    .line 395
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v5, v1}, Lcom/google/android/gm/provider/aa;->g(JI)Lcom/google/android/gm/provider/aa;

    .line 398
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/gm/provider/aa;->Fl()Landroid/database/Cursor;

    move-result-object v0

    move v1, v7

    .line 399
    goto/16 :goto_1

    .line 384
    :cond_f
    const/4 v1, 0x0

    goto :goto_7

    .line 403
    :pswitch_a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 404
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    .line 405
    :goto_8
    invoke-virtual {v0, p2}, Lcom/google/android/gm/provider/MailEngine;->B([Ljava/lang/String;)Lcom/google/android/gm/provider/aa;

    move-result-object v0

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->aE(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/aa;->F(Ljava/util/List;)Lcom/google/android/gm/provider/aa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/aa;->bU(Z)Lcom/google/android/gm/provider/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/aa;->Fl()Landroid/database/Cursor;

    move-result-object v0

    move v1, v7

    .line 409
    goto/16 :goto_1

    .line 404
    :cond_10
    const/4 v2, 0x0

    goto :goto_8

    .line 413
    :pswitch_b
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 414
    invoke-virtual {v0, p2}, Lcom/google/android/gm/provider/MailEngine;->B([Ljava/lang/String;)Lcom/google/android/gm/provider/aa;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/aa;->al(J)Lcom/google/android/gm/provider/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/aa;->Fl()Landroid/database/Cursor;

    move-result-object v0

    move v1, v7

    .line 417
    goto/16 :goto_1

    .line 421
    :pswitch_c
    invoke-virtual {v0, p2}, Lcom/google/android/gm/provider/MailEngine;->C([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v7

    .line 422
    goto/16 :goto_1

    .line 425
    :pswitch_d
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Gq()Landroid/database/Cursor;

    move-result-object v1

    .line 426
    iget-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6}, Lcom/google/android/gm/provider/Gmail;->dX(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 427
    const/4 v0, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    .line 428
    goto/16 :goto_1

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final shutdown()V
    .locals 0

    .prologue
    .line 698
    invoke-static {}, Lcom/google/android/gm/provider/MailEngine;->FS()V

    .line 699
    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 657
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selection must be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->ajR:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 664
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 665
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v4

    .line 668
    invoke-static {v0}, Lcom/google/android/gm/provider/MailIndexerService;->eY(Ljava/lang/String;)V

    .line 670
    sparse-switch v3, :sswitch_data_0

    .line 690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :sswitch_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 673
    invoke-static {v4, v2, v3, p2}, Lcom/google/android/gm/provider/MailProvider;->a(Lcom/google/android/gm/provider/MailEngine;JLandroid/content/ContentValues;)J

    move v0, v1

    .line 693
    :goto_0
    return v0

    .line 678
    :sswitch_1
    invoke-virtual {v4, p2}, Lcom/google/android/gm/provider/MailEngine;->f(Landroid/content/ContentValues;)Z

    move-result v3

    .line 679
    if-eqz v3, :cond_1

    .line 681
    iget-object v2, p0, Lcom/google/android/gm/provider/MailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->dU(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v0, v1

    goto :goto_0

    .line 686
    :sswitch_2
    invoke-virtual {v4, p2}, Lcom/google/android/gm/provider/MailEngine;->e(Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 670
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xe -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch
.end method
