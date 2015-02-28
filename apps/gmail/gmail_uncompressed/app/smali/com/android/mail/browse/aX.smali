.class final Lcom/android/mail/browse/aX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic auD:Lcom/android/mail/browse/SuperCollapsedBlock;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/SuperCollapsedBlock;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/mail/browse/aX;->auD:Lcom/android/mail/browse/SuperCollapsedBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/mail/browse/aX;->auD:Lcom/android/mail/browse/SuperCollapsedBlock;

    invoke-static {v0}, Lcom/android/mail/browse/SuperCollapsedBlock;->b(Lcom/android/mail/browse/SuperCollapsedBlock;)Lcom/android/mail/browse/aY;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/aX;->auD:Lcom/android/mail/browse/SuperCollapsedBlock;

    invoke-static {v1}, Lcom/android/mail/browse/SuperCollapsedBlock;->a(Lcom/android/mail/browse/SuperCollapsedBlock;)Lcom/android/mail/browse/af;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/browse/aY;->b(Lcom/android/mail/browse/af;)V

    .line 108
    return-void
.end method
