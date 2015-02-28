.class final Lcom/android/emailcommon/service/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/L;


# instance fields
.field final synthetic aaq:Lcom/android/emailcommon/service/a;

.field final synthetic aav:J

.field final synthetic aaw:I


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/a;JI)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/emailcommon/service/j;->aaq:Lcom/android/emailcommon/service/a;

    iput-wide p2, p0, Lcom/android/emailcommon/service/j;->aav:J

    iput p4, p0, Lcom/android/emailcommon/service/j;->aaw:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/emailcommon/service/j;->aaq:Lcom/android/emailcommon/service/a;

    invoke-static {v0}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;)Lcom/android/emailcommon/service/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/emailcommon/service/j;->aav:J

    iget v1, p0, Lcom/android/emailcommon/service/j;->aaw:I

    invoke-interface {v0, v2, v3, v1}, Lcom/android/emailcommon/service/r;->e(JI)V

    .line 246
    return-void
.end method
