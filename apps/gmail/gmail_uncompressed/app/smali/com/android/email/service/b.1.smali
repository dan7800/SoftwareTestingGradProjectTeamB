.class final Lcom/android/email/service/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic TQ:Lcom/android/email/service/a;


# direct methods
.method constructor <init>(Lcom/android/email/service/a;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/email/service/b;->TQ:Lcom/android/email/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/email/service/b;->TQ:Lcom/android/email/service/a;

    iget-object v0, v0, Lcom/android/email/service/a;->TP:Lcom/android/email/service/AccountService;

    invoke-static {v0}, Lcom/android/email/service/AccountService;->a(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/service/n;->N(Landroid/content/Context;)V

    .line 64
    iget-object v0, p0, Lcom/android/email/service/b;->TQ:Lcom/android/email/service/a;

    iget-object v0, v0, Lcom/android/email/service/a;->TP:Lcom/android/email/service/AccountService;

    invoke-static {v0}, Lcom/android/email/service/AccountService;->a(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/b;->l(Landroid/content/Context;)V

    .line 65
    return-void
.end method
