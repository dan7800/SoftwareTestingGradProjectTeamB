.class public final Lcom/android/email/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEBUG:Z

.field public static Lv:Z

.field public static Lw:Z

.field public static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/b;->mW:Ljava/lang/String;

    return-void
.end method

.method public static Q(Z)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/emailcommon/b/s;->Q(Z)V

    .line 46
    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 18
    invoke-static {p0}, Lcom/android/email/r;->s(Landroid/content/Context;)Lcom/android/email/r;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/android/email/r;->gT()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/b;->DEBUG:Z

    .line 20
    invoke-virtual {v0}, Lcom/android/email/r;->gU()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/b;->Lv:Z

    .line 21
    invoke-virtual {v0}, Lcom/android/email/r;->gV()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/b;->Lw:Z

    .line 24
    invoke-static {p0}, Lcom/android/email/b;->l(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v0}, Lcom/android/email/r;->gW()Z

    move-result v0

    invoke-static {v0}, Lcom/android/emailcommon/b/s;->Q(Z)V

    .line 26
    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-static {p0}, Lcom/android/email/r;->s(Landroid/content/Context;)Lcom/android/email/r;

    move-result-object v4

    .line 33
    invoke-virtual {v4}, Lcom/android/email/r;->gT()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 34
    :goto_0
    invoke-virtual {v4}, Lcom/android/email/r;->gU()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 36
    :goto_1
    invoke-virtual {v4}, Lcom/android/email/r;->gV()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    .line 38
    :goto_2
    invoke-virtual {v4}, Lcom/android/email/r;->gW()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v1, 0x8

    .line 40
    :cond_0
    or-int/2addr v0, v2

    or-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 41
    invoke-static {p0, v0}, Lcom/android/email/service/n;->f(Landroid/content/Context;I)V

    .line 42
    return-void

    :cond_1
    move v0, v1

    .line 33
    goto :goto_0

    :cond_2
    move v2, v1

    .line 34
    goto :goto_1

    :cond_3
    move v3, v1

    .line 36
    goto :goto_2
.end method
