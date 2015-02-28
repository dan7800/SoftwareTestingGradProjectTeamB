.class final Landroid/support/v7/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final Db:Landroid/support/v7/widget/B;

.field public final Dc:Landroid/support/v7/widget/D;

.field public Dd:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/B;Landroid/support/v7/widget/D;)V
    .locals 1

    .prologue
    .line 2085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2083
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/x;->Dd:Z

    .line 2086
    iput-object p1, p0, Landroid/support/v7/widget/x;->Db:Landroid/support/v7/widget/B;

    .line 2087
    iput-object p2, p0, Landroid/support/v7/widget/x;->Dc:Landroid/support/v7/widget/D;

    .line 2088
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/x;->Db:Landroid/support/v7/widget/B;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/support/v7/widget/x;->Dd:Z

    if-nez v0, :cond_0

    const-string v0, "+>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/x;->Dc:Landroid/support/v7/widget/D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "->"

    goto :goto_0
.end method
