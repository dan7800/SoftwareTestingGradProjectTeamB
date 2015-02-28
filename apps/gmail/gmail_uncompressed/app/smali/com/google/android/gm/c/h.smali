.class public abstract Lcom/google/android/gm/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/p;
.implements Lcom/google/android/gms/common/api/q;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private bbm:Lcom/google/android/gms/common/api/n;

.field private bbr:Z

.field private final bqX:I

.field private final brj:Ljava/lang/String;

.field private final brk:Ljava/lang/String;

.field private final pe:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/c/h;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gm/c/h;->CA()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/c/h;->bbm:Lcom/google/android/gms/common/api/n;

    .line 55
    iput p3, p0, Lcom/google/android/gm/c/h;->bqX:I

    .line 56
    iput-object p4, p0, Lcom/google/android/gm/c/h;->brj:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/google/android/gm/c/h;->brk:Ljava/lang/String;

    .line 59
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/c/h;->brj:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gm/c/h;->bbr:Z

    .line 62
    iput-object p1, p0, Lcom/google/android/gm/c/h;->pe:Landroid/app/Activity;

    .line 63
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gm/c/h;)Lcom/google/android/gms/common/api/n;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lcom/google/android/gms/people/t;

    invoke-direct {v0}, Lcom/google/android/gms/people/t;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/people/t;->US()Lcom/google/android/gms/people/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/t;->UT()Lcom/google/android/gms/people/s;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/google/android/gms/common/api/o;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/o;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/people/q;->cgG:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/o;->c(Lcom/google/android/gms/common/api/p;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/o;->c(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/o;->Ky()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gm/c/h;Ljava/lang/String;)Lcom/google/android/gms/common/api/n;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/gms/common/api/o;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/o;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/drive/a;->bBK:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/drive/a;->bGo:Lcom/google/android/gms/common/api/v;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/v;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/o;->c(Lcom/google/android/gms/common/api/p;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/o;->c(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/o;->fP(Ljava/lang/String;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/o;->Ky()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/app/Activity;II)V
    .locals 3

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 227
    const-string v0, "error-dialog-tag"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/c/d;

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/google/android/gm/c/d;->dismiss()V

    .line 232
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gm/c/d;->T(II)Lcom/google/android/gm/c/d;

    move-result-object v0

    .line 233
    const-string v2, "error-dialog-tag"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/c/d;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 234
    return-void
.end method


# virtual methods
.method public abstract CA()Lcom/google/android/gms/common/api/n;
.end method

.method public CB()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public CC()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public final DE()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/c/h;->bbr:Z

    .line 169
    return-void
.end method

.method public final ID()Lcom/google/android/gms/common/api/n;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gm/c/h;->bbm:Lcom/google/android/gms/common/api/n;

    return-object v0
.end method

.method public final U(II)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 146
    iget v1, p0, Lcom/google/android/gm/c/h;->bqX:I

    if-ne p1, v1, :cond_1

    .line 147
    iput-boolean v0, p0, Lcom/google/android/gm/c/h;->bbr:Z

    .line 148
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/gm/c/h;->bbm:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/c/h;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/c/h;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/android/gm/c/h;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->connect()V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gm/c/h;->CB()V

    .line 156
    :cond_0
    const/4 v0, 0x1

    .line 159
    :cond_1
    return v0
.end method

.method public a(Lcom/google/android/gms/common/a;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 183
    sget-object v0, Lcom/google/android/gm/c/h;->mW:Ljava/lang/String;

    const-string v1, "%s Client connection failure: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/c/h;->brk:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    iget-boolean v0, p0, Lcom/google/android/gm/c/h;->bbr:Z

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->Kj()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gm/c/h;->bbr:Z

    .line 191
    iget-object v0, p0, Lcom/google/android/gm/c/h;->pe:Landroid/app/Activity;

    iget v1, p0, Lcom/google/android/gm/c/h;->bqX:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/a;->b(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gm/c/h;->bbm:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/android/gm/c/h;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->connect()V

    .line 196
    invoke-virtual {p0}, Lcom/google/android/gm/c/h;->CB()V

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->getErrorCode()I

    move-result v0

    .line 204
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/google/android/gm/c/h;->pe:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gm/c/h;->bqX:I

    invoke-static {v1, v0, v2}, Lcom/google/android/gm/c/h;->a(Landroid/app/Activity;II)V

    .line 207
    iput-boolean v5, p0, Lcom/google/android/gm/c/h;->bbr:Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/n;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/gm/c/h;->bbm:Lcom/google/android/gms/common/api/n;

    .line 108
    return-void
.end method

.method public dz(I)V
    .locals 5

    .prologue
    .line 178
    sget-object v0, Lcom/google/android/gm/c/h;->mW:Ljava/lang/String;

    const-string v1, "%s Client connection suspended: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/c/h;->brk:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gm/c/h;->brj:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gm/c/h;->bbr:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    return-void
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/gm/c/h;->bbr:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/c/h;->bbm:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/gm/c/h;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->connect()V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gm/c/h;->CB()V

    .line 119
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/gm/c/h;->bbm:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/gm/c/h;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->disconnect()V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gm/c/h;->CC()V

    .line 126
    :cond_0
    return-void
.end method

.method public r(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 173
    sget-object v0, Lcom/google/android/gm/c/h;->mW:Ljava/lang/String;

    const-string v1, "%s Client connected:"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/c/h;->brk:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 174
    return-void
.end method
