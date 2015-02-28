.class final Lcom/android/email/service/C;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Lm:[Ljava/lang/String;


# instance fields
.field final Ln:J

.field final Vu:I

.field final Vv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/service/C;->Lm:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/service/C;->Ln:J

    .line 153
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/service/C;->Vu:I

    .line 154
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/C;->Vv:Ljava/lang/String;

    .line 157
    return-void
.end method

.method static synthetic kK()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/email/service/C;->Lm:[Ljava/lang/String;

    return-object v0
.end method
