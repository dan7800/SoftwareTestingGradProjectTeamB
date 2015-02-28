.class public final Lcom/android/mail/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ajR:Landroid/content/UriMatcher;


# instance fields
.field public final account:Lcom/android/mail/providers/Account;

.field public final ajS:Lcom/android/mail/providers/Folder;

.field public final ajT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 61
    sput-object v0, Lcom/android/mail/c;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.mail.providers"

    const-string v2, "account/*/folder/*"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method private constructor <init>(Lcom/android/mail/providers/Account;Ljava/lang/String;Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/mail/c;->account:Lcom/android/mail/providers/Account;

    .line 103
    iput-object p2, p0, Lcom/android/mail/c;->ajT:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/android/mail/c;->ajS:Lcom/android/mail/providers/Folder;

    .line 105
    return-void
.end method

.method public static a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)Lcom/android/mail/c;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/android/mail/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/mail/c;-><init>(Lcom/android/mail/providers/Account;Ljava/lang/String;Lcom/android/mail/providers/Folder;)V

    return-object v0
.end method

.method public static a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Ljava/lang/String;)Lcom/android/mail/c;
    .locals 2

    .prologue
    .line 90
    new-instance v1, Lcom/android/mail/c;

    invoke-static {p2}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/mail/c;-><init>(Lcom/android/mail/providers/Account;Ljava/lang/String;Lcom/android/mail/providers/Folder;)V

    return-object v1
.end method

.method public static final a(Lcom/android/mail/c;)Z
    .locals 1

    .prologue
    .line 113
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/mail/c;->ajT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/os/Bundle;)Lcom/android/mail/c;
    .locals 4

    .prologue
    .line 70
    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    .line 71
    const-string v1, "folder"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Folder;

    .line 72
    new-instance v2, Lcom/android/mail/c;

    const-string v3, "query"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/android/mail/c;-><init>(Lcom/android/mail/providers/Account;Ljava/lang/String;Lcom/android/mail/providers/Folder;)V

    return-object v2
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    const-string v1, "account"

    iget-object v2, p0, Lcom/android/mail/c;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    const-string v1, "query"

    iget-object v2, p0, Lcom/android/mail/c;->ajT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "folder"

    iget-object v2, p0, Lcom/android/mail/c;->ajS:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 124
    return-object v0
.end method
