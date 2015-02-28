.class final Lcom/android/emailcommon/service/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/L;


# instance fields
.field final synthetic aaq:Lcom/android/emailcommon/service/a;

.field final synthetic cc:I


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/a;I)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/emailcommon/service/i;->aaq:Lcom/android/emailcommon/service/a;

    iput p2, p0, Lcom/android/emailcommon/service/i;->cc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/emailcommon/service/i;->aaq:Lcom/android/emailcommon/service/a;

    invoke-static {v0}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;)Lcom/android/emailcommon/service/r;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/i;->cc:I

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/r;->bd(I)V

    .line 229
    return-void
.end method
