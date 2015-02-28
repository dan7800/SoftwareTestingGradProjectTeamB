.class final Lcom/android/emailcommon/service/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/L;


# instance fields
.field final synthetic To:J

.field final synthetic Vr:J

.field final synthetic aaq:Lcom/android/emailcommon/service/a;

.field final synthetic aay:Lcom/android/emailcommon/service/SearchParams;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/a;JLcom/android/emailcommon/service/SearchParams;J)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/emailcommon/service/l;->aaq:Lcom/android/emailcommon/service/a;

    iput-wide p2, p0, Lcom/android/emailcommon/service/l;->To:J

    iput-object p4, p0, Lcom/android/emailcommon/service/l;->aay:Lcom/android/emailcommon/service/SearchParams;

    iput-wide p5, p0, Lcom/android/emailcommon/service/l;->Vr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 292
    iget-object v6, p0, Lcom/android/emailcommon/service/l;->aaq:Lcom/android/emailcommon/service/a;

    iget-object v0, p0, Lcom/android/emailcommon/service/l;->aaq:Lcom/android/emailcommon/service/a;

    invoke-static {v0}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;)Lcom/android/emailcommon/service/r;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/l;->To:J

    iget-object v3, p0, Lcom/android/emailcommon/service/l;->aay:Lcom/android/emailcommon/service/SearchParams;

    iget-wide v4, p0, Lcom/android/emailcommon/service/l;->Vr:J

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/r;->a(JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/emailcommon/service/a;->a(Lcom/android/emailcommon/service/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method
