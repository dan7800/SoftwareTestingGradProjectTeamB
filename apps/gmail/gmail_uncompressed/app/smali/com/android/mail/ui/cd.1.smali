.class public Lcom/android/mail/ui/cd;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/cd;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f040086

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/cd;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/mail/ui/cd;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 47
    const v1, 0x7f0901be

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/mail/ui/cd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 52
    const v2, 0x7f090079

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/cd;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p0}, Lcom/android/mail/ui/cd;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 54
    const v3, 0x7f0901c3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v1, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/mail/ui/cd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 57
    sget-object v1, Lcom/android/mail/ui/cd;->mW:Ljava/lang/String;

    const-string v2, "Unable to locate application version."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
