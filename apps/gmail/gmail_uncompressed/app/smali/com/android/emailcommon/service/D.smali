.class final Lcom/android/emailcommon/service/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/L;


# instance fields
.field final synthetic aaB:Lcom/android/emailcommon/service/A;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/A;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/emailcommon/service/D;->aaB:Lcom/android/emailcommon/service/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/emailcommon/service/D;->aaB:Lcom/android/emailcommon/service/A;

    iget-object v1, p0, Lcom/android/emailcommon/service/D;->aaB:Lcom/android/emailcommon/service/A;

    invoke-static {v1}, Lcom/android/emailcommon/service/A;->a(Lcom/android/emailcommon/service/A;)Lcom/android/emailcommon/service/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/emailcommon/service/x;->kJ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/A;->a(Lcom/android/emailcommon/service/A;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method
