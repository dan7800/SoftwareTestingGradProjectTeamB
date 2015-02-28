.class final Lcom/android/mail/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/B;


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;

.field final synthetic aEm:Ljava/util/Collection;

.field final synthetic aEn:Z

.field final synthetic aEo:Z


# direct methods
.method constructor <init>(Lcom/android/mail/ui/a;Ljava/util/Collection;ZZ)V
    .locals 0

    .prologue
    .line 1894
    iput-object p1, p0, Lcom/android/mail/ui/r;->aEa:Lcom/android/mail/ui/a;

    iput-object p2, p0, Lcom/android/mail/ui/r;->aEm:Ljava/util/Collection;

    iput-boolean p3, p0, Lcom/android/mail/ui/r;->aEn:Z

    iput-boolean p4, p0, Lcom/android/mail/ui/r;->aEo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final wI()V
    .locals 5

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/mail/ui/r;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, p0, Lcom/android/mail/ui/r;->aEm:Ljava/util/Collection;

    iget-boolean v2, p0, Lcom/android/mail/ui/r;->aEn:Z

    iget-boolean v3, p0, Lcom/android/mail/ui/r;->aEo:Z

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;Ljava/util/Collection;ZZZ)V

    .line 1898
    return-void
.end method
