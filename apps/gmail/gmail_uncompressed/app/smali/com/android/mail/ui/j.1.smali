.class final Lcom/android/mail/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;

.field final synthetic aEc:Ljava/util/Collection;

.field final synthetic aEe:Z

.field final synthetic aEh:Lcom/android/mail/ui/br;

.field final synthetic awn:I


# direct methods
.method constructor <init>(Lcom/android/mail/ui/a;ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V
    .locals 0

    .prologue
    .line 4129
    iput-object p1, p0, Lcom/android/mail/ui/j;->aEa:Lcom/android/mail/ui/a;

    iput p2, p0, Lcom/android/mail/ui/j;->awn:I

    iput-object p3, p0, Lcom/android/mail/ui/j;->aEc:Ljava/util/Collection;

    iput-object p4, p0, Lcom/android/mail/ui/j;->aEh:Lcom/android/mail/ui/br;

    iput-boolean p5, p0, Lcom/android/mail/ui/j;->aEe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 4132
    iget-object v0, p0, Lcom/android/mail/ui/j;->aEa:Lcom/android/mail/ui/a;

    iget v1, p0, Lcom/android/mail/ui/j;->awn:I

    iget-object v2, p0, Lcom/android/mail/ui/j;->aEc:Ljava/util/Collection;

    iget-object v3, p0, Lcom/android/mail/ui/j;->aEh:Lcom/android/mail/ui/br;

    iget-boolean v4, p0, Lcom/android/mail/ui/j;->aEe:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V

    .line 4134
    iget-object v0, p0, Lcom/android/mail/ui/j;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->p(Lcom/android/mail/ui/a;)V

    .line 4135
    return-void
.end method
