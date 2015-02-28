.class public final Lcom/android/emailcommon/service/a;
.super Lcom/android/emailcommon/service/H;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/r;


# instance fields
.field private aak:Ljava/lang/Object;

.field private aal:Lcom/android/emailcommon/service/r;

.field private final aam:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/service/H;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/service/a;->aak:Ljava/lang/Object;

    .line 88
    :try_start_0
    invoke-static {p1}, Lcom/android/emailcommon/a;->T(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    invoke-static {p1}, Lcom/android/emailcommon/e;->V(Landroid/content/Context;)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/service/a;->aam:Z

    .line 93
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lcom/android/emailcommon/service/H;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/service/a;->aak:Ljava/lang/Object;

    .line 79
    invoke-static {p1}, Lcom/android/emailcommon/e;->V(Landroid/content/Context;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/a;->aam:Z

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/android/emailcommon/service/a;)Lcom/android/emailcommon/service/r;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/emailcommon/service/a;->aal:Lcom/android/emailcommon/service/r;

    return-object v0
.end method

.method static synthetic a(Lcom/android/emailcommon/service/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/emailcommon/service/a;->aak:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public final B(J)V
    .locals 3

    .prologue
    .line 209
    new-instance v0, Lcom/android/emailcommon/service/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/h;-><init>(Lcom/android/emailcommon/service/a;J)V

    const-string v1, "updateFolderList"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 215
    return-void
.end method

.method public final C(J)V
    .locals 3

    .prologue
    .line 325
    new-instance v0, Lcom/android/emailcommon/service/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/c;-><init>(Lcom/android/emailcommon/service/a;J)V

    const-string v1, "pushModify"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 331
    return-void
.end method

.method public final D(J)V
    .locals 3

    .prologue
    .line 310
    new-instance v0, Lcom/android/emailcommon/service/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/m;-><init>(Lcom/android/emailcommon/service/a;J)V

    const-string v1, "sendMail"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 316
    return-void
.end method

.method public final R(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Lcom/android/emailcommon/service/k;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/k;-><init>(Lcom/android/emailcommon/service/a;Ljava/lang/String;)V

    const-string v1, "deleteAccountPIMData"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 269
    invoke-virtual {p0}, Lcom/android/emailcommon/service/a;->ma()V

    .line 270
    return-void
.end method

.method public final a(JLandroid/os/Bundle;)I
    .locals 3

    .prologue
    .line 335
    new-instance v0, Lcom/android/emailcommon/service/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/d;-><init>(Lcom/android/emailcommon/service/a;JLandroid/os/Bundle;)V

    const-string v1, "sync"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 341
    invoke-virtual {p0}, Lcom/android/emailcommon/service/a;->ma()V

    .line 342
    iget-object v0, p0, Lcom/android/emailcommon/service/a;->aak:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 345
    const/16 v0, 0x23

    .line 347
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/a;->aak:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 7

    .prologue
    .line 289
    new-instance v0, Lcom/android/emailcommon/service/l;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/service/l;-><init>(Lcom/android/emailcommon/service/a;JLcom/android/emailcommon/service/SearchParams;J)V

    const-string v1, "searchMessages"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 295
    invoke-virtual {p0}, Lcom/android/emailcommon/service/a;->ma()V

    .line 296
    iget-object v0, p0, Lcom/android/emailcommon/service/a;->aak:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/a;->aak:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/android/emailcommon/service/HostAuthCompat;)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 151
    new-instance v0, Lcom/android/emailcommon/service/f;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/f;-><init>(Lcom/android/emailcommon/service/a;Lcom/android/emailcommon/service/HostAuthCompat;)V

    const-string v1, "validate"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/emailcommon/service/a;->ma()V

    .line 158
    iget-object v0, p0, Lcom/android/emailcommon/service/a;->aak:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    const-string v1, "validate_result_code"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    :goto_0
    return-object v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/a;->aak:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 164
    const-class v1, Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 165
    const-string v1, "EmailServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "validate returns "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "validate_result_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final a(Lcom/android/emailcommon/service/u;JJZ)V
    .locals 10

    .prologue
    .line 120
    new-instance v1, Lcom/android/emailcommon/service/b;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/emailcommon/service/b;-><init>(Lcom/android/emailcommon/service/a;Lcom/android/emailcommon/service/u;JJZ)V

    const-string v0, "loadAttachment"

    invoke-virtual {p0, v1, v0}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 137
    return-void
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 97
    invoke-static {p1}, Lcom/android/emailcommon/service/s;->c(Landroid/os/IBinder;)Lcom/android/emailcommon/service/r;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/a;->aal:Lcom/android/emailcommon/service/r;

    .line 98
    return-void
.end method

.method public final bd(I)V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/android/emailcommon/service/i;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/i;-><init>(Lcom/android/emailcommon/service/a;I)V

    const-string v1, "setLogging"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 231
    return-void
.end method

.method public final e(JI)V
    .locals 3

    .prologue
    .line 242
    new-instance v0, Lcom/android/emailcommon/service/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/j;-><init>(Lcom/android/emailcommon/service/a;JI)V

    const-string v1, "sendMeetingResponse"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 248
    return-void
.end method

.method public final kE()I
    .locals 3

    .prologue
    .line 357
    new-instance v0, Lcom/android/emailcommon/service/e;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/e;-><init>(Lcom/android/emailcommon/service/a;)V

    const-string v1, "getApiVersion"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 363
    invoke-virtual {p0}, Lcom/android/emailcommon/service/a;->ma()V

    .line 364
    iget-object v0, p0, Lcom/android/emailcommon/service/a;->aak:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 366
    const-string v0, "EmailServiceProxy"

    const-string v1, "failed to get api version"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 367
    const/4 v0, -0x1

    .line 369
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/a;->aak:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 183
    new-instance v0, Lcom/android/emailcommon/service/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/g;-><init>(Lcom/android/emailcommon/service/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "autoDiscover"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 189
    invoke-virtual {p0}, Lcom/android/emailcommon/service/a;->ma()V

    .line 190
    iget-object v0, p0, Lcom/android/emailcommon/service/a;->aak:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 197
    :goto_0
    return-object v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/a;->aak:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 194
    const-class v1, Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 195
    const-string v1, "EmailServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "autoDiscover returns "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "autodiscover_error_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
