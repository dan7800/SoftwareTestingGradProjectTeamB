.class final Lcom/android/mail/ui/aE;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic aHn:Lcom/android/mail/ui/aw;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/aw;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/mail/ui/aE;->aHn:Lcom/android/mail/ui/aw;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/aw;B)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/android/mail/ui/aE;-><init>(Lcom/android/mail/ui/aw;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/mail/ui/aE;->aHn:Lcom/android/mail/ui/aw;

    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yu()V

    .line 281
    return-void
.end method
