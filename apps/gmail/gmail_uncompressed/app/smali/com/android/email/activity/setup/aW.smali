.class final Lcom/android/email/activity/setup/aW;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Lcom/android/email/mail/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final NS:Ljava/lang/String;

.field private final PP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    .line 145
    iput-object p2, p0, Lcom/android/email/activity/setup/aW;->NS:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lcom/android/email/activity/setup/aW;->PP:Ljava/lang/String;

    .line 147
    return-void
.end method

.method private iz()Lcom/android/email/mail/a/d;
    .locals 5

    .prologue
    .line 157
    :try_start_0
    new-instance v0, Lcom/android/email/mail/a/c;

    invoke-direct {v0}, Lcom/android/email/mail/a/c;-><init>()V

    .line 158
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aW;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/aW;->NS:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/setup/aW;->PP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/mail/a/d;

    move-result-object v0

    .line 160
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "authentication %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic O(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/email/activity/setup/aW;->iz()Lcom/android/email/mail/a/d;

    move-result-object v0

    return-object v0
.end method
