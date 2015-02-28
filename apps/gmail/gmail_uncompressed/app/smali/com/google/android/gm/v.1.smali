.class public Lcom/google/android/gm/v;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field protected static aXE:Z

.field protected static aXF:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gm/v;->aXE:Z

    .line 45
    const-string v0, "Gmail"

    invoke-static {v0}, Lcom/android/mail/utils/D;->cw(Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/google/android/gm/C;

    invoke-direct {v0}, Lcom/google/android/gm/C;-><init>()V

    invoke-static {v0}, Lcom/android/mail/a/a;->a(Lcom/android/mail/a/d;)V

    .line 47
    const-string v0, "gmail-ls"

    invoke-static {v0}, Lcom/android/mail/ui/dp;->cu(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/google/android/gm/w;

    invoke-direct {v0}, Lcom/google/android/gm/w;-><init>()V

    invoke-static {v0}, Lcom/android/mail/i/i;->a(Lcom/android/mail/i/j;)V

    .line 56
    new-instance v0, Lcom/google/android/gm/x;

    invoke-direct {v0}, Lcom/google/android/gm/x;-><init>()V

    invoke-static {v0}, Lcom/android/mail/browse/at;->a(Lcom/android/mail/browse/as;)V

    .line 65
    new-instance v0, Lcom/google/android/gm/browse/e;

    invoke-direct {v0}, Lcom/google/android/gm/browse/e;-><init>()V

    invoke-static {v0}, Lcom/android/mail/browse/a;->a(Lcom/android/mail/browse/c;)V

    .line 67
    const-class v0, Lcom/google/android/gm/preference/GmailPreferenceActivity;

    sput-object v0, Lcom/android/mail/ui/settings/PublicPreferenceActivity;->aOV:Ljava/lang/Class;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 74
    return-void
.end method

.method public static CJ()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/google/android/gm/v;->aXE:Z

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 81
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->BE()Lcom/google/analytics/tracking/android/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/m;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_analytics_sampling_rate"

    const-string v2, "0.5"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {}, Lcom/google/analytics/tracking/android/m;->BF()Lcom/google/analytics/tracking/android/ah;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/analytics/tracking/android/ah;->b(D)V

    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    invoke-static {}, Lcom/google/android/gm/persistence/b;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f06000c

    invoke-static {p0, v0, v3, v1, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    invoke-static {}, Lcom/google/android/gm/persistence/b;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f06000f

    invoke-static {p0, v0, v3, v1, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    invoke-static {}, Lcom/google/android/gm/persistence/b;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060010

    invoke-static {p0, v0, v3, v1, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 82
    return-void
.end method
