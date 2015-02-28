.class final Lcom/google/android/gms/people/accountswitcherview/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/accountswitcherview/T;


# instance fields
.field final synthetic cjn:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V
    .locals 0

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/O;->cjn:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;B)V
    .locals 0

    .prologue
    .line 1141
    invoke-direct {p0, p1}, Lcom/google/android/gms/people/accountswitcherview/O;-><init>(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    return-void
.end method


# virtual methods
.method public final aL(Landroid/view/View;)Lcom/google/android/gms/people/accountswitcherview/S;
    .locals 3

    .prologue
    .line 1144
    new-instance v1, Lcom/google/android/gms/people/accountswitcherview/S;

    invoke-direct {v1}, Lcom/google/android/gms/people/accountswitcherview/S;-><init>()V

    .line 1145
    iput-object p1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjp:Landroid/view/View;

    .line 1146
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cij:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjq:Landroid/view/View;

    .line 1147
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cik:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    .line 1148
    iget-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjy:Landroid/widget/ImageView;

    .line 1149
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cig:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjt:Landroid/widget/TextView;

    .line 1151
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cif:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cju:Landroid/widget/TextView;

    .line 1152
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    .line 1153
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cih:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjr:Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

    .line 1154
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->civ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjo:Landroid/view/View;

    .line 1155
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/O;->cjn:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    sget v2, Lcom/google/android/gms/people/accountswitcherview/B;->cii:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjL:Landroid/view/View;

    .line 1156
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/O;->cjn:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->i(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cil:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    .line 1158
    iget-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjz:Landroid/widget/ImageView;

    .line 1159
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cim:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjw:Landroid/view/View;

    .line 1160
    iget-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjw:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjA:Landroid/widget/ImageView;

    .line 1161
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cis:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    .line 1162
    iget-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjI:Landroid/widget/ImageView;

    .line 1163
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    .line 1165
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->ciu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    .line 1166
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cir:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjC:Landroid/widget/TextView;

    .line 1168
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->ciq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjD:Landroid/widget/TextView;

    .line 1170
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cio:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjG:Landroid/view/View;

    .line 1171
    iget-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjG:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjJ:Landroid/widget/ImageView;

    .line 1172
    sget v0, Lcom/google/android/gms/people/accountswitcherview/B;->cip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjH:Landroid/view/View;

    .line 1173
    iget-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjH:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjK:Landroid/widget/ImageView;

    .line 1176
    :cond_0
    return-object v1
.end method
