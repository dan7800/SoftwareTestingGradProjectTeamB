.class final Lcom/android/emailcommon/service/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/L;


# instance fields
.field final synthetic aaB:Lcom/android/emailcommon/service/A;

.field final synthetic aaF:J

.field final synthetic aaG:Z


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/A;JZ)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/emailcommon/service/F;->aaB:Lcom/android/emailcommon/service/A;

    iput-wide p2, p0, Lcom/android/emailcommon/service/F;->aaF:J

    iput-boolean p4, p0, Lcom/android/emailcommon/service/F;->aaG:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/emailcommon/service/F;->aaB:Lcom/android/emailcommon/service/A;

    invoke-static {v0}, Lcom/android/emailcommon/service/A;->a(Lcom/android/emailcommon/service/A;)Lcom/android/emailcommon/service/x;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/emailcommon/service/F;->aaF:J

    iget-boolean v1, p0, Lcom/android/emailcommon/service/F;->aaG:Z

    invoke-interface {v0, v2, v3, v1}, Lcom/android/emailcommon/service/x;->b(JZ)V

    .line 122
    return-void
.end method
