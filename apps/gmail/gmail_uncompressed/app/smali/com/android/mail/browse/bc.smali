.class final Lcom/android/mail/browse/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic auF:Lcom/android/mail/browse/ba;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/ba;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/mail/browse/bc;->auF:Lcom/android/mail/browse/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 52
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 53
    return-void
.end method
