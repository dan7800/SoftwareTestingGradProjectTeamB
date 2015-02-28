.class final Lcom/android/emailcommon/service/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/L;


# instance fields
.field final synthetic To:J

.field final synthetic aaq:Lcom/android/emailcommon/service/a;

.field final synthetic aar:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/a;JLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/emailcommon/service/d;->aaq:Lcom/android/emailcommon/service/a;

    iput-wide p2, p0, Lcom/android/emailcommon/service/d;->To:J

    iput-object p4, p0, Lcom/android/emailcommon/service/d;->aar:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/emailcommon/service/d;->aaq:Lcom/android/emailcommon/service/a;

    iget-object v1, p0, Lcom/android/emailcommon/service/d;->aaq:Lcom/android/emailcommon/service/a;

    invoke-static {v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;)Lcom/android/emailcommon/service/r;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/service/d;->To:J

    iget-object v4, p0, Lcom/android/emailcommon/service/d;->aar:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/emailcommon/service/r;->a(JLandroid/os/Bundle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    return-void
.end method
