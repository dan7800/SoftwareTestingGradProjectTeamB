.class final Lcom/android/email/service/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Lm:[Ljava/lang/String;


# instance fields
.field final Ln:J

.field final Vs:Z

.field final Vt:Z

.field final Vu:I

.field final Vv:Ljava/lang/String;

.field final Vw:J

.field final dM:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 209
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/service/w;->Lm:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/service/w;->Ln:J

    .line 229
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/email/service/w;->Vs:Z

    .line 230
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/email/service/w;->Vt:Z

    .line 231
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/service/w;->Vu:I

    .line 232
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/w;->Vv:Ljava/lang/String;

    .line 233
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/service/w;->dM:I

    .line 234
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/service/w;->Vw:J

    .line 236
    return-void

    :cond_0
    move v0, v2

    .line 229
    goto :goto_0

    :cond_1
    move v1, v2

    .line 230
    goto :goto_1
.end method

.method static synthetic kG()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/android/email/service/w;->Lm:[Ljava/lang/String;

    return-object v0
.end method
