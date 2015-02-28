.class final Lcom/android/email/service/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/mail/f;


# instance fields
.field final synthetic Ms:Lcom/android/emailcommon/provider/Account;

.field final synthetic PG:Landroid/content/Context;

.field final synthetic Tn:Lcom/android/emailcommon/provider/Mailbox;

.field final synthetic Vo:Ljava/util/HashMap;

.field final synthetic Vp:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/email/service/r;->Vo:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/email/service/r;->PG:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/email/service/r;->Ms:Lcom/android/emailcommon/provider/Account;

    iput-object p4, p0, Lcom/android/email/service/r;->Tn:Lcom/android/emailcommon/provider/Mailbox;

    iput-object p5, p0, Lcom/android/email/service/r;->Vp:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/emailcommon/mail/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/r;->Vo:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/w;

    .line 305
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 307
    :goto_0
    if-nez v1, :cond_2

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->WP:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v2}, Lcom/android/emailcommon/mail/Message;->b(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 342
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v6

    .line 305
    goto :goto_0

    .line 314
    :cond_2
    if-nez v1, :cond_3

    .line 315
    new-instance v0, Lcom/android/emailcommon/provider/g;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/g;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    :goto_2
    if-eqz v0, :cond_0

    .line 324
    :try_start_1
    iget-object v1, p0, Lcom/android/email/service/r;->Ms:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/Account;->Ln:J

    iget-object v1, p0, Lcom/android/email/service/r;->Tn:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/l;->a(Lcom/android/emailcommon/provider/g;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 327
    iget-object v1, p0, Lcom/android/email/service/r;->PG:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/email/provider/H;->a(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 329
    sget-object v1, Lcom/android/emailcommon/mail/Flag;->WQ:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/mail/Message;->b(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/service/r;->Vp:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/email/service/r;->Vp:Ljava/util/ArrayList;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    :try_start_2
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while copying downloaded message."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 338
    :catch_1
    move-exception v0

    .line 339
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while storing downloaded message."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 317
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/email/service/r;->PG:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/email/service/w;->Ln:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_2
.end method

.method public final be(I)V
    .locals 0

    .prologue
    .line 346
    return-void
.end method
