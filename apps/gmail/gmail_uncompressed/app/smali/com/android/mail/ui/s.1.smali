.class final Lcom/android/mail/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;

.field final synthetic aEm:Ljava/util/Collection;

.field final synthetic aEn:Z

.field final synthetic aEp:Z

.field final synthetic aEq:Z


# direct methods
.method constructor <init>(Lcom/android/mail/ui/a;Ljava/util/Collection;ZZZ)V
    .locals 0

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/android/mail/ui/s;->aEa:Lcom/android/mail/ui/a;

    iput-object p2, p0, Lcom/android/mail/ui/s;->aEm:Ljava/util/Collection;

    iput-boolean p3, p0, Lcom/android/mail/ui/s;->aEn:Z

    iput-boolean p4, p0, Lcom/android/mail/ui/s;->aEp:Z

    iput-boolean p5, p0, Lcom/android/mail/ui/s;->aEq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/android/mail/ui/s;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, p0, Lcom/android/mail/ui/s;->aEm:Ljava/util/Collection;

    iget-boolean v2, p0, Lcom/android/mail/ui/s;->aEn:Z

    iget-boolean v3, p0, Lcom/android/mail/ui/s;->aEp:Z

    iget-boolean v4, p0, Lcom/android/mail/ui/s;->aEq:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;Ljava/util/Collection;ZZZ)V

    .line 1915
    return-void
.end method
