.class final Lcom/android/mail/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;

.field final synthetic aax:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/mail/ui/l;->aEa:Lcom/android/mail/ui/a;

    iput-object p2, p0, Lcom/android/mail/ui/l;->aax:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/mail/ui/l;->aax:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/ui/MailActivity;->cp(Ljava/lang/String;)V

    .line 725
    return-void
.end method
