.class final Lcom/android/email/service/q;
.super Lcom/android/email/service/l;
.source "SourceFile"


# instance fields
.field final synthetic Vn:Lcom/android/email/service/ImapService;


# direct methods
.method constructor <init>(Lcom/android/email/service/ImapService;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/email/service/q;->Vn:Lcom/android/email/service/ImapService;

    invoke-direct {p0}, Lcom/android/email/service/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 6

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/q;->Vn:Lcom/android/email/service/ImapService;

    invoke-virtual {v0}, Lcom/android/email/service/ImapService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/email/service/ImapService;->b(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 147
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
