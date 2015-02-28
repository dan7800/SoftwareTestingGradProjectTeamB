.class final Lcom/android/emailcommon/service/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/L;


# instance fields
.field final synthetic To:J

.field final synthetic aaq:Lcom/android/emailcommon/service/a;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/a;J)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/emailcommon/service/m;->aaq:Lcom/android/emailcommon/service/a;

    iput-wide p2, p0, Lcom/android/emailcommon/service/m;->To:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/emailcommon/service/m;->aaq:Lcom/android/emailcommon/service/a;

    invoke-static {v0}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;)Lcom/android/emailcommon/service/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/emailcommon/service/m;->To:J

    invoke-interface {v0, v2, v3}, Lcom/android/emailcommon/service/r;->D(J)V

    .line 314
    return-void
.end method
