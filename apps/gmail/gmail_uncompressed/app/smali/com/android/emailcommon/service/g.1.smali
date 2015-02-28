.class final Lcom/android/emailcommon/service/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/L;


# instance fields
.field final synthetic aaq:Lcom/android/emailcommon/service/a;

.field final synthetic aat:Ljava/lang/String;

.field final synthetic aau:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/emailcommon/service/g;->aaq:Lcom/android/emailcommon/service/a;

    iput-object p2, p0, Lcom/android/emailcommon/service/g;->aat:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/emailcommon/service/g;->aau:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/emailcommon/service/g;->aaq:Lcom/android/emailcommon/service/a;

    iget-object v1, p0, Lcom/android/emailcommon/service/g;->aaq:Lcom/android/emailcommon/service/a;

    invoke-static {v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;)Lcom/android/emailcommon/service/r;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/service/g;->aat:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/emailcommon/service/g;->aau:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/emailcommon/service/r;->q(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method
