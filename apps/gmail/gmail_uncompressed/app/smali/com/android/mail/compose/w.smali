.class public final Lcom/android/mail/compose/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final ams:Landroid/content/ContentValues;

.field final awA:Ljava/lang/String;

.field public final awB:Z

.field private final awC:Landroid/os/Bundle;

.field final awc:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/ContentValues;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2719
    iput p2, p0, Lcom/android/mail/compose/w;->awc:I

    .line 2720
    iput-object p3, p0, Lcom/android/mail/compose/w;->ams:Landroid/content/ContentValues;

    .line 2721
    iput-object p4, p0, Lcom/android/mail/compose/w;->awA:Ljava/lang/String;

    .line 2722
    iput-boolean p7, p0, Lcom/android/mail/compose/w;->awB:Z

    .line 2725
    if-eqz p6, :cond_0

    .line 2726
    iput-object p6, p0, Lcom/android/mail/compose/w;->awC:Landroid/os/Bundle;

    .line 2730
    :goto_0
    return-void

    .line 2728
    :cond_0
    invoke-static {p1, p5}, Lcom/android/mail/compose/g;->b(Landroid/content/Context;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/w;->awC:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method final sN()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2733
    iget-object v0, p0, Lcom/android/mail/compose/w;->awC:Landroid/os/Bundle;

    return-object v0
.end method
