.class final Lcom/android/mail/browse/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic arA:Lcom/android/mail/browse/aj;

.field private final vi:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/aj;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/mail/browse/ak;->arA:Lcom/android/mail/browse/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/android/mail/browse/ak;->vi:Ljava/lang/CharSequence;

    .line 70
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mail/browse/ak;->arA:Lcom/android/mail/browse/aj;

    iget-object v1, p0, Lcom/android/mail/browse/ak;->vi:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/mail/browse/aj;->a(Lcom/android/mail/browse/aj;Ljava/lang/CharSequence;)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method
