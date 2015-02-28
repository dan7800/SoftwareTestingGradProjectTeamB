.class final Lcom/google/android/gm/browse/l;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final Tz:Ljava/lang/String;

.field private final bah:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    .line 134
    iput-object p2, p0, Lcom/google/android/gm/browse/l;->bah:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/google/android/gm/browse/l;->Tz:Ljava/lang/String;

    .line 136
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/providers/Account;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 194
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "plid_intent"

    const-string v2, "fallback_ui"

    const-wide/16 v4, 0x0

    move-object v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_permalink_format"

    const-string v2, "https://mail.google.com/mail/?extsrc=sync&client=g&plid=%s"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gm/browse/FullMessageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    const-string v2, "permalink"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v0, "account-name"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    if-eqz p3, :cond_0

    .line 206
    const-string v0, "extra-account-uri"

    iget-object v2, p3, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected final bridge synthetic O(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gm/browse/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gm/browse/l;->Tz:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/google/android/gm/ay;->x(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/google/android/gm/browse/TrampolineActivity;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Account not found."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gm/browse/l;->bah:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/browse/l;->Tz:Ljava/lang/String;

    const-string v2, "account_not_found"

    invoke-static {v6, v0, v1, v3, v2}, Lcom/google/android/gm/browse/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/providers/Account;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/browse/l;->Tz:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/browse/l;->bah:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v1}, Lcom/google/android/gm/provider/MailEngine;->c(Landroid/content/Context;Lcom/android/mail/providers/Account;Ljava/lang/String;)Lcom/android/mail/providers/Conversation;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/google/android/gm/browse/TrampolineActivity;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Conversation does not exist locally on device."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gm/browse/l;->bah:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/browse/l;->Tz:Ljava/lang/String;

    const-string v2, "conv_not_found"

    invoke-static {v6, v0, v1, v7, v2}, Lcom/google/android/gm/browse/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/providers/Account;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/browse/l;->Tz:Ljava/lang/String;

    iget-wide v4, v8, Lcom/android/mail/providers/Conversation;->id:J

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gm/provider/MailEngine;->p(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-static {}, Lcom/google/android/gm/browse/TrampolineActivity;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No folder found."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gm/browse/l;->bah:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/browse/l;->Tz:Ljava/lang/String;

    const-string v2, "folder_not_found"

    invoke-static {v6, v0, v1, v7, v2}, Lcom/google/android/gm/browse/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/providers/Account;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "plid_intent"

    const-string v2, "native_ui"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v6, v8, v9, v7}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;Lcom/android/mail/providers/Conversation;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ignore-initial-conversation-limit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
