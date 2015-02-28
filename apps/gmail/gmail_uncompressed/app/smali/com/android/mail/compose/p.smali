.class final Lcom/android/mail/compose/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic awt:Lcom/android/mail/compose/o;


# direct methods
.method constructor <init>(Lcom/android/mail/compose/o;)V
    .locals 0

    .prologue
    .line 3729
    iput-object p1, p0, Lcom/android/mail/compose/p;->awt:Lcom/android/mail/compose/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 3732
    iget-object v0, p0, Lcom/android/mail/compose/p;->awt:Lcom/android/mail/compose/o;

    invoke-virtual {v0}, Lcom/android/mail/compose/o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mail/compose/g;

    invoke-static {v0}, Lcom/android/mail/compose/g;->l(Lcom/android/mail/compose/g;)V

    .line 3733
    return-void
.end method
