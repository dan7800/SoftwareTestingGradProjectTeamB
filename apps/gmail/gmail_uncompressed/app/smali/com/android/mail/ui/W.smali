.class final Lcom/android/mail/ui/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aFy:Lcom/android/mail/ui/ActionableToastBar;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ActionableToastBar;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/mail/ui/W;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mail/ui/W;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-static {v0}, Lcom/android/mail/ui/ActionableToastBar;->a(Lcom/android/mail/ui/ActionableToastBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/mail/ui/W;->aFy:Lcom/android/mail/ui/ActionableToastBar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/ActionableToastBar;->f(ZZ)V

    .line 123
    :cond_0
    return-void
.end method
