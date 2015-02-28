.class final Lcom/google/android/gm/ui/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/accountswitcherview/v;


# instance fields
.field final synthetic bqr:Lcom/google/android/gm/ui/t;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/ui/t;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/google/android/gm/ui/x;->bqr:Lcom/google/android/gm/ui/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/ui/t;B)V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/google/android/gm/ui/x;-><init>(Lcom/google/android/gm/ui/t;)V

    return-void
.end method


# virtual methods
.method public final aK(Landroid/view/View;)Lcom/google/android/gms/people/accountswitcherview/u;
    .locals 4

    .prologue
    .line 619
    const v0, 0x7f0d0091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 620
    const v1, 0x7f0d01bc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 622
    new-instance v2, Lcom/google/android/gm/ui/w;

    iget-object v3, p0, Lcom/google/android/gm/ui/x;->bqr:Lcom/google/android/gm/ui/t;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gm/ui/w;-><init>(Lcom/google/android/gm/ui/t;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v2
.end method
