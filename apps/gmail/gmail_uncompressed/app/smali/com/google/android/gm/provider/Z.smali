.class final Lcom/google/android/gm/provider/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final bgw:I

.field final bhj:I

.field final bhk:I

.field final bhl:I

.field final bhm:I

.field final bhn:I

.field final bho:I

.field final bhp:I

.field final bhq:I

.field final bhr:I

.field final bhs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final mAccount:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field final mi:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Lcom/google/android/gm/provider/Z;->mContext:Landroid/content/Context;

    .line 306
    iput-object p2, p0, Lcom/google/android/gm/provider/Z;->mAccount:Ljava/lang/String;

    .line 308
    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Z;->bgw:I

    .line 309
    const-string v0, "canonicalName"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Z;->bhj:I

    .line 310
    const-string v0, "name"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Z;->bhk:I

    .line 311
    const-string v0, "numConversations"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Z;->bhl:I

    .line 313
    const-string v0, "numUnreadConversations"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Z;->bhm:I

    .line 315
    const-string v0, "numUnseenConversations"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Z;->bhn:I

    .line 317
    const-string v0, "color"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Z;->mi:I

    .line 318
    const-string v0, "hidden"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Z;->bho:I

    .line 319
    const-string v0, "labelCountDisplayBehavior"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Z;->bhp:I

    .line 321
    const-string v0, "labelSyncPolicy"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Z;->bhq:I

    .line 323
    const-string v0, "lastTouched"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Z;->bhr:I

    .line 325
    invoke-static {p1}, Lcom/google/android/gm/provider/T;->cc(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Z;->bhs:Ljava/util/Map;

    .line 326
    return-void
.end method
