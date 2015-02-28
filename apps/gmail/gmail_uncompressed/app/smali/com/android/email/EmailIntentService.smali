.class public Lcom/android/email/EmailIntentService;
.super Lcom/android/mail/f;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/EmailIntentService;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "EmailIntentService"

    invoke-direct {p0, v0}, Lcom/android/mail/f;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/mail/f;->onHandleIntent(Landroid/content/Intent;)V

    .line 39
    const-string v0, "com.android.mail.action.update_notification"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p0}, Lcom/android/email/o;->r(Landroid/content/Context;)Lcom/android/email/m;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p0, p1}, Lcom/android/email/m;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 47
    :cond_0
    sget-object v0, Lcom/android/email/EmailIntentService;->mW:Ljava/lang/String;

    const-string v1, "Handling intent %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 48
    return-void
.end method
