.class final Lcom/android/mail/browse/aF;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic atl:Lcom/android/mail/browse/MessageHeaderView;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/MessageHeaderView;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/mail/browse/aF;->atl:Lcom/android/mail/browse/MessageHeaderView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/mail/browse/aF;->atl:Lcom/android/mail/browse/MessageHeaderView;

    invoke-static {v0}, Lcom/android/mail/browse/MessageHeaderView;->b(Lcom/android/mail/browse/MessageHeaderView;)V

    .line 174
    return-void
.end method
