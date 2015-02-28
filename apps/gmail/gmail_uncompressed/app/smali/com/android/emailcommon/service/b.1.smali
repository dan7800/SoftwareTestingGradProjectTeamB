.class final Lcom/android/emailcommon/service/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/L;


# instance fields
.field final synthetic To:J

.field final synthetic aan:Lcom/android/emailcommon/service/u;

.field final synthetic aao:J

.field final synthetic aap:Z

.field final synthetic aaq:Lcom/android/emailcommon/service/a;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/a;Lcom/android/emailcommon/service/u;JJZ)V
    .locals 1

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/emailcommon/service/b;->aaq:Lcom/android/emailcommon/service/a;

    iput-object p2, p0, Lcom/android/emailcommon/service/b;->aan:Lcom/android/emailcommon/service/u;

    iput-wide p3, p0, Lcom/android/emailcommon/service/b;->To:J

    iput-wide p5, p0, Lcom/android/emailcommon/service/b;->aao:J

    iput-boolean p7, p0, Lcom/android/emailcommon/service/b;->aap:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/service/b;->aaq:Lcom/android/emailcommon/service/a;

    invoke-static {v0}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;)Lcom/android/emailcommon/service/r;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/b;->aan:Lcom/android/emailcommon/service/u;

    iget-wide v2, p0, Lcom/android/emailcommon/service/b;->To:J

    iget-wide v4, p0, Lcom/android/emailcommon/service/b;->aao:J

    iget-boolean v6, p0, Lcom/android/emailcommon/service/b;->aap:Z

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/r;->a(Lcom/android/emailcommon/service/u;JJZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/android/emailcommon/service/b;->aan:Lcom/android/emailcommon/service/u;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/emailcommon/service/b;->aan:Lcom/android/emailcommon/service/u;

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/android/emailcommon/service/b;->aao:J

    const/16 v6, 0x15

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/android/emailcommon/service/u;->a(JJII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 135
    :catch_1
    move-exception v0

    goto :goto_0
.end method
