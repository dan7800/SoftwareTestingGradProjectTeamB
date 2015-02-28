.class final Lcom/android/email/service/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/mail/f;


# instance fields
.field final synthetic Ms:Lcom/android/emailcommon/provider/Account;

.field final synthetic PG:Landroid/content/Context;

.field final synthetic Tn:Lcom/android/emailcommon/provider/Mailbox;

.field final synthetic Vr:J


# direct methods
.method constructor <init>(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;JLandroid/content/Context;)V
    .locals 1

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/android/email/service/v;->Ms:Lcom/android/emailcommon/provider/Account;

    iput-object p2, p0, Lcom/android/email/service/v;->Tn:Lcom/android/emailcommon/provider/Mailbox;

    iput-wide p3, p0, Lcom/android/email/service/v;->Vr:J

    iput-object p5, p0, Lcom/android/email/service/v;->PG:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/emailcommon/mail/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1546
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/provider/g;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/g;-><init>()V

    .line 1549
    iget-object v1, p0, Lcom/android/email/service/v;->Ms:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/Account;->Ln:J

    iget-object v1, p0, Lcom/android/email/service/v;->Tn:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/l;->a(Lcom/android/emailcommon/provider/g;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 1554
    iget-wide v2, v0, Lcom/android/emailcommon/provider/g;->YR:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/g;->YS:J

    .line 1555
    iget-wide v2, p0, Lcom/android/email/service/v;->Vr:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/g;->YR:J

    .line 1557
    iget-object v1, p0, Lcom/android/email/service/v;->Tn:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/g;->Za:Ljava/lang/String;

    .line 1563
    iget-object v1, p0, Lcom/android/email/service/v;->PG:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/email/provider/H;->a(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1571
    :goto_0
    return-void

    .line 1564
    :catch_0
    move-exception v0

    .line 1565
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "Error while copying downloaded message."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1567
    :catch_1
    move-exception v0

    .line 1568
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "Error while storing downloaded message."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final be(I)V
    .locals 0

    .prologue
    .line 1575
    return-void
.end method
