.class final Lcom/android/emailcommon/service/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/L;


# instance fields
.field final synthetic aaA:Lcom/android/emailcommon/provider/Policy;

.field final synthetic aaB:Lcom/android/emailcommon/service/A;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/A;Lcom/android/emailcommon/provider/Policy;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/emailcommon/service/B;->aaB:Lcom/android/emailcommon/service/A;

    iput-object p2, p0, Lcom/android/emailcommon/service/B;->aaA:Lcom/android/emailcommon/provider/Policy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/emailcommon/service/B;->aaB:Lcom/android/emailcommon/service/A;

    iget-object v1, p0, Lcom/android/emailcommon/service/B;->aaB:Lcom/android/emailcommon/service/A;

    invoke-static {v1}, Lcom/android/emailcommon/service/A;->a(Lcom/android/emailcommon/service/A;)Lcom/android/emailcommon/service/x;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/service/B;->aaA:Lcom/android/emailcommon/provider/Policy;

    invoke-interface {v1, v2}, Lcom/android/emailcommon/service/x;->a(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/A;->a(Lcom/android/emailcommon/service/A;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
