.class final Lcom/android/mail/compose/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic awu:Lcom/android/mail/compose/r;


# direct methods
.method constructor <init>(Lcom/android/mail/compose/r;)V
    .locals 0

    .prologue
    .line 2853
    iput-object p1, p0, Lcom/android/mail/compose/s;->awu:Lcom/android/mail/compose/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 2856
    iget-object v0, p0, Lcom/android/mail/compose/s;->awu:Lcom/android/mail/compose/r;

    invoke-virtual {v0}, Lcom/android/mail/compose/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mail/compose/g;

    invoke-static {v0}, Lcom/android/mail/compose/g;->b(Lcom/android/mail/compose/g;)V

    .line 2857
    return-void
.end method
