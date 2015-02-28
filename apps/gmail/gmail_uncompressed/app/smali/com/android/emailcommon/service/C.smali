.class final Lcom/android/emailcommon/service/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/L;


# instance fields
.field final synthetic To:J

.field final synthetic aaB:Lcom/android/emailcommon/service/A;

.field final synthetic aaC:Lcom/android/emailcommon/provider/Policy;

.field final synthetic aaD:Ljava/lang/String;

.field final synthetic aaE:Z


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/A;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/emailcommon/service/C;->aaB:Lcom/android/emailcommon/service/A;

    iput-wide p2, p0, Lcom/android/emailcommon/service/C;->To:J

    iput-object p4, p0, Lcom/android/emailcommon/service/C;->aaC:Lcom/android/emailcommon/provider/Policy;

    iput-object p5, p0, Lcom/android/emailcommon/service/C;->aaD:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/emailcommon/service/C;->aaE:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/emailcommon/service/C;->aaB:Lcom/android/emailcommon/service/A;

    invoke-static {v0}, Lcom/android/emailcommon/service/A;->a(Lcom/android/emailcommon/service/A;)Lcom/android/emailcommon/service/x;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/service/C;->To:J

    iget-object v4, p0, Lcom/android/emailcommon/service/C;->aaC:Lcom/android/emailcommon/provider/Policy;

    iget-object v5, p0, Lcom/android/emailcommon/service/C;->aaD:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/emailcommon/service/C;->aaE:Z

    invoke-interface/range {v1 .. v6}, Lcom/android/emailcommon/service/x;->b(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V

    .line 83
    return-void
.end method
