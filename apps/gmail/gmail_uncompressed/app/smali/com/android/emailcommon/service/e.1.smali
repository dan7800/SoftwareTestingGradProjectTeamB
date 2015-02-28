.class final Lcom/android/emailcommon/service/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/L;


# instance fields
.field final synthetic aaq:Lcom/android/emailcommon/service/a;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/a;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/emailcommon/service/e;->aaq:Lcom/android/emailcommon/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/emailcommon/service/e;->aaq:Lcom/android/emailcommon/service/a;

    iget-object v1, p0, Lcom/android/emailcommon/service/e;->aaq:Lcom/android/emailcommon/service/a;

    invoke-static {v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;)Lcom/android/emailcommon/service/r;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/emailcommon/service/r;->kE()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    return-void
.end method
