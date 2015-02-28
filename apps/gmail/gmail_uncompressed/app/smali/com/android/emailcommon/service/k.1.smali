.class final Lcom/android/emailcommon/service/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/L;


# instance fields
.field final synthetic aaq:Lcom/android/emailcommon/service/a;

.field final synthetic aax:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/emailcommon/service/k;->aaq:Lcom/android/emailcommon/service/a;

    iput-object p2, p0, Lcom/android/emailcommon/service/k;->aax:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/emailcommon/service/k;->aaq:Lcom/android/emailcommon/service/a;

    invoke-static {v0}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;)Lcom/android/emailcommon/service/r;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/k;->aax:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/r;->R(Ljava/lang/String;)V

    .line 264
    return-void
.end method
