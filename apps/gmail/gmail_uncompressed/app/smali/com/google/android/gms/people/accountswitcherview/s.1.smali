.class final Lcom/google/android/gms/people/accountswitcherview/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/accountswitcherview/v;


# instance fields
.field final synthetic chT:Lcom/google/android/gms/people/accountswitcherview/r;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/people/accountswitcherview/r;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/s;->chT:Lcom/google/android/gms/people/accountswitcherview/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/people/accountswitcherview/r;B)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/gms/people/accountswitcherview/s;-><init>(Lcom/google/android/gms/people/accountswitcherview/r;)V

    return-void
.end method


# virtual methods
.method public final aK(Landroid/view/View;)Lcom/google/android/gms/people/accountswitcherview/u;
    .locals 2

    .prologue
    .line 177
    new-instance v1, Lcom/google/android/gms/people/accountswitcherview/u;

    invoke-direct {v1}, Lcom/google/android/gms/people/accountswitcherview/u;-><init>()V

    .line 178
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cik:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/u;->chW:Landroid/widget/ImageView;

    .line 179
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cif:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/u;->chU:Landroid/widget/TextView;

    .line 180
    return-object v1
.end method
