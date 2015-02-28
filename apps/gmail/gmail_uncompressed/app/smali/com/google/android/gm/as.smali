.class public final Lcom/google/android/gm/as;
.super Lcom/android/mail/providers/C;
.source "SourceFile"


# static fields
.field static final aYU:[Ljava/lang/String;


# instance fields
.field private aYV:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/as;->aYU:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/mail/providers/C;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/as;->aYV:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gm/as;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/2130837606"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/as;->aYV:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/as;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gm/as;->aYV:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final cc(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/mail/providers/C;->cc(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/google/android/gm/provider/MailProvider;->Hh()Lcom/google/android/gm/provider/f;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 52
    new-instance v1, Lcom/google/android/gm/at;

    sget-object v2, Lcom/google/android/gm/as;->aYU:[Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gm/at;-><init>(Lcom/google/android/gm/as;[Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gm/at;->a(Ljava/lang/String;Landroid/database/Cursor;)Lcom/google/android/gm/at;

    move-result-object v0

    .line 54
    :cond_0
    return-object v0
.end method
