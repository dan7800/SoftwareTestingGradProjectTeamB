.class final Lcom/google/android/gms/people/accountswitcherview/j;
.super Lcom/google/android/gms/people/accountswitcherview/p;
.source "SourceFile"


# instance fields
.field public final cgm:Ljava/lang/String;

.field public final chq:I

.field final synthetic chr:Lcom/google/android/gms/people/accountswitcherview/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/people/accountswitcherview/i;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/j;->chr:Lcom/google/android/gms/people/accountswitcherview/i;

    invoke-direct {p0, p1}, Lcom/google/android/gms/people/accountswitcherview/p;-><init>(Lcom/google/android/gms/people/accountswitcherview/o;)V

    .line 35
    iput-object p2, p0, Lcom/google/android/gms/people/accountswitcherview/j;->aKf:Landroid/widget/ImageView;

    .line 36
    iput-object p3, p0, Lcom/google/android/gms/people/accountswitcherview/j;->acw:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/google/android/gms/people/accountswitcherview/j;->cgm:Ljava/lang/String;

    .line 38
    iput p5, p0, Lcom/google/android/gms/people/accountswitcherview/j;->chq:I

    .line 39
    return-void
.end method


# virtual methods
.method public final oV()V
    .locals 5

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/gms/people/q;->cgK:Lcom/google/android/gms/people/j;

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/j;->chr:Lcom/google/android/gms/people/accountswitcherview/i;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/i;->bbm:Lcom/google/android/gms/common/api/n;

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/j;->acw:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/people/accountswitcherview/j;->cgm:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/people/accountswitcherview/j;->chq:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/people/j;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/people/accountswitcherview/k;

    invoke-direct {v1, p0}, Lcom/google/android/gms/people/accountswitcherview/k;-><init>(Lcom/google/android/gms/people/accountswitcherview/j;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/u;)V

    .line 51
    return-void
.end method
