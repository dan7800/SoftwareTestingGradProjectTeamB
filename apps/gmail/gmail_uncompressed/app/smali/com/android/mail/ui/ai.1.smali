.class final Lcom/android/mail/ui/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aGd:Lcom/android/mail/ui/ae;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ae;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/mail/ui/ai;->aGd:Lcom/android/mail/ui/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/mail/ui/ai;->aGd:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->xz()V

    .line 602
    return-void
.end method
