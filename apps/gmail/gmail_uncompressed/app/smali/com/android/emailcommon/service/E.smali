.class final Lcom/android/emailcommon/service/E;
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
    .line 108
    iput-object p1, p0, Lcom/android/emailcommon/service/E;->aaB:Lcom/android/emailcommon/service/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/emailcommon/service/E;->aaB:Lcom/android/emailcommon/service/A;

    invoke-static {v0}, Lcom/android/emailcommon/service/A;->a(Lcom/android/emailcommon/service/A;)Lcom/android/emailcommon/service/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/emailcommon/service/x;->hi()V

    .line 112
    return-void
.end method
