.class final Lcom/android/ex/chips/t;
.super Lcom/android/ex/chips/v;
.source "SourceFile"


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/chips/v;-><init>([Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 46
    invoke-static {p1, p2, p3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method