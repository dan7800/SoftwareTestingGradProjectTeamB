.class public Lcom/android/email/mail/store/Pop3Store;
.super Lcom/android/email/mail/b;
.source "SourceFile"


# static fields
.field private static QH:Z

.field private static QI:Z

.field private static final Qv:[Lcom/android/emailcommon/mail/Flag;


# instance fields
.field private final QJ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private final QK:[Lcom/android/emailcommon/mail/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    sput-boolean v2, Lcom/android/email/mail/store/Pop3Store;->QH:Z

    .line 56
    sput-boolean v2, Lcom/android/email/mail/store/Pop3Store;->QI:Z

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->WP:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/mail/store/Pop3Store;->Qv:[Lcom/android/emailcommon/mail/Flag;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 74
    invoke-direct {p0}, Lcom/android/email/mail/b;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->QJ:Ljava/util/HashMap;

    .line 62
    new-array v0, v3, [Lcom/android/emailcommon/mail/Message;

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->QK:[Lcom/android/emailcommon/mail/Message;

    .line 75
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/email/mail/store/Pop3Store;->Ml:Lcom/android/emailcommon/provider/Account;

    .line 78
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/android/email/mail/transport/b;

    const-string v2, "POP3"

    invoke-direct {v1, p1, v2, v0}, Lcom/android/email/mail/transport/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;)V

    iput-object v1, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    .line 80
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/HostAuth;->lQ()[Ljava/lang/String;

    move-result-object v0

    .line 81
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/email/mail/store/Pop3Store;->Qc:Ljava/lang/String;

    .line 82
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qd:Ljava/lang/String;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic b(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic c(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic d(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic e(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic f(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic g(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic j(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic jn()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/email/mail/store/Pop3Store;->QH:Z

    return v0
.end method

.method static synthetic jo()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/email/mail/store/Pop3Store;->QI:Z

    return v0
.end method

.method static synthetic jp()[Lcom/android/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/email/mail/store/Pop3Store;->Qv:[Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method static synthetic k(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic l(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic m(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic n(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/Pop3Store;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    return-object v0
.end method

.method static synthetic o(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic p(Lcom/android/email/mail/store/Pop3Store;)[Lcom/android/emailcommon/mail/Message;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->QK:[Lcom/android/emailcommon/mail/Message;

    return-object v0
.end method

.method static synthetic q(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic r(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic s(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method

.method static synthetic t(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    return-object v0
.end method


# virtual methods
.method public final iK()[Lcom/android/emailcommon/mail/Folder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v0, v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->d(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v0, v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->b(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->lF()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->lB()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 115
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Folder;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/Pop3Store;->y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v0

    aput-object v0, v1, v4

    return-object v1

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->ac(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public final iL()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 127
    new-instance v1, Lcom/android/email/mail/store/e;

    const-string v0, "INBOX"

    invoke-direct {v1, p0, v0}, Lcom/android/email/mail/store/e;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/b;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v1}, Lcom/android/email/mail/store/e;->iY()V

    .line 134
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v1, v0}, Lcom/android/email/mail/store/e;->a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 135
    invoke-virtual {v1}, Lcom/android/email/mail/store/e;->iL()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 137
    invoke-virtual {v1}, Lcom/android/email/mail/store/e;->iY()V

    .line 139
    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/email/mail/store/e;->iY()V

    throw v0
.end method

.method public final y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->QJ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Folder;

    .line 97
    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/android/email/mail/store/e;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/e;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store;->QJ:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    return-object v0
.end method
