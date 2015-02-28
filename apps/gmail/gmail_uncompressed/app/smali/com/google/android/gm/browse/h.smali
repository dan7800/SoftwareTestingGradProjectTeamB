.class final Lcom/google/android/gm/browse/h;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Lcom/google/android/gm/browse/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final ald:Lcom/android/mail/providers/Message;

.field private final ale:Lcom/android/mail/providers/Attachment;

.field private final mAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    .line 169
    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/browse/h;->mAccount:Ljava/lang/String;

    .line 170
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Message;

    iput-object v0, p0, Lcom/google/android/gm/browse/h;->ald:Lcom/android/mail/providers/Message;

    .line 171
    const-string v0, "attachment"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    iput-object v0, p0, Lcom/google/android/gm/browse/h;->ale:Lcom/android/mail/providers/Attachment;

    .line 172
    return-void
.end method

.method private Dk()Lcom/google/android/gm/browse/i;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 176
    new-instance v1, Lcom/google/android/gm/browse/i;

    invoke-direct {v1, v6}, Lcom/google/android/gm/browse/i;-><init>(B)V

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gm/browse/i;->bae:J

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/browse/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "gmail_enable_conscrypt_provider"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/google/android/gm/browse/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/g/a;->ai(Landroid/content/Context;)V

    .line 186
    :cond_0
    new-instance v0, Lcom/google/android/apiary/GoogleRequestInitializer;

    invoke-virtual {p0}, Lcom/google/android/gm/browse/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "oauth2:https://www.googleapis.com/auth/drive https://www.googleapis.com/auth/gmail.readonly"

    invoke-static {}, Lcom/google/android/gm/browse/e;->kI()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apiary/GoogleRequestInitializer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/google/android/gm/browse/h;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/apiary/GoogleRequestInitializer;->w(Ljava/lang/String;)V

    .line 190
    new-instance v2, Lcom/google/api/a/a/d;

    new-instance v3, Lcom/google/api/client/http/a/c;

    invoke-direct {v3}, Lcom/google/api/client/http/a/c;-><init>()V

    new-instance v4, Lcom/google/api/client/extensions/android/json/a;

    invoke-direct {v4}, Lcom/google/api/client/extensions/android/json/a;-><init>()V

    invoke-direct {v2, v3, v4, v0}, Lcom/google/api/a/a/d;-><init>(Lcom/google/api/client/http/A;Lcom/google/api/client/json/d;Lcom/google/api/client/http/v;)V

    const-string v0, "Android Gmail"

    invoke-virtual {v2, v0}, Lcom/google/api/a/a/d;->hF(Ljava/lang/String;)Lcom/google/api/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/a/a/d;->YD()Lcom/google/api/a/a/a;

    move-result-object v0

    .line 194
    new-instance v2, Lcom/google/api/a/a/a/a;

    invoke-direct {v2}, Lcom/google/api/a/a/a/a;-><init>()V

    .line 195
    iget-object v3, p0, Lcom/google/android/gm/browse/h;->ald:Lcom/android/mail/providers/Message;

    iget-object v3, v3, Lcom/android/mail/providers/Message;->aBd:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-virtual {v2, v3}, Lcom/google/api/a/a/a/a;->hG(Ljava/lang/String;)Lcom/google/api/a/a/a/a;

    .line 197
    iget-object v3, p0, Lcom/google/android/gm/browse/h;->ale:Lcom/android/mail/providers/Attachment;

    new-instance v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    invoke-direct {v4}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;-><init>()V

    iget-object v3, v3, Lcom/android/mail/providers/Attachment;->ayS:Ljava/lang/String;

    iput-object v3, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayS:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->HZ()V

    iget-object v3, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/api/a/a/a/a;->hH(Ljava/lang/String;)Lcom/google/api/a/a/a/a;

    .line 199
    invoke-virtual {v0}, Lcom/google/api/a/a/a;->YB()Lcom/google/api/a/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/api/a/a/b;->a(Lcom/google/api/a/a/a/a;)Lcom/google/api/a/a/c;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/google/api/a/a/c;->Xe()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/a;

    iput-object v0, v1, Lcom/google/android/gm/browse/i;->bad:Lcom/google/api/a/a/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-static {}, Lcom/google/android/gm/browse/e;->kI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "problem inserting attachment into Drive"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic O(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/android/gm/browse/h;->Dk()Lcom/google/android/gm/browse/i;

    move-result-object v0

    return-object v0
.end method
