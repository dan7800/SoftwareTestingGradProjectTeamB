.class final Lcom/android/mail/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;

.field final synthetic aEb:I

.field final synthetic aEc:Ljava/util/Collection;

.field final synthetic aEd:Lcom/android/mail/ui/br;

.field final synthetic aEe:Z


# direct methods
.method constructor <init>(Lcom/android/mail/ui/a;ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V
    .locals 0

    .prologue
    .line 2119
    iput-object p1, p0, Lcom/android/mail/ui/d;->aEa:Lcom/android/mail/ui/a;

    iput p2, p0, Lcom/android/mail/ui/d;->aEb:I

    iput-object p3, p0, Lcom/android/mail/ui/d;->aEc:Ljava/util/Collection;

    iput-object p4, p0, Lcom/android/mail/ui/d;->aEd:Lcom/android/mail/ui/br;

    iput-boolean p5, p0, Lcom/android/mail/ui/d;->aEe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/android/mail/ui/d;->aEa:Lcom/android/mail/ui/a;

    iget v1, p0, Lcom/android/mail/ui/d;->aEb:I

    iget-object v2, p0, Lcom/android/mail/ui/d;->aEc:Ljava/util/Collection;

    iget-object v3, p0, Lcom/android/mail/ui/d;->aEd:Lcom/android/mail/ui/br;

    iget-boolean v4, p0, Lcom/android/mail/ui/d;->aEe:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V

    .line 2123
    return-void
.end method
