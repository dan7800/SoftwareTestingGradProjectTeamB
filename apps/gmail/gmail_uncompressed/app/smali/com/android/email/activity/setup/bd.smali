.class public final Lcom/android/email/activity/setup/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final label:Ljava/lang/String;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/email/activity/setup/bd;->value:Ljava/lang/Object;

    .line 38
    iput-object p2, p0, Lcom/android/email/activity/setup/bd;->label:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static a(Landroid/widget/Spinner;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/bd;

    .line 29
    iget-object v0, v0, Lcom/android/email/activity/setup/bd;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 34
    :cond_0
    return-void

    .line 27
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/setup/bd;->label:Ljava/lang/String;

    return-object v0
.end method
