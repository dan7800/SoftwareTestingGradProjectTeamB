.class final Lcom/google/android/gm/ui/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aEg:Lcom/android/mail/providers/Folder;

.field final synthetic bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ui/SectionedInboxTeaserView;Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/android/gm/ui/J;->bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    iput-object p2, p0, Lcom/google/android/gm/ui/J;->aEg:Lcom/android/mail/providers/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/gm/ui/J;->bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->c(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)Lcom/android/mail/ui/bV;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ui/J;->aEg:Lcom/android/mail/providers/Folder;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/bV;->h(Lcom/android/mail/providers/Folder;)V

    .line 320
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "switch_folder"

    iget-object v2, p0, Lcom/google/android/gm/ui/J;->aEg:Lcom/android/mail/providers/Folder;

    invoke-virtual {v2}, Lcom/android/mail/providers/Folder;->va()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sectioned_inbox_teaser"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 322
    return-void
.end method
