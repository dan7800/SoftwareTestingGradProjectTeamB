.class final Lcom/google/android/gms/people/accountswitcherview/m;
.super Lcom/google/android/gms/people/accountswitcherview/p;
.source "SourceFile"


# instance fields
.field public final cgm:Ljava/lang/String;

.field final synthetic cht:Lcom/google/android/gms/people/accountswitcherview/l;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/people/accountswitcherview/l;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/m;->cht:Lcom/google/android/gms/people/accountswitcherview/l;

    invoke-direct {p0, p1}, Lcom/google/android/gms/people/accountswitcherview/p;-><init>(Lcom/google/android/gms/people/accountswitcherview/o;)V

    .line 38
    iput-object p2, p0, Lcom/google/android/gms/people/accountswitcherview/m;->aKf:Landroid/widget/ImageView;

    .line 39
    iput-object p3, p0, Lcom/google/android/gms/people/accountswitcherview/m;->acw:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/google/android/gms/people/accountswitcherview/m;->cgm:Ljava/lang/String;

    .line 41
    iput p5, p0, Lcom/google/android/gms/people/accountswitcherview/m;->width:I

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/people/m;)V
    .locals 6

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/m;->cht:Lcom/google/android/gms/people/accountswitcherview/l;

    invoke-interface {p1}, Lcom/google/android/gms/people/m;->Jk()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/people/m;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/people/accountswitcherview/m;->cht:Lcom/google/android/gms/people/accountswitcherview/l;

    invoke-virtual {v3}, Lcom/google/android/gms/people/accountswitcherview/l;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/people/accountswitcherview/l;->cl(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/people/accountswitcherview/m;->width:I

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/people/accountswitcherview/l;->a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/people/accountswitcherview/p;Landroid/graphics/Bitmap;I)V

    .line 58
    return-void
.end method

.method public final oV()V
    .locals 5

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/gms/people/q;->cgK:Lcom/google/android/gms/people/j;

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/m;->cht:Lcom/google/android/gms/people/accountswitcherview/l;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/l;->bbm:Lcom/google/android/gms/common/api/n;

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/m;->acw:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/people/accountswitcherview/m;->cgm:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/people/accountswitcherview/m;->width:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/people/j;->b(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/people/accountswitcherview/n;

    invoke-direct {v1, p0}, Lcom/google/android/gms/people/accountswitcherview/n;-><init>(Lcom/google/android/gms/people/accountswitcherview/m;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/u;)V

    .line 52
    return-void
.end method
