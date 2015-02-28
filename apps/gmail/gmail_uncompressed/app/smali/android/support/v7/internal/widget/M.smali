.class final Landroid/support/v7/internal/widget/M;
.super Landroid/support/v7/widget/H;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/P;


# instance fields
.field final synthetic AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private AU:Ljava/lang/CharSequence;

.field private AV:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 981
    iput-object p1, p0, Landroid/support/v7/internal/widget/M;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    .line 982
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/H;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 984
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/M;->setAnchorView(Landroid/view/View;)V

    .line 985
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/M;->fI()V

    .line 986
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/M;->fH()V

    .line 988
    new-instance v0, Landroid/support/v7/internal/widget/N;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/widget/N;-><init>(Landroid/support/v7/internal/widget/M;Landroid/support/v7/internal/widget/SpinnerCompat;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/M;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 999
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/M;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Landroid/support/v7/internal/widget/M;->AV:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public final m(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1013
    iput-object p1, p0, Landroid/support/v7/internal/widget/M;->AU:Ljava/lang/CharSequence;

    .line 1014
    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 1003
    invoke-super {p0, p1}, Landroid/support/v7/widget/H;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1004
    iput-object p1, p0, Landroid/support/v7/internal/widget/M;->AV:Landroid/widget/ListAdapter;

    .line 1005
    return-void
.end method
