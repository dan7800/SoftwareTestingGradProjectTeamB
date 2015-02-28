.class final Lcom/google/android/gm/browse/d;
.super Lcom/google/android/gm/aC;
.source "SourceFile"


# instance fields
.field private final YQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/aC;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iput-object p4, p0, Lcom/google/android/gm/browse/d;->YQ:Ljava/lang/String;

    .line 259
    return-void
.end method


# virtual methods
.method public final getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 263
    invoke-super {p0}, Lcom/google/android/gm/aC;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/google/android/gm/browse/d;->YQ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/google/android/gm/browse/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gmail-plid-message-id-key"

    const-string v3, "&mid="

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/google/android/gm/browse/d;->YQ:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_0
    return-object v0
.end method
