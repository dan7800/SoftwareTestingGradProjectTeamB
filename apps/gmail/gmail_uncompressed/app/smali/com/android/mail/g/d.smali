.class final Lcom/android/mail/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic axA:Landroid/widget/ImageView;

.field final synthetic axB:Lcom/android/mail/g/c;

.field final synthetic axz:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/mail/g/c;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/mail/g/d;->axB:Lcom/android/mail/g/c;

    iput-object p2, p0, Lcom/android/mail/g/d;->axz:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/mail/g/d;->axA:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 299
    iget-object v0, p0, Lcom/android/mail/g/d;->axB:Lcom/android/mail/g/c;

    invoke-static {v0}, Lcom/android/mail/g/c;->a(Lcom/android/mail/g/c;)V

    .line 300
    iget-object v0, p0, Lcom/android/mail/g/d;->axz:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/android/mail/g/d;->axA:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    return-void
.end method
