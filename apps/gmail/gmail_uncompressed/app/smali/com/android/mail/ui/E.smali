.class final Lcom/android/mail/ui/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aED:Lcom/android/mail/ui/D;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/D;)V
    .locals 0

    .prologue
    .line 3239
    iput-object p1, p0, Lcom/android/mail/ui/E;->aED:Lcom/android/mail/ui/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 3242
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "Delay done... calling onRefreshRequired"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3243
    iget-object v0, p0, Lcom/android/mail/ui/E;->aED:Lcom/android/mail/ui/D;

    iget-object v0, v0, Lcom/android/mail/ui/D;->aEC:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->pm()V

    .line 3244
    return-void
.end method
