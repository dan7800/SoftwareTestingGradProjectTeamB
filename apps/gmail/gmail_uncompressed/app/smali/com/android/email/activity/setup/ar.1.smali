.class final Lcom/android/email/activity/setup/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic OQ:Lcom/android/email/activity/setup/aq;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/aq;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/email/activity/setup/ar;->OQ:Lcom/android/email/activity/setup/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/email/activity/setup/ar;->OQ:Lcom/android/email/activity/setup/aq;

    invoke-static {v0}, Lcom/android/email/activity/setup/aq;->b(Lcom/android/email/activity/setup/aq;)Landroid/widget/Spinner;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/as;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/as;-><init>(Lcom/android/email/activity/setup/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 145
    return-void
.end method
