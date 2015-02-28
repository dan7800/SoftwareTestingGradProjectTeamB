.class final Lcom/android/emailcommon/service/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/L;


# instance fields
.field final synthetic aaq:Lcom/android/emailcommon/service/a;

.field final synthetic aas:Lcom/android/emailcommon/service/HostAuthCompat;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/a;Lcom/android/emailcommon/service/HostAuthCompat;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/emailcommon/service/f;->aaq:Lcom/android/emailcommon/service/a;

    iput-object p2, p0, Lcom/android/emailcommon/service/f;->aas:Lcom/android/emailcommon/service/HostAuthCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/emailcommon/service/f;->aaq:Lcom/android/emailcommon/service/a;

    iget-object v1, p0, Lcom/android/emailcommon/service/f;->aaq:Lcom/android/emailcommon/service/a;

    invoke-static {v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;)Lcom/android/emailcommon/service/r;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/service/f;->aas:Lcom/android/emailcommon/service/HostAuthCompat;

    invoke-interface {v1, v2}, Lcom/android/emailcommon/service/r;->a(Lcom/android/emailcommon/service/HostAuthCompat;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method
